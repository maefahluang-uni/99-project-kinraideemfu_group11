package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import th.mfu.model.RestaurantModel;

import java.util.List;

<<<<<<< HEAD

public interface RestaurantRepository extends JpaRepository<RestaurantModel, Long> {
    List<RestaurantModel> findByName(String restaurant_name);
}

=======
public interface RestaurantRepository extends JpaRepository<RestaurantModel, Long> {
    List<RestaurantModel> findByName(String restaurant_name);
}
>>>>>>> 860dde4c21ce854f6e7b71acad5ea90c032f109e
