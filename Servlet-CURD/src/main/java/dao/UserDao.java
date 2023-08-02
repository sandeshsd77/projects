package dao;

import model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao {


    public static Session getSession() {
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(model.User.class);
        configuration.configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        return session;
    }

    public void addUser(User user) {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }

    public void updateUser(User user) {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.update(user);
        transaction.commit();
        session.close();
    }

    public void deleteUser(int userId) {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        User user = session.get(User.class, userId);
        session.remove(user);
        transaction.commit();
        session.close();

    }
}
