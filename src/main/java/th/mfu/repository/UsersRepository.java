package th.mfu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import th.mfu.model.UsersModel;

public interface UsersRepository extends JpaRepository <UsersModel, Long> {
    UsersModel findByLoginAndPassword(String login, String password);
}
