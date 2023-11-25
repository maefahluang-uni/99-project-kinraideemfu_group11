package th.mfu.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.ReviewModel;
import th.mfu.repository.ReviewRepository;

public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;
                
     @GetMapping("/review")
    public String listReview(Model model) {
        model.addAttribute("reviews", reviewRepository.findAll());
        return "editreview";
    }

    @GetMapping("/add-review")
    public String addAReview(Model model) {
        model.addAttribute("reviews", new ReviewModel());
        return "addreviewfrom";
    }
    @PostMapping("/review")
    public String saveReview(@ModelAttribute ReviewModel reviews) {
        reviewRepository.save(reviews);
        return "redirect:/review";
    }
    @Transactional
    @GetMapping("/delete-review/{id}")
    public String deleteRestaurant(@PathVariable Long id) {
        reviewRepository.deleteById(id);
        return "redirect:/review";
    }
}
