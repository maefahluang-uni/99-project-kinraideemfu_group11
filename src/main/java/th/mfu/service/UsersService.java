package th.mfu.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import th.mfu.model.UsersModel;
import th.mfu.repository.UsersRepository;

@Service

public class UsersService {

      private final UsersRepository usersRepository;



    public UsersService(UsersRepository usersRepository) {
            this.usersRepository = usersRepository;
        }


        public UsersModel registerUser(String login, String password, String email, String FIRST_NAME, String LAST_NAME) {
            if (login != null && password != null) {
                UsersModel usersModel = new UsersModel();
                usersModel.setLogin(login);
                usersModel.setPassword(password);
                usersModel.setEmail(email);  // Set the email field
                usersModel.setFIRST_NAME(FIRST_NAME);  // Set the FIRST_NAME field
                usersModel.setLAST_NAME(LAST_NAME);  // Set the LAST_NAME field
                return usersRepository.save(usersModel);
            } else {
                return null;
            }
        }
        

    
    public UsersModel authenticate(String login, String password){
        return usersRepository.findByLoginAndPassword(login,password);
    }

    public boolean isUserLoggedIn(String login, String password) {
        UsersModel user = usersRepository.findByLoginAndPassword(login, password);
        return user != null;
    }



    public UsersModel getUserByLoginAndPassword(String login, String password) {
        return null;
    }
    public void addUser(UsersModel user) {
        usersRepository.save(user);
    }

    public UsersModel getUserById(Long userId) {
        Optional<UsersModel> optionalUser = usersRepository.findById(userId);
        return optionalUser.orElse(null);
    }

    public void updateUser(UsersModel user) {
        // Assuming user is already in the database
        usersRepository.save(user);
    }

    public void deleteUserById(Long userId) {
        usersRepository.deleteById(userId);
    }
    

    public void makeUserAdmin(Long userId) {
        Optional<UsersModel> optionalUser = usersRepository.findById(userId);
        optionalUser.ifPresent(user -> {
            user.setAdmin(true);
            usersRepository.save(user);
        });
    }


}
