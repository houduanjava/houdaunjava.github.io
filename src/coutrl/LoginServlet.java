package coutrl;

import model.User;
import model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        UserDao userdao=new UserDao();
        User user=userdao.login(username,password);

        if(user!=null){
            //将用户对象放到SESSION
            request.getSession().setAttribute("user",user);
            request.getRequestDispatcher("message.jsp").forward(request,response);
        }
        else {
            request.setAttribute("info","用户名错误或者密码错误");
            request.getRequestDispatcher("message.jsp").forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
    }
}
