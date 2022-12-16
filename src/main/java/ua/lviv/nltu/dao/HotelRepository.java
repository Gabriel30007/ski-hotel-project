package ua.lviv.nltu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.nltu.domain.Hotel;


public interface HotelRepository extends JpaRepository<Hotel,Integer> {
    Object findAllById(int id);
}
