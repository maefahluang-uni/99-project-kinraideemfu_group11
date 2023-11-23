package th.mfu.service;

import org.springframework.stereotype.Service;

import th.mfu.model.UsersModel;
import th.mfu.repository.UsersRepository;

@Service

public class UsersService {

      private final UsersRepository usersRepository;



    public UsersService(UsersRepository usersRepository) {
            this.usersRepository = usersRepository;
        }



    public UsersModel registerUser(String login , String password , String email, String FIRST_NAME, String LAST_NAME){
        if(login !=null && password !=null){
               UsersModel usersModel = new UsersModel();
               usersModel.setLogin(login);
               usersModel.setPassword(password);
               usersModel.setEmail(email);
               usersModel.setEmail(FIRST_NAME);
               usersModel.setEmail(LAST_NAME);
               return usersRepository.save(usersModel);
        }else { 
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



}
