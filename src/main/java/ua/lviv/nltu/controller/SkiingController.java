package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.DTO.BootsDtoHelper;
import ua.lviv.nltu.DTO.SkiingDto;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Skiing;
import ua.lviv.nltu.service.SkiingService;

import java.io.IOException;
@Controller
public class SkiingController {
    @Autowired
    private SkiingService skiingService;

    @RequestMapping(value ="/skiing-registration", method = RequestMethod.GET)
    public ModelAndView BootsView() {
        return new ModelAndView("skiingRegistration", "skiing", new Skiing());
    }

    @RequestMapping(value = "/skiingSave", method = RequestMethod.POST)
    public ModelAndView saveBoots(@RequestParam MultipartFile image,
                                  @RequestParam int price) throws IOException {

        skiingService.save(SkiingDto.createBoots(image,price));
        return new ModelAndView("redirect:/main_page");
    }
}
