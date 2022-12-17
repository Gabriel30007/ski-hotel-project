package ua.lviv.nltu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Bucket;
import ua.lviv.nltu.domain.Hotel;
import ua.lviv.nltu.domain.User;
import ua.lviv.nltu.service.BootsService;
import ua.lviv.nltu.service.BucketService;
import ua.lviv.nltu.service.HotelService;
import ua.lviv.nltu.service.UserService;

import java.io.IOException;
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
        int price=0;
        List<Bucket>bucket =bucketService.getAllMembers();
        for (int i = 0; i < bucket.size(); i++) {
            price+= bucket.get(i).price();
        }
        map.addObject("bucket",bucketService.getAllMembers());
        map.addObject("price",price);
        return map;
    }
//HotelReg
@RequestMapping(value = "/HotelReg", method = RequestMethod.POST)
public ModelAndView saveHotel(@RequestParam int hotelPrice) throws IOException {
    Hotel hotel=new Hotel();
    hotel.setPrice(hotelPrice);
    hotel.setCountDays(2);
    hotelService.save(hotel);
    Bucket bucket=new Bucket();
    bucket.setHotel(hotel);
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    String userEmail = auth.getName();
    User user = userService.findByEmail(userEmail);
    bucket.setUser(user);
    bucketService.save(bucket);
    return new ModelAndView("redirect:/main_page");
    }
}
