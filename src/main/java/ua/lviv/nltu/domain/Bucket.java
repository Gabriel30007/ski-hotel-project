package ua.lviv.nltu.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "bucket")
public class Bucket {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;
    @ManyToOne
    @JoinColumn(name="boots_id",referencedColumnName = "id")
    private Boots boots;
    @ManyToOne
    @JoinColumn(name="poles_id",referencedColumnName = "id")
    private Poles poles;
    @ManyToOne
    @JoinColumn(name="skiing_id",referencedColumnName = "id")
    private Skiing skiing;
    @ManyToOne
    @JoinColumn(name = "hotel_id",referencedColumnName = "id")
    private Hotel hotel;

    public Bucket() {
    }

    public Bucket(User user, Boots boots, Poles poles, Skiing skiing, Hotel hotel) {
        this.user = user;
        this.boots = boots;
        this.poles = poles;
        this.skiing = skiing;
        this.hotel = hotel;
    }

    public Bucket(Integer id, User user, Boots boots, Poles poles, Skiing skiing, Hotel hotel) {
        this.id = id;
        this.user = user;
        this.boots = boots;
        this.poles = poles;
        this.skiing = skiing;
        this.hotel = hotel;
    }

    public Bucket(User user, Hotel hotel) {
        this.user = user;
        this.hotel = hotel;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Boots getBoots() {
        return boots;
    }

    public void setBoots(Boots boots) {
        this.boots = boots;
    }

    public Poles getPoles() {
        return poles;
    }

    public void setPoles(Poles poles) {
        this.poles = poles;
    }

    public Skiing getSkiing() {
        return skiing;
    }

    public void setSkiing(Skiing skiing) {
        this.skiing = skiing;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bucket bucket = (Bucket) o;
        return Objects.equals(id, bucket.id) && Objects.equals(user, bucket.user) && Objects.equals(boots, bucket.boots) && Objects.equals(poles, bucket.poles) && Objects.equals(skiing, bucket.skiing) && Objects.equals(hotel, bucket.hotel);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, user, boots, poles, skiing, hotel);
    }

    @Override
    public String toString() {
        return "Bucket{" +
                "id=" + id +
                ", user=" + user +
                ", boots=" + boots +
                ", poles=" + poles +
                ", skiing=" + skiing +
                ", hotel=" + hotel +
                '}';
    }
}

