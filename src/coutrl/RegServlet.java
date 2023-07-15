package coutrl;

import model.User;
import model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //获取FORM表单数据
        String username=request.getParameter("name");
        String password=request.getParameter("pwd");
        String repassword=request.getParameter("spwd");
        String sex=request.getParameter("sex");
        String tel=request.getParameter("tel");
        String email=request.getParameter("email");
       String zname=request.getParameter("zname");
        UserDao userdao=new UserDao();

        User user=new User();
        user.setZname(zname);
        user.setUsername(username);
        user.setPassword(password);
        user.setSex(sex);
        user.setTel(tel);
        user.setEmail(email);

        userdao.save(user);


        request.getSession().setAttribute("user",user);
        request.getRequestDispatcher("message.jsp").forward(request,response);
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doPost(request,response);
    }
}
