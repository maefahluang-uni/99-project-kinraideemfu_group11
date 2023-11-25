package th.mfu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShowMenu {
    
    @GetMapping("/amazonmenu")
    public String showAmazonmenu(){
        return "cafe amazon";
    }

    @GetMapping("/lampcafemenu")
    public String showLampMenu(){
        return "lamcafe";
    }

    @GetMapping("/spkmenu")
    public String showSpkMenu(){
        return "sgparkmenu";
    }

    @GetMapping("/milkboxmenu")
    public String showmilkboxMenu(){
        return "Milk Box MFU";
    }

    @GetMapping("/rodiyamenu")
    public String showRodiyaMenu(){
        return "rodiyamenu";
    }

    @GetMapping("/yaidamenu")
    public String showYaidaMenu(){
        return "yaidamenu";
    }

    @GetMapping("/noodlesunmenu")
    public String showSunMenu(){
        return "athid";
    }

    @GetMapping("/gindonmenu")
    public String showGindonMenu(){
        return "gindonmenu";
    }

    @GetMapping("/immjungmenu")
    public String showImmjungMenu(){
        return "im";
    }

    @GetMapping("/pakmormenu")
    public String showPakmormenu(){
        return "pakmor";
    }

    @GetMapping("/noodlechaimenu")
    public String showChaimenu(){
        return "sub";
    }
}
