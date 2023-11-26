package th.mfu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SortingController {
    
    @GetMapping("/fivestar")
    public String showFiveStar(){
        return "ratingfive";
    }

    @GetMapping("/fourstar")
    public String showFourStar(){
        return "ratingfour";
    }
}
