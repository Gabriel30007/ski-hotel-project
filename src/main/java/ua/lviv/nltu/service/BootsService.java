package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.BootsRepository;
import ua.lviv.nltu.domain.Boots;

import java.util.List;

@Service
public class BootsService {
    @Autowired
    private BootsRepository bootsRepository;

    public void save(Boots boots){
        bootsRepository.save(boots);
    }
    public List<Boots> getAllMembers(){
        return bootsRepository.findAll();
    }
}
