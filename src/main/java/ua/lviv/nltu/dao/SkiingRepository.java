package ua.lviv.nltu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.nltu.domain.Skiing;

public interface SkiingRepository  extends JpaRepository<Skiing,Integer> {
    Object findAllById(int id);

}
