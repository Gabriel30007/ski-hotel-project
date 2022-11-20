package ua.lviv.nltu.DTO;

import org.springframework.web.multipart.MultipartFile;
import ua.lviv.nltu.domain.Poles;
import ua.lviv.nltu.domain.Skiing;

import java.io.IOException;
import java.util.Base64;

public class SkiingDto {
    public static Skiing createBoots(MultipartFile file, int price) throws IOException {
        Skiing skiing=new Skiing();
        skiing.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));
        skiing.setPrice(price);
        return skiing;
    }
}
