package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.PolesRepository;
import ua.lviv.nltu.domain.Poles;

@Service
public class PolesService {
    @Autowired
    private PolesRepository polesRepository;

    public void save(Poles poles){
        polesRepository.save(poles);
    }

}
