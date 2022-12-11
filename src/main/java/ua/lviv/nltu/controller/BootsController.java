package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.DTO.BootsDtoHelper;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.User;
import ua.lviv.nltu.service.BootsService;
import ua.lviv.nltu.service.UserService;

import javax.validation.Valid;
import java.io.IOException;

@Controller
public class BootsController {
    @Autowired
    private BootsService bootsService;
    @Autowired
    private UserService userService;

    @RequestMapping(value ="/boots-registration", method = RequestMethod.GET)
    public ModelAndView BootsView() {
        return new ModelAndView("bootsRegistration", "boots", new Boots());
    }

    @RequestMapping(value = "/bootsSave", method = RequestMethod.POST)
    public ModelAndView saveBoots(@RequestParam MultipartFile image,
                                         @RequestParam int size,
                                         @RequestParam int price) throws IOException {

        bootsService.save(BootsDtoHelper.createBoots(image,price,size));
        return new ModelAndView("redirect:/main_page");
    }

    @RequestMapping(value ="/bootsBuy", method = RequestMethod.GET)
    public ModelAndView BootsBuy() {
        ModelAndView map = new ModelAndView("bootsBuying");
        map.addObject("boots",bootsService.getAllMembers());
        return map;
    }
}
