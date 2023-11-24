package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import th.mfu.model.UsersModel;
import th.mfu.repository.UsersRepository;
import th.mfu.service.UsersService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UsersController {

    @Autowired
    private UsersRepository usersRepository;

    private final UsersService usersService;

    @Autowired
    public UsersController(UsersService usersService) {
        this.usersService = usersService;
    }

    @GetMapping
    public String getAllUsers(Model model) {
        model.addAttribute("users", usersService.getAllUsers());
        return "users/list"; // Create a Thymeleaf template to display the list of users
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

    @GetMapping("/edit/{userId}")
    public String showEditForm(@PathVariable Long userId, Model model) {
        UsersModel user = usersService.getUserById(userId);
        model.addAttribute("user", user);
        return "users/edit"; // Create a Thymeleaf template for the edit form
    }

    @PostMapping("/edit")
    public String editUser(UsersModel user, HttpServletRequest request) {
        Object currentUser = request.getAttribute("currentUser"); // global att
        if (currentUser instanceof UsersModel) {
            System.out.println("ADDDDMINNN");
        } else {
            usersService.updateUser(user);
        }
        return "redirect:/users";
    }

    @GetMapping("/delete/{userId}")
    public String deleteUser(@PathVariable Long userId) {
        usersService.deleteUser(userId);
        return "redirect:/users";
    }

    @PostMapping("/make-admin/{userId}")
    public String makeUserAdmin(@PathVariable Long userId) {
        usersService.makeUserAdmin(userId);
        return "redirect:/users";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerRequest", new UsersModel());
        return "register_page";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        // System.out.println("XXXDSAFJS");
        model.addAttribute("loginRequest", new UsersModel());
        return "login_page2";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute UsersModel usersModel) {
        System.out.println("register request:" + usersModel);
        UsersModel registeredUser = usersService.registerUser(usersModel.getLogin(), usersModel.getPassword(), usersModel.getEmail(), usersModel.getFIRST_NAME(), usersModel.getLAST_NAME());
        return registeredUser == null ? "error_page" : "login_page";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute UsersModel usersModel, Model model, HttpServletRequest request, HttpServletResponse response) {
        System.out.println("login request:" + usersModel.getLogin() + " " + usersModel.getPassword());
        System.out.println(usersRepository.findByLoginAndPassword(usersModel.getLogin(), usersModel.getPassword()));
        UsersModel authenticated = usersService.authenticate(usersModel.getLogin(), usersModel.getPassword());
        if (authenticated != null) {
            request.setAttribute("currentuser", authenticated);
            // if (authenticated.isAdmin()) {
            //     return "list";
            // } else {
                return "personal_page";
            //}
            // model.addAttribute("userLogin",authenticated);
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
