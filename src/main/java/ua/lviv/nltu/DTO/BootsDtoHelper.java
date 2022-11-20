package ua.lviv.nltu.DTO;

import org.springframework.web.multipart.MultipartFile;
import ua.lviv.nltu.domain.Boots;

import java.io.IOException;
import java.util.Base64;

public class BootsDtoHelper {
    public static Boots createBoots(MultipartFile file, int price, int size) throws IOException {
        Boots boots=new Boots();
        boots.setSize(size);
        boots.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));
        boots.setPrice(price);
        return boots;
    }
}
