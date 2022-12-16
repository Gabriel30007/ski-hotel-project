package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Hotel;
import ua.lviv.nltu.service.BootsService;
import ua.lviv.nltu.service.BucketService;
import ua.lviv.nltu.service.HotelService;
import ua.lviv.nltu.service.UserService;

import java.util.List;

@Controller
public class HotelController {
        @Autowired
        private HotelService hotelService;
        @Autowired
        private UserService userService;
        @Autowired
        private BucketService bucketService;

    @RequestMapping(value ="/hotel-registration", method = RequestMethod.GET)
    public ModelAndView HotelView() {
        ModelAndView map = new ModelAndView("checkout");

        map.addObject("bucket",bucketService.getAllMembers());
        return map;
    }

}
