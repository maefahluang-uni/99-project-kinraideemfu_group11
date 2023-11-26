package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import th.mfu.model.CafeModel;

public interface CafeRepository extends JpaRepository<CafeModel, Long>{

}
