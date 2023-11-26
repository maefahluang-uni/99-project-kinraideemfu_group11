package th.mfu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShowFoodRestaurantController {
    
    @GetMapping("/noodlesun")
    public String showNoodlesunDetails() {
        return "noodlesun";
    }

    @GetMapping("/noodlechai")
    public String showNoodlechai(){
        return "noodlechai";
    }

    @GetMapping("/pagmor")
    public String showPagmor(){
        return "pagmor";
    }

    @GetMapping("/gindon")
    public String showGindon(){
        return "gindon";
    }

    @GetMapping("/immjung")
    public String showRammen(){
        return "immjung";
    }

    @GetMapping("/cafeamazon")
    public String showAmazon(){
        return "amazon";
    }

    @GetMapping ("/lampcafe")
    public String showLampcafe(){
        return "lampcafe";
    }

    @GetMapping("/sgpark")
    public String showSg(){
        return "sgpark";
    }
    
    @GetMapping("/milkbox")
    public String showMilkbox(){
        return "milkbox";
    }

    @GetMapping("/rodiya")
    public String showRodiya(){
        return "rodiya";
    }

    @GetMapping("/yaida")
    public String showYaida(){
        return "yaida";
    }
}  
