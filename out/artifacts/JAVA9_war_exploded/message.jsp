<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>

<%@ page import="model.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>个人用户中心</title>
    <style type="text/css">
        **{margin: 0;padding: 0;list-style: none;}
        body {background-image: url("images/登录界面.jpg")}
    </style>

    <link rel="stylesheet" type="text/css" href="images/个人中心.css">
</head>

<body>
<div class="div1">


    <div class="div4"><h1>个人用户界面</h1></div>

    <div class="div3">
        <%
            // 获取提示信息
            String info = (String)request.getAttribute("info");
            // 如果提示信息不为空，则输出提示信息
            if(info != null){
                out.println(info);
            }
            // 获取登录的用户信息
            User user = (User)session.getAttribute("user");
            // 判断用户是否登录
            if(user != null){


        %>

        <table border="1px" >
            <tr>
                <td colspan="2"><span style="font-weight: bold;font-size: 18px;"><%=user.getUsername() %></span>！</td>
            </tr>
            <tr>
                <td>名字:</td>
               <td><%=user.getZname()%></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><%=user.getSex()%></td>
            </tr>
            <tr>
                <td>账号:</td>
            <td><%=user.getUsername()%></td>
            </tr>
            <tr>
                <td>密码:</td>
            <td><%=user.getPassword()%></td>
            </tr>
            <tr>
                <td>邮箱:</td>
            <td><%=user.getEmail()%></td>
            </tr>
            <tr>
                <td>手机号码:</td>
            <td><%=user.getTel()%></td>
            </tr>
        </table>
        <div class="div2">
            <li><a href="注册.jsp">用户注册 </a></li>
            <li><a href="登录.jsp">用户登录</a></li>
            <li><a href="message.jsp">当前用户</a></li>
            <li><a href="${pageContext.request.contextPath}/updataServlet?username=<%=user.getUsername()%>&password=<%=user.getPassword()%>">用户修改</a></li>
            <li><a href="${pageContext.request.contextPath}/UserExitServlet">用户退出</a></li>
            <li><a href="${pageContext.request.contextPath}/deleteServlet?username=<%=user.getUsername()%>&password=<%=user.getPassword()%>" onclick="return confirm('确认删除？')">用户注销</a></li>
        </div>


            <%
                }else{

                    out.println("<br>对不起，您还没有登录！");

                }

            %>
    </div>

    <div class="div5">
        <a href="index.jsp" >主页面</a>
    </div>
</div>

</body>
</html>
