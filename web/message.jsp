<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>

<%@ page import="model.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>�����û�����</title>
    <style type="text/css">
        **{margin: 0;padding: 0;list-style: none;}
        body {background-image: url("images/��¼����.jpg")}
    </style>

    <link rel="stylesheet" type="text/css" href="images/��������.css">
</head>

<body>
<div class="div1">


    <div class="div4"><h1>�����û�����</h1></div>

    <div class="div3">
        <%
            // ��ȡ��ʾ��Ϣ
            String info = (String)request.getAttribute("info");
            // �����ʾ��Ϣ��Ϊ�գ��������ʾ��Ϣ
            if(info != null){
                out.println(info);
            }
            // ��ȡ��¼���û���Ϣ
            User user = (User)session.getAttribute("user");
            // �ж��û��Ƿ��¼
            if(user != null){


        %>

        <table border="1px" >
            <tr>
                <td colspan="2"><span style="font-weight: bold;font-size: 18px;"><%=user.getUsername() %></span>��</td>
            </tr>
            <tr>
                <td>����:</td>
               <td><%=user.getZname()%></td>
            </tr>
            <tr>
                <td>�Ա�</td>
                <td><%=user.getSex()%></td>
            </tr>
            <tr>
                <td>�˺�:</td>
            <td><%=user.getUsername()%></td>
            </tr>
            <tr>
                <td>����:</td>
            <td><%=user.getPassword()%></td>
            </tr>
            <tr>
                <td>����:</td>
            <td><%=user.getEmail()%></td>
            </tr>
            <tr>
                <td>�ֻ�����:</td>
            <td><%=user.getTel()%></td>
            </tr>
        </table>
        <div class="div2">
            <li><a href="ע��.jsp">�û�ע�� </a></li>
            <li><a href="��¼.jsp">�û���¼</a></li>
            <li><a href="message.jsp">��ǰ�û�</a></li>
            <li><a href="${pageContext.request.contextPath}/updataServlet?username=<%=user.getUsername()%>&password=<%=user.getPassword()%>">�û��޸�</a></li>
            <li><a href="${pageContext.request.contextPath}/UserExitServlet">�û��˳�</a></li>
            <li><a href="${pageContext.request.contextPath}/deleteServlet?username=<%=user.getUsername()%>&password=<%=user.getPassword()%>" onclick="return confirm('ȷ��ɾ����')">�û�ע��</a></li>
        </div>


            <%
                }else{

                    out.println("<br>�Բ�������û�е�¼��");

                }

            %>
    </div>

    <div class="div5">
        <a href="index.jsp" >��ҳ��</a>
    </div>
</div>

</body>
</html>
