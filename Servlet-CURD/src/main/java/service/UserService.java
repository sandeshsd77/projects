package service;

import dao.UserDao;
import model.User;

public class UserService {
    UserDao userDao = new UserDao();
    public void addUser(User user){
        userDao.addUser(user);
    }

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    public void deleteUser(int userId) {
        userDao.deleteUser(userId);
    }
}
