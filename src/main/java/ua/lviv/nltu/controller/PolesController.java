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
import ua.lviv.nltu.DTO.PolesDto;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Bucket;
import ua.lviv.nltu.domain.Poles;
import ua.lviv.nltu.domain.User;
import ua.lviv.nltu.service.BucketService;
import ua.lviv.nltu.service.PolesService;
import ua.lviv.nltu.service.UserService;

import java.io.IOException;

@Controller
public class PolesController {
    @Autowired
    private PolesService polesService;
    @Autowired
    private UserService userService;
    @Autowired
    private BucketService bucketService;

    @RequestMapping(value ="/poles-registration", method = RequestMethod.GET)
    public ModelAndView BootsView() {
        return new ModelAndView("polesRegistration", "poles", new Poles());
    }

    @RequestMapping(value = "/polesSave", method = RequestMethod.POST)
    public ModelAndView savePoles(@RequestParam MultipartFile image,
                                  @RequestParam int height,
                                  @RequestParam int price) throws IOException {

        polesService.save(PolesDto.createBoots(image,price,height));
        return new ModelAndView("redirect:/main_page");
    }
    @RequestMapping(value ="/polesBuy", method = RequestMethod.GET)
    public ModelAndView PolesBuy() {
        ModelAndView map = new ModelAndView("polesBuying");
        map.addObject("poles" , polesService.getAllMembers());
        return map;
    }
    //  //PolesToBucket polesId
    @RequestMapping(value = "/PolesToBucket", method = RequestMethod.POST)
    public ModelAndView saveToBucket(@RequestParam int polesId) throws IOException {
        Poles poles= polesService.FindById(polesId);
        Bucket bucket=new Bucket();
        bucket.setPoles(poles);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userEmail = auth.getName();
        User user = userService.findByEmail(userEmail);
        bucket.setUser(user);
        bucketService.save(bucket);
        return new ModelAndView("redirect:/main_page");
    }
}
