package th.mfu.controller;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
<<<<<<< HEAD
import javax.transaction.Transactional;
=======
>>>>>>> 860dde4c21ce854f6e7b71acad5ea90c032f109e

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

<<<<<<< HEAD
import th.mfu.model.RestaurantModel;
import th.mfu.model.UsersModel;
import th.mfu.repository.UsersRepository;
=======
import th.mfu.model.UsersModel;
>>>>>>> 860dde4c21ce854f6e7b71acad5ea90c032f109e
import th.mfu.service.UsersService;


@Controller
public class UsersController {
    @Autowired
    private ServletContext servletContext;

    private final UsersService usersService;
<<<<<<< HEAD
    @Autowired
    private UsersRepository usersRepository;
=======
>>>>>>> 860dde4c21ce854f6e7b71acad5ea90c032f109e

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
<<<<<<< HEAD

    @GetMapping("/user")
    public String listUser(Model model){
        model.addAttribute("users", usersRepository.findAll());
        return "useredit";
    }
    
    @GetMapping("/add-user")
    public String addUserForm(Model model) {
        model.addAttribute("users", new UsersModel());
        return "adduserform";
    }

    @PostMapping("/user")
    public String saveUsers(@ModelAttribute UsersModel users) {
        usersRepository.save(users);
        return "redirect:/user";
    }
    
    @Transactional
    @GetMapping("/delete-user/{id}")
    public String deleteUsers(@PathVariable Long id) {
        usersRepository.deleteById(id);
        return "redirect:/user";
    }

    @GetMapping("/edit-user/{id}")
    public String editUserForm(@PathVariable Long id, Model model) {
       UsersModel usersModel = usersRepository.findById(id).orElse(null);
    
        if (usersModel == null) {
            return "redirect:/user";
        }
        model.addAttribute("restaurantmodel", usersModel);
        return "editresform";
    }

    @PostMapping("/edit-user/{id}")
    public String editUserID(@PathVariable Long id, @ModelAttribute UsersModel fixedUser) {
       UsersModel existuser = usersRepository.findById(id).orElse(null);
    
        if (existuser == null) {
            return "redirect:/user";
        }
    
        // Check if fixedRestaurant's id is not null before updating existRestaurant's id
        if (fixedUser.getId() != null) {
            fixedUser.setId(fixedUser.getId());
        }
    
        fixedUser.setLogin(fixedUser.getLogin());
        fixedUser.setPassword(fixedUser.getPassword());
        fixedUser.setEmail(fixedUser.getEmail());
        fixedUser.setFIRST_NAME(fixedUser.getFIRST_NAME());
        fixedUser.setLAST_NAME(fixedUser.getLAST_NAME());
    
        usersRepository.save(fixedUser);
        return "redirect:/user";
    }
    
=======
>>>>>>> 860dde4c21ce854f6e7b71acad5ea90c032f109e
}



