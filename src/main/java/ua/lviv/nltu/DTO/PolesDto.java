package ua.lviv.nltu.DTO;

import org.springframework.web.multipart.MultipartFile;
import ua.lviv.nltu.domain.Boots;
import ua.lviv.nltu.domain.Poles;

import java.io.IOException;
import java.util.Base64;

public class PolesDto {
    public static Poles createBoots(MultipartFile file, int price, int height) throws IOException {
        Poles poles=new Poles();
        poles.setHeight(height);
        poles.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));
        poles.setPrice(price);
        return poles;
    }
}
