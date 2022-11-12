package ua.lviv.nltu.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "hotel")
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "countDays")
    private int countDays;
    @Column(name = "price")
    private int price;
    public Hotel() {
    }

    public Hotel(int countDays) {
        this.countDays = countDays;
        this.price=countDays*600;
    }

    public Hotel(Integer id, int countDays) {
        this.id = id;
        this.countDays = countDays;
        this.price=countDays*600;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCountDays() {
        return countDays;
    }

    public void setCountDays(int countDays) {
        this.countDays = countDays;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Hotel hotel = (Hotel) o;
        return countDays == hotel.countDays && price == hotel.price && Objects.equals(id, hotel.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, countDays, price);
    }

    @Override
    public String toString() {
        return "Hotel{" +
                "id=" + id +
                ", countDays=" + countDays +
                ", price=" + price +
                '}';
    }
}
