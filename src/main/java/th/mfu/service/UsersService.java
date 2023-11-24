package th.mfu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import th.mfu.model.UsersModel;
import th.mfu.repository.UsersRepository;

import java.util.List;
import java.util.Optional;

@Service
public class UsersService {

    @Autowired
    private UsersRepository usersRepository;

    // @Autowired
    // public UsersService(UsersRepository usersRepository) {
    //     this.usersRepository = usersRepository;
    // }

    public Iterable<UsersModel> getAllUsers() {
        return usersRepository.findAll();
    }

    public void addUser(UsersModel user) {
        usersRepository.save(user);
    }

    public UsersModel getUserById(Long userId) {
        Optional<UsersModel> optionalUser = usersRepository.findById(userId);
        return optionalUser.orElse(null);
    }

    public void updateUser(UsersModel user) {
        usersRepository.save(user);
    }

    public void deleteUser(Long userId) {
        usersRepository.deleteById(userId);
    }

    public void makeUserAdmin(Long userId) {
        Optional<UsersModel> optionalUser = usersRepository.findById(userId);
        optionalUser.ifPresent(user -> {
            user.setAdmin(true);
            usersRepository.save(user);
        });
    }

    public UsersModel registerUser(String login, String password, String email, String FIRST_NAME, String LAST_NAME) {
        if (login != null && password != null) {
            UsersModel usersModel = new UsersModel();
            usersModel.setLogin(login);
            usersModel.setPassword(password);
            usersModel.setEmail(email);
            usersModel.setFIRST_NAME(FIRST_NAME);
            usersModel.setLAST_NAME(LAST_NAME);
            return usersRepository.save(usersModel);
        } else {
            return null;
        }
    }

    public UsersModel authenticate(String login, String password) {
        List<UsersModel> co = usersRepository.findAll();
        UsersModel found = null;
        System.out.println("asdasd");
        for (UsersModel usersModel : co) {
            System.out.println("test:");
            System.out.println(usersModel);
        }
        
        return found;
        //return usersRepository.findByLoginAndPassword(login, password);
    }
}
