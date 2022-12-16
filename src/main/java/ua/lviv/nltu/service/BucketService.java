package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.BucketRepository;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Bucket;
import ua.lviv.nltu.domain.Hotel;
import ua.lviv.nltu.domain.Skiing;

import java.util.List;

@Service
public class BucketService {
    @Autowired
    private BucketRepository bucketRepository;

    public void save(Bucket bucket){
        bucketRepository.save(bucket);
    }
    public Bucket FindById(int id){
        return (Bucket) bucketRepository.findAllById(id);
    }
    public List<Bucket> getAllMembers(){
        return bucketRepository.findAll();
    }
}
