package th.mfu.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.UsersModel;
import th.mfu.service.UsersService;


@Controller
public class UsersController {
    private final UsersService usersService;

       public UsersController(UsersService usersService){
        this.usersService = usersService;
       }

    @GetMapping("/register")
    public String getRegisterPage(Model model){
        model.addAttribute("registerRequest",new UsersModel());
        return "register_page";
    }
    @GetMapping("/login")
    public String getLoginPage(Model model){
        model.addAttribute("loginRequest",new UsersModel());
        return "login_page";
    }
    
    @PostMapping("/register")
    public String register(@ModelAttribute UsersModel usersModel){
        System.out.println("register request:"+ usersModel);
        UsersModel registeredUser = usersService.registerUser(usersModel.getLogin(), usersModel.getPassword(), usersModel.getEmail(),usersModel.getFIRST_NAME(),usersModel.getLAST_NAME());
        return registeredUser == null ? "error_page" : "login_page";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute UsersModel usersModel, Model model){
        System.out.println("login request:" + usersModel.getLogin() + " " + usersModel.getPassword());
        UsersModel authenticated = usersService.authenticate(usersModel.getLogin(), usersModel.getPassword());
        System.out.println(authenticated);
        if (authenticated != null) {
            model.addAttribute("userLogin",authenticated);
            return "personal_page";
        } else {
            return "error_page";
        }         
    }
}


