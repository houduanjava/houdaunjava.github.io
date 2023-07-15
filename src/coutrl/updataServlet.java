package coutrl;

import model.User;
import model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updataServlet")
public class updataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String username=request.getParameter("username");
          String password=request.getParameter("password");
          User user=new User();

          UserDao userDao=new UserDao();
          user=userDao.login(username,password);
          request.setAttribute("user2",user);
          request.getRequestDispatcher("updata.jsp").forward(request,response);
          response.sendRedirect("updata.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doPost(request,response);
    }
}
