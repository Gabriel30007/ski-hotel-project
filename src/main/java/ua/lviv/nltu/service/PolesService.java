package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.PolesRepository;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Poles;

import java.util.Collections;
import java.util.List;

@Service
public class PolesService {
    @Autowired
    private PolesRepository polesRepository;

    public void save(Poles poles){
        polesRepository.save(poles);
    }
    public List<Poles> getAllMembers(){
        return polesRepository.findAll();
    }
    public  Poles FindById(int id){
        return (Poles) polesRepository.findAllById(id);
    }
}
