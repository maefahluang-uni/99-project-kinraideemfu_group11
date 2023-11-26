package th.mfu.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.CafeModel;
import th.mfu.repository.CafeRepository;



@Controller
public class CafeController {

    @Autowired
    private CafeRepository cafeRepository;
                
     @GetMapping("/cafe")
    public String listcafe(Model model) {
        model.addAttribute("cafes", cafeRepository.findAll());
        return "editcafe";
    }

    @GetMapping("/add-cafes")
    public String adddessertform(Model model) {
    model.addAttribute("cafes", new CafeModel());
    return "addcafeform";
    }

    @PostMapping("/cafe")
    public String savecafe(@ModelAttribute CafeModel cafes) {
        cafeRepository.save(cafes);
        return "redirect:/cafe";
    }
    @Transactional
    @GetMapping("/delete-cafe/{id}")
    public String deleteCafe(@PathVariable Long id) {
        cafeRepository.deleteById(id);
        return "redirect:/cafe";
    }
}