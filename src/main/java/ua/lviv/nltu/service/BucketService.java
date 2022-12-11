package ua.lviv.nltu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.nltu.dao.BucketRepository;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Bucket;

@Service
public class BucketService {
    @Autowired
    private BucketRepository bucketRepository;

    public void save(Bucket bucket){
        bucketRepository.save(bucket);
    }

}
