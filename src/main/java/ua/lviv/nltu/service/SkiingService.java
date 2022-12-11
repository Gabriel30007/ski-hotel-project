package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.SkiingRepository;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Skiing;

import java.util.List;

@Service
public class SkiingService {
    @Autowired
    private SkiingRepository skiingRepository;

    public void save(Skiing skiing){
        skiingRepository.save(skiing);
    }
    public List<Skiing> getAllMembers(){
        return skiingRepository.findAll();
    }
}
