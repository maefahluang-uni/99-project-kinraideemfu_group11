package th.mfu.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.FoodModel;
import th.mfu.repository.FoodRepository;


@Controller
public class FoodController {

    @Autowired
    private FoodRepository foodRepository;
                
     @GetMapping("/food")
    public String listFood(Model model) {
        model.addAttribute("foods", foodRepository.findAll());
        return "editfood";
    }

    @GetMapping("/add-foods")
    public String addFoodform(Model model) {
    model.addAttribute("foods", new FoodModel());
    return "addfoodform";
    }

    @PostMapping("/food")
    public String saveFood(@ModelAttribute FoodModel foods) {
        foodRepository.save(foods);
        return "redirect:/food";
    }
    @Transactional
    @GetMapping("/delete-food/{id}")
    public String deleteFood(@PathVariable Long id) {
        foodRepository.deleteById(id);
        return "redirect:/food";
    }
}



