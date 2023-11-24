package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import th.mfu.model.RestaurantModel;

import java.util.List;

public interface RestaurantRepository extends JpaRepository<RestaurantModel, Long> {
    List<RestaurantModel> findByName(String restaurant_name);
}
