package th.mfu.controller;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import th.mfu.model.UsersModel;
import th.mfu.service.UsersService;


@Controller
public class UsersController {
    @Autowired
    private ServletContext servletContext;

    private final UsersService usersService;

    public UsersController(UsersService usersService){
        this.usersService = usersService;
    }

    @PostMapping("/admin")
    public String checkadmin(HttpSession session, UsersModel user, Model model) {
        Object usermodel = servletContext.getAttribute("currentuser");
        model.addAttribute("currentuser", usermodel);
        if (usermodel instanceof UsersModel) {
            UsersModel currentuser = (UsersModel) usermodel;
            if (currentuser.isAdmin()) {
                return "redirect:/admin_page";
            }
        }
        return "personal_page";
    }
     
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("user", new UsersModel());
        return "users/add"; // Create a Thymeleaf template for the add form
    }
    @PostMapping("/add")
    public String addUser(UsersModel user) {
        usersService.addUser(user);
        return "redirect:/users";
    }
    

    @PostMapping("/remove-user/{userId}")
public String removeUser(@PathVariable Long userId, Model model) {
    Object usermodel = servletContext.getAttribute("currentuser");
    model.addAttribute("currentuser", usermodel);

    if (usermodel instanceof UsersModel) {
        UsersModel currentuser = (UsersModel) usermodel;
        if (currentuser.isAdmin()) {
            usersService.deleteUserById(userId);
            return "redirect:/admin_page";  // Redirect to the admin page after removing the user
        }
    }

    return "personal_page";
}

    @PostMapping("/make-admin/{userId}")
    public String makeUserAdmin(@PathVariable Long userId) {
        usersService.makeUserAdmin(userId);
        return "redirect:/users";
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
    public String login(@ModelAttribute UsersModel usersModel, Model model, HttpSession session){
        System.out.println("login request:" + usersModel.getLogin() + " " + usersModel.getPassword());
        UsersModel authenticated = usersService.authenticate(usersModel.getLogin(), usersModel.getPassword());
        System.out.println(authenticated);
        if (authenticated != null) {
            servletContext.setAttribute("currentuser", authenticated);
            model.addAttribute("currentuser", authenticated);
            // System.out.println(servletContext.getAttribute("currentuser"));
            if (authenticated.isAdmin()) {
                return "admin_page";
            } else {
                return "personal_page";
            }
        } else {
            return "error_page";
        }         
    }
     @GetMapping("/logout")
     public String logout(@ModelAttribute UsersModel usersModel, HttpServletRequest request) {
        request.getSession().invalidate();
    return "login_page";
}
    @GetMapping("/personal")
    public String personalPage(Model model, HttpSession session) {
        UsersModel currentUser = (UsersModel) servletContext.getAttribute("currentuser");
        if (currentUser != null) {
            // Add any model attributes needed for the personal page
            model.addAttribute("currentuser", currentUser);  // Add the entire user object to the model
            if (currentUser.isAdmin()) {
                return "redirect:/admin";
            }
            return "personal_page";  // Assuming "personal_page" is the name of your personal page view
        } else {
            return "redirect:/login";  // Redirect to the login page if the user is not authenticated or is an admin
        }
    }
    @GetMapping("/admin")
    public String adminPage(Model model, HttpSession session) {
        UsersModel currentUser = (UsersModel) servletContext.getAttribute("currentuser");
        if (currentUser != null) {
            if (currentUser.isAdmin()) {
                return "admin_page";
            } else {
                return "redirect:/personal";
            }
        } else {
            return "redirect:/login";
        }
    }
}



