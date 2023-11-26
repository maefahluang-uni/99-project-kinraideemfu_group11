package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import th.mfu.model.FoodModel;

public interface FoodRepository extends JpaRepository<FoodModel, Long>{

}
