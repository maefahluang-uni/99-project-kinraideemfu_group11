package th.mfu.service;

import org.springframework.stereotype.Service;

import th.mfu.model.RestaurantModel;
import th.mfu.repository.RestaurantRepository;

import java.util.List;

@Service
public class RestaurantService {

    private final RestaurantRepository restaurantRepository;

    
    public RestaurantService(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;
    }

    public List<RestaurantModel> findRestaurantsByName(String restaurant_name) {
        return restaurantRepository.findByName(restaurant_name);
    }
}

