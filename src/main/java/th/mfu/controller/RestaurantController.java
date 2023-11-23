package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import th.mfu.model.RestaurantModel;
import th.mfu.repository.RestaurantRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class RestaurantController {

    /* REPOSITORY */
    @Autowired
    private RestaurantRepository restaurantRepository;

    @GetMapping("/search")
    public String searchRestaurantsByName(Model model) {
        return "search";
    }
}

