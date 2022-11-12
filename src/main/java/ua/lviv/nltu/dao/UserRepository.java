package ua.lviv.nltu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.nltu.domain.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Integer> {
    Optional<User> findByEmail(String email);
}
