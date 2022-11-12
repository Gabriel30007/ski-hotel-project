package ua.lviv.nltu.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "skiing")
public class Skiing {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "price")
    private int price;
    @Lob
    private String encodedImage;

    public Skiing() {
    }

    public Skiing(String encodedImage,int price) {
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Skiing(Integer id, String encodedImage,int price) {
        this.id = id;
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEncodedImage() {
        return encodedImage;
    }

    public void setEncodedImage(String encodedImage) {
        this.encodedImage = encodedImage;
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
        Skiing skiing = (Skiing) o;
        return price == skiing.price && Objects.equals(id, skiing.id) && Objects.equals(encodedImage, skiing.encodedImage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, price, encodedImage);
    }

    @Override
    public String toString() {
        return "Skiing{" +
                "id=" + id +
                ", price=" + price +
                ", encodedImage='" + encodedImage + '\'' +
                '}';
    }
}
