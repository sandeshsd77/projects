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

@WebServlet("/update_user")
public class UpdateUser extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("userId"));
        String name = req.getParameter("name");
        String userName = req.getParameter("userName");
        String userPassword = req.getParameter("userPassword");

        User user = User.builder()
                .UserId(userId)
                .Name(name)
                .UserName(userName)
                .UserPassword(userPassword)
                .build();

        userService.updateUser(user);

        PrintWriter printWriter = resp.getWriter();
        printWriter.println("user updated succesfully");

    }
}
