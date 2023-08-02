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

@WebServlet("/delete_user")
public class DeleteUser extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp){

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("userId"));
        userService.deleteUser(userId);

        PrintWriter printWriter = resp.getWriter();
        printWriter.println("user deleted succesfully");

        resp.sendRedirect("index.jsp");
    }
}
