package th.mfu.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
    public String login(@ModelAttribute UsersModel usersModel, Model model, HttpServletRequest request, HttpServletResponse response){
        System.out.println("login request:" + usersModel.getLogin() + " " + usersModel.getPassword());
        UsersModel authenticated = usersService.authenticate(usersModel.getLogin(), usersModel.getPassword());
        System.out.println(authenticated);
        if (authenticated != null) {
             request.setAttribute("currentuser", authenticated);
             //model.addAttribute("userLogin",authenticated);
            return "personal_page";
        } else {
            return "error_page";
        }         
    }
     @GetMapping("/logout")
     public String logout(@ModelAttribute UsersModel usersModel, HttpServletRequest request) {
        request.getSession().invalidate();
    return "login_page";
}
}



