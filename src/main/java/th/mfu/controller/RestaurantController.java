package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import th.mfu.model.RestaurantModel;
import th.mfu.repository.RestaurantRepository;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class RestaurantController {

    /* REPOSITORY */
    @Autowired
    private RestaurantRepository restaurantRepository;

   @GetMapping("/search")
    public String searchRestaurantsByName(@RequestParam(name = "searchQuery", required = false) String searchQuery, Model model) {
        List<RestaurantModel> allRestaurants = restaurantRepository.findAll();
        if (searchQuery != null && !searchQuery.isEmpty()) {
            // Filter restaurants based on the search query
            System.out.println(searchQuery);
            List<RestaurantModel> filteredRestaurants = allRestaurants.stream()
                .filter(restaurant -> restaurant.getName().toLowerCase().contains(searchQuery.toLowerCase()))
                .collect(Collectors.toList());
            System.out.println(allRestaurants);
            model.addAttribute("restaurants", filteredRestaurants);
        } else {
            // If no search query, display all restaurants
            model.addAttribute("restaurants", allRestaurants);
        }
        return "search";
    }
}

