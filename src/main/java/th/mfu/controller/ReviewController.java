package th.mfu.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.ReviewModel;
import th.mfu.repository.ReviewRepository;

@Controller
public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;

    @GetMapping("/reviews")
    public String listReview(Model model) {
        model.addAttribute("reviews", reviewRepository.findAll());
        return "editreview";
    }

    @GetMapping("/add-review")
    public String addAReview(Model model) {
        model.addAttribute("reviews", new ReviewModel());
        return "addreviewfrom";
    }

    @PostMapping("/add-review")
    public String saveReview(@ModelAttribute ReviewModel review) {
        reviewRepository.save(review);
        return "redirect:/reviews";
    }

    @Transactional
    @GetMapping("/delete-review/{id}")
    public String deleteReview(@PathVariable Long id) {
        reviewRepository.deleteById(id);
        return "redirect:/reviews";
    }
}

