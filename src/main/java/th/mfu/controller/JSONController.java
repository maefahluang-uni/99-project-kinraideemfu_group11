package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import th.mfu.model.RestaurantModel;
import th.mfu.repository.RestaurantRepository;


import java.util.List;
import java.util.stream.Collectors;

@RestController
public class JSONController {

    /* REPOSITORY */
    @Autowired
    private RestaurantRepository restaurantRepository;
    
    @GetMapping("/searchresult")
    public List<RestaurantModel> searchRestaurantsByName(Model model, @RequestParam String keyword) {
        List<RestaurantModel> allRestaurants = restaurantRepository.findAll();
        List<RestaurantModel> matches = allRestaurants.stream()
            .filter(restaurantModel -> restaurantModel.getName().contains(keyword))
            .collect(Collectors.toList());
        return matches;
    }
}

