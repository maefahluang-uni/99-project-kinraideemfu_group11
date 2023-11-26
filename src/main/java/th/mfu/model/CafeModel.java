package th.mfu.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table(name = "cafe")
public class CafeModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String Restaurant_ID;
    private String Restaurant_Name;
    private String menu;
    private String Price;
    private String Map_Location;
    private String Time_of_Service;
    public String getMenu() {
        return menu;
    }
    public void setMenu(String menu) {
        this.menu = menu;
    }
    private String PHONE;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getRestaurant_ID() {
        return Restaurant_ID;
    }
    public void setRestaurant_ID(String restaurant_ID) {
        Restaurant_ID = restaurant_ID;
    }
    public String getRestaurant_Name() {
        return Restaurant_Name;
    }
    public void setRestaurant_Name(String restaurant_Name) {
        Restaurant_Name = restaurant_Name;
    }
    public String getPrice() {
        return Price;
    }
    public void setPrice(String price) {
        Price = price;
    }
    public String getMap_Location() {
        return Map_Location;
    }
    public void setMap_Location(String map_Location) {
        Map_Location = map_Location;
    }
    public String getTime_of_Service() {
        return Time_of_Service;
    }
    public void setTime_of_Service(String time_of_Service) {
        Time_of_Service = time_of_Service;
    }
    public String getPHONE() {
        return PHONE;
    }
    public void setPHONE(String pHONE) {
        PHONE = pHONE;
    }
}
