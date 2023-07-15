package coutrl;

import model.User;
import model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String name=request.getParameter("username");
           String password=request.getParameter("password");
        System.out.println(name+password);
//        User user=new User();
//        user.setZname(name);
//        user.setPassword(password);
        UserDao userDao=new UserDao();
        userDao.delete(name,password);
        String DELETE=null;

        response.sendRedirect("zhuxiao.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                   doPost(request,response);
    }
}
