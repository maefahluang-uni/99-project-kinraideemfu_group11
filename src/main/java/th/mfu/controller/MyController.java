package th.mfu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MyController {

    @GetMapping("/menufood")
    public String ShowMenuFood(){
        return "menufood";
    }

    @GetMapping("/menudessert")
    public String ShowMenuDss(){
        return "menudessert";
    }

    @GetMapping("/menudrink")
    public String ShowMenuDrink(){
        return "menudrink";
    }

    @GetMapping("/home")
    public String ShowHome(){
        return "index";
    }
}
