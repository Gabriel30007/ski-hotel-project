package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.HotelRepository;
import ua.lviv.nltu.domain.Hotel;

import java.util.List;
@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepository;

    public List<Hotel> getAllMembers(){
        return hotelRepository.findAll();
    }

}
