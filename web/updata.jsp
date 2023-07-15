<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: 18065
  Date: 2022/11/26
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户修改界面</title>
    <link href="images/updata.css" type="text/css" rel="stylesheet">
    <script type="text/javascript">
        function reg(form){

            if(form.zname.value == ""){
                alert("用户不能为空！");
                return false;
            }

            if(form.tel.value == ""){
                alert("联系电话不能为空！");
                return false;
            }
            if(form.email.value == ""){
                alert("电子邮箱不能为空！");
                return false;
            }
        }
        function change(){
            var photo = document.getElementById("photo");
            var photoImg = document.getElementById("photoImg");
            photoImg.src = photo.value;
        }
    </script>
</head>
<body>
<%
    User user= (User) request.getAttribute("user2");
%>
<div class="div1">
    <form action="${pageContext.request.contextPath}/updata2Servlet"  method="post" onsubmit="return reg(this);">
        <table border="1px">

             <p class="a">   账户为<%=user.getUsername()%>的个人修改界面 </p>
            <tr>
                <td align="right">注册账号号码:</td>
                <td><input type="text" name="username" maxlength="12" value="<%=user.getUsername()%>" readonly="readonly"  style="width: 250px;height: 28px;" /></td>
            </tr>
            <tr>
                <td align="right">密码:</td>
                <td><input type="text" name="pwd"  maxlength="12" oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;"  value="<%=user.getPassword()%>" readonly="readonly"/></td>
            </tr>
            <tr>
            <td align="right">注册手机号码:</td>
            <td><input type="text" name="tel" maxlength="11"  oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;" value="<%=user.getTel()%>"/></td>
            </tr>
            <tr>
                <td align="right">名字:</td>
                <td><input type="text" name="zname" style="width: 250px;height: 28px;" value="<%=user.getZname()%>"></td>
            </tr>
            <tr>
                <td align="right">电子邮箱</td>
                <td><input type="text" name="email" style="width: 250px;height: 28px;"  value="<%=user.getEmail()%>" ></td>
            </tr>
            <tr>
            <tr>
                <td align="right">性 别：</td>
                <td>
                    <input type="radio" name="sex" value="男"  checked="checked">男
                    <input type="radio" name="sex" value="女">女
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="确认修改"   style="width: 260px;height: 35px;background-color:#2364D2 ;" onclick="return confirm('确认修改？')  "></td>
            </tr>
        </table>

    </form>



</div>


</body>
</html>
