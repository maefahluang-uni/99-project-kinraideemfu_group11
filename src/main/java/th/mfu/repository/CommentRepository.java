package th.mfu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import th.mfu.model.CommentModel;

public interface CommentRepository extends JpaRepository<CommentModel, Long> {

    @Query("SELECT c FROM CommentModel c WHERE c.user.id = ?1")
    List<CommentModel> findByUserId(Long userId);
    
    // You can add more custom queries or methods here
}
