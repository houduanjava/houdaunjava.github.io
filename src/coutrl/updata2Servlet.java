package coutrl;

import model.User;
import model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updata2Servlet")
public class updata2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                request.setCharacterEncoding("utf-8");
                String zname=request.getParameter("zname");
                String username=request.getParameter("username");
                String tel=request.getParameter("tel");
                String password =request.getParameter("pwd");
                String email=request.getParameter("email");
                String sex=request.getParameter("sex");
        System.out.println(username);
        System.out.println(password);
        System.out.println(sex);
               User user=new User();
               User user1=new User();
               user.setTel(tel);
               user.setPassword(password);
               user.setSex(sex);
               user.setEmail(email);
               user.setUsername(username);
               user.setZname(zname);
               UserDao userDao=new UserDao();
                user1=userDao.updata(user);
                request.getSession().setAttribute("user",user1);
               request.getRequestDispatcher("message.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doPost(request,response);
    }
}
