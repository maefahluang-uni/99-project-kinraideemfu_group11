package th.mfu.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.DessertModel;
import th.mfu.repository.DessertRepository;



@Controller
public class DessertController {

    @Autowired
    private DessertRepository dessertRepository;
                
     @GetMapping("/dessert")
    public String listdessert(Model model) {
        model.addAttribute("desserts", dessertRepository.findAll());
        return "editdessert";
    }

    @GetMapping("/add-desserts")
    public String adddessertform(Model model) {
    model.addAttribute("desserts", new DessertModel());
    return "adddessertform";
    }

    @PostMapping("/dessert")
    public String savedessert(@ModelAttribute DessertModel desserts) {
        dessertRepository.save(desserts);
        return "redirect:/dessert";
    }
    @Transactional
    @GetMapping("/delete-dessert/{id}")
    public String deleteDessert(@PathVariable Long id) {
        dessertRepository.deleteById(id);
        return "redirect:/dessert";
    }
}



