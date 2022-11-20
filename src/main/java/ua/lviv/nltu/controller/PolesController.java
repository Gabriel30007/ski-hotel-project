package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.DTO.BootsDtoHelper;
import ua.lviv.nltu.DTO.PolesDto;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Poles;
import ua.lviv.nltu.service.PolesService;

import java.io.IOException;

@Controller
public class PolesController {
    @Autowired
    private PolesService polesService;

    @RequestMapping(value ="/poles-registration", method = RequestMethod.GET)
    public ModelAndView BootsView() {
        return new ModelAndView("polesRegistration", "poles", new Poles());
    }

    @RequestMapping(value = "/polesSave", method = RequestMethod.POST)
    public ModelAndView saveBoots(@RequestParam MultipartFile image,
                                  @RequestParam int height,
                                  @RequestParam int price) throws IOException {

        polesService.save(PolesDto.createBoots(image,price,height));
        return new ModelAndView("redirect:/main_page");
    }
}
