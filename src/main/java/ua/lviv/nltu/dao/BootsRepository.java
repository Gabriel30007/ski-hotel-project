package ua.lviv.nltu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.nltu.domain.Boots;

public interface BootsRepository extends JpaRepository<Boots,Integer> {
}
