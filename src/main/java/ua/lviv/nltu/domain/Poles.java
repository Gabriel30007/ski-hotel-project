package ua.lviv.nltu.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "poles")
public class Poles {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "height")
    private int height;
    @Column(name = "price")
    private int  price;
    @Lob
    private String encodedImage;

    public Poles() {
    }

    public Poles(Integer id, int height, String encodedImage,int price) {
        this.id = id;
        this.height = height;
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Poles(int height, String encodedImage,int price) {
        this.height = height;
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
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
        Poles poles = (Poles) o;
        return height == poles.height && price == poles.price && Objects.equals(id, poles.id) && Objects.equals(encodedImage, poles.encodedImage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, height, price, encodedImage);
    }

    @Override
    public String toString() {
        return "Poles{" +
                "id=" + id +
                ", height=" + height +
                ", price=" + price +
                ", encodedImage='" + encodedImage + '\'' +
                '}';
    }
}
