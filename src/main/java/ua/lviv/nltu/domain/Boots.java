package ua.lviv.nltu.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "boots")
public class Boots {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "size")
    private int size;
    @Column(name = "price")
    private int price;
    @Lob
    private String encodedImage;

    public Boots() {
    }

    public Boots(int size, String encodedImage,int price) {
        this.size = size;
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Boots(Integer id, int size, String encodedImage, int price) {
        this.id = id;
        this.size = size;
        this.encodedImage = encodedImage;
        this.price=price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
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
        Boots boots = (Boots) o;
        return size == boots.size && price == boots.price && Objects.equals(id, boots.id) && Objects.equals(encodedImage, boots.encodedImage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, size, price, encodedImage);
    }

    @Override
    public String toString() {
        return "Boots{" +
                "id=" + id +
                ", size=" + size +
                ", price=" + price +
                ", encodedImage='" + encodedImage + '\'' +
                '}';
    }
}
