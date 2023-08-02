package controller;

import model.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/submit_user")
public class AddUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService userService = new UserService();


        int userId = Integer.parseInt(req.getParameter(("userId")));
        String name = req.getParameter("name");
        String userName = req.getParameter("userName");
        String userPassword = req.getParameter("userPassword");

        User user = User.builder()
                .UserId(userId)
                .Name(name)
                .UserName(userName)
                .UserPassword(userPassword)
                .build();

        userService.addUser(user);

        PrintWriter printWriter = resp.getWriter();
        printWriter.println("User added successfully");
    }
}
