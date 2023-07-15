package coutrl;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserExitServlet")
public class UserExitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取session
       User user=(User) request.getSession().getAttribute("user");

       if(user!=null){
           request.getSession().removeAttribute("user");
           request.setAttribute("info","已经退出");
       }
        request.getRequestDispatcher("message.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取session
        User user=(User) request.getSession().getAttribute("user");

        if(user!=null){
            request.getSession().removeAttribute("user");
            request.setAttribute("info","已经退出");
        }
        request.getRequestDispatcher("message.jsp").forward(request,response);
    }
}
