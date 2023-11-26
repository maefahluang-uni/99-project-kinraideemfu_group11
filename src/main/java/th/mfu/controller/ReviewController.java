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
import th.mfu.model.UsersModel;
import th.mfu.repository.ReviewRepository;

@Controller
public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;
                
     @GetMapping("/review")
    public String listReview(Model model) {
        model.addAttribute("reviews", reviewRepository.findAll());
        return "editreview";
    }

    @GetMapping("/add-reviews")
    public String addReviewform(Model model) {
    model.addAttribute("reviews", new ReviewModel());
    return "addreviewform";
    }

    @PostMapping("/review")
    public String saveReview(@ModelAttribute ReviewModel reviews) {
        reviewRepository.save(reviews);
        return "redirect:/review";
    }
    @Transactional
    @GetMapping("/delete-review/{id}")
    public String deleteReview(@PathVariable Long id) {
        reviewRepository.deleteById(id);
        return "redirect:/review";
    }
    @GetMapping("/edit-review/{id}")
    public String editReviewForm(@PathVariable Long id, Model model) {
       ReviewModel reviewModel = reviewRepository.findById(id).orElse(null);
    
        if (reviewModel == null) {
            return "redirect:/review";
        }
        model.addAttribute("reviewmodel", reviewModel);
        return "editmodelform";
    }

    @PostMapping("/edit-review/{id}")
    public String editreviewID(@PathVariable Long id, @ModelAttribute ReviewModel fixedreview ) {
       ReviewModel existreview = reviewRepository.findById(id).orElse(null);
    
        if (existreview == null) {
            return "redirect:/review";
        }
    
        // Check if fixedRestaurant's id is not null before updating existRestaurant's id
        if (fixedreview.getId() != null) {
            fixedreview.setId(fixedreview.getId());
        }
    
        fixedreview.setUser(fixedreview.getUser());
        fixedreview.setRes(fixedreview.getRes());
        fixedreview.setReviewtext(fixedreview.getReviewtext());
        fixedreview.setRating(fixedreview.getRating());
       
    
        reviewRepository.save(fixedreview);
        return "redirect:/review";
    }
    
}


