<%--
  Created by IntelliJ IDEA.
  User: 18065
  Date: 2022/11/25
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Title</title>
    <head>
        <meta charset="utf-8">
        <title>注册</title>
 <link rel="stylesheet" type="text/css" href="images/注册.css">

    </head>
    <script type="text/javascript">
        function reg(form){

            if(form.name.value == ""){
                alert("用户不能为空！");
                return false;
            }
            if(form.pwd.value == ""){
                alert("密码不能为空！");
                return false;
            }
            if(form.spwd.value == ""){
                alert("确认密码不能为空！");
                return false;
            }
            if(form.username.value.length<10){
                alert("账号不足10位");
                return false;
            }
            if( form.password.value.length<6){
                alert("密码不足6位");
                return false;
            }
            if(form.pwd.value != form.spwd.value){
                alert("两次密码输入不一致！");
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
<div class="div1">
    <div class="div2">
        <p class="a"><font size="" color="" >账号注册</font></p>
        <form action="${pageContext.request.contextPath}/RegServlet" method="post" onsubmit="return reg(this);">
            <table border="1px">
                <tr>
                    <td align="right">注册手机号码:</td>
                    <td><input type="text" name="tel" maxlength="11" placeholder="请输入11位手机号码" oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;" id="haoma"/></td>
                </tr>
                <tr>
                    <td align="right">名字:</td>
                    <td><input type="text" name="zname" style="width: 250px;height: 28px;"></td>
                </tr>
                <tr>
                    <td align="right">电子邮箱</td>
                    <td><input type="text" name="email" style="width: 250px;height: 28px;" placeholder="请输入电子邮箱"></td>
                </tr>
           <tr>
               <td align="right">注册账号号码:</td>
               <td><input type="text" name="name" maxlength="10" placeholder="请输入10位数字" oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;" /></td>
           </tr>
                  <tr>
                      <td align="right">密码:</td>
                      <td><input type="text" name="pwd"  maxlength="6" placeholder="请输入6位数字" oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;" id="pwd"/></td>
                  </tr>
                <tr>
                  <td align="right"> 确认密码:</td>
                    <td><input type="text" name="spwd" maxlength="6" placeholder="请输入6位数字" oninput="value=value.replace(/[^\d]/g,'')" style="width: 250px;height: 28px;" id="spwd"/></td>
                </tr>
                <tr>
                    <td align="right">性 别：</td>
                    <td>
                        <input type="radio" name="sex" value="男" checked="checked">男
                        <input type="radio" name="sex" value="女">女
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="注册"  style="width: 260px;height: 35px;background-color:#2364D2 ;" ></td>
                </tr>
            </table>

        </form>

    </div>
</div>
</body>
</html>
