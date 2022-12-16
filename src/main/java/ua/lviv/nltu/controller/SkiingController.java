package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.DTO.BootsDtoHelper;
import ua.lviv.nltu.DTO.SkiingDto;
import ua.lviv.nltu.domain.*;
import ua.lviv.nltu.service.BucketService;
import ua.lviv.nltu.service.SkiingService;
import ua.lviv.nltu.service.UserService;

import java.io.IOException;
@Controller
public class SkiingController {
    @Autowired
    private SkiingService skiingService;
    @Autowired
    private UserService userService;
    @Autowired
    private BucketService bucketService;

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
    @RequestMapping(value ="/skiingBuy", method = RequestMethod.GET)
    public ModelAndView SkiingBuy() {
        ModelAndView map = new ModelAndView("skiingBuying");
        map.addObject("skiing", skiingService.getAllMembers());
        return map;
    }

    @RequestMapping(value = "/SkiingToBucket", method = RequestMethod.POST)
    public ModelAndView saveToBucket(@RequestParam int skiingId) throws IOException {
        Skiing skiing= skiingService.FindById(skiingId);
        Bucket bucket=new Bucket();
        bucket.setSkiing(skiing);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userEmail = auth.getName();
        User user = userService.findByEmail(userEmail);
        bucket.setUser(user);
        bucketService.save(bucket);
        return new ModelAndView("redirect:/main_page");
    }

}
