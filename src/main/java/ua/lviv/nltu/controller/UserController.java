package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.User;
import ua.lviv.nltu.service.UserService;

import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;



    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(      @RequestParam String email,
                                     @RequestParam String firstName,
                                     @RequestParam String lastName,
                                     @RequestParam String password
    ) throws IOException {

        userService.save(new User(email, firstName, lastName, password));

        return ("redirect:/login");
    }

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login(Model model, String error, String logout) {
        ModelAndView map=new ModelAndView("login");
        map.addObject( "user", new User());
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return map;
    }

    @RequestMapping(value ="/main_page", method = RequestMethod.GET)
    public ModelAndView welcome() {
        ModelAndView map = new ModelAndView("main_page");
        return map;
    }

    @RequestMapping(value ="/location", method = RequestMethod.GET)
    public ModelAndView location() {
        ModelAndView map = new ModelAndView("location");
        return map;
    }
}
