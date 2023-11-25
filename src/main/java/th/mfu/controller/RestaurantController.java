package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import th.mfu.model.RestaurantModel;
import th.mfu.repository.RestaurantRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

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
    @GetMapping("/restaurants")
    public String listRestaurants(Model model) {
        model.addAttribute("restaurants", restaurantRepository.findAll());
        return "resedit";
    }

    @GetMapping("/add-restaurant")
    public String addARestaurantForm(Model model) {
        model.addAttribute("restaurant", new RestaurantModel());
        return "addresform";
    }
    @PostMapping("/restaurants")
    public String saveRestaurant(@ModelAttribute RestaurantModel restaurant) {
        restaurantRepository.save(restaurant);
        return "redirect:/restaurants";
    }
    @Transactional
    @GetMapping("/delete-restaurant/{id}")
    public String deleteRestaurant(@PathVariable Long id) {
        restaurantRepository.deleteById(id);
        return "redirect:/restaurants";
    }

}




