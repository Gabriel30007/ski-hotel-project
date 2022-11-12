package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.domain.User;
import ua.lviv.nltu.service.UserService;

import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration() {
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView registration(@RequestParam String email,
                                     @RequestParam String firstName,
                                     @RequestParam String lastName,
                                     @RequestParam String password
    ) throws IOException {

        userService.save(new User(email, firstName, lastName, password));

        return new ModelAndView("redirect:/home");
    }
}
