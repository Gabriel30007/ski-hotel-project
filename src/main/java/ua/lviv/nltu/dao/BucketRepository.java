package ua.lviv.nltu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.nltu.domain.Bucket;

public interface BucketRepository extends JpaRepository<Bucket,Integer> {
    Object findAllById(int id);
}
