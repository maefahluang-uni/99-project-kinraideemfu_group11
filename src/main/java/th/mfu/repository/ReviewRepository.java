package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import th.mfu.model.RestaurantModel;
import th.mfu.model.ReviewModel;

public interface ReviewRepository extends JpaRepository<ReviewModel, Long>{

}

