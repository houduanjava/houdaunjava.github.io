<%--
  Created by IntelliJ IDEA.
  User: 18065
  Date: 2022/11/25
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
  *{margin: 0;padding: 0;}

</style>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="images/index.css" type="text/css">

  </head>
  <body>
  <div id="">
    <div class=" div2">

      <table border="0" cellspacing="0" cellpadding="">
        <tr valign=" bottom">
          <td>您好，欢迎光临黄石风景查询网---</td>
          <td><a href="登录.jsp">登录</a>|<a href="注册.jsp">注册</a></td>

        </tr>
      </table>
    </div>
    <div class="div3">
      <div class=" div4" >

     <img src="images/国徽(1).png"  align="top"><font size="7" color="#DC143C"><strong>黄石市风景</strong></font>

      </div>
      <div class="div5">
        <input type="text" src="" id="search"  size="57" style="size: 57px;height: 45px;border: black 1px solid;background-color: #FFFFFF;">
        <input  class="aa"  onclick="check()"   type="button"  value="搜索"  style="width: 40px;height:45px;background-color:  #F2F2F2;border: #000000 1px solid;border-left: none;">
      </div>
      <script type="text/javascript">

        document.body.onkeyup=function(e){
          if(event.keyCode===13){
            var search=document.getElementById('search').value;
            if(search=='相关文章'){location.href='相关文章.jsp'}
            else if(search=='风景视频'){location.href='#'}
            else if(search=='网站设计方案'){location.href='#'}
            else{alert("无法搜索")}
          }
        }

        function check() {
          var search=document.getElementById('search').value;
          if(search=='相关文章'){location.href='相关文章.html'}
          else if(search=='风景视频'){location.href='#'}
          else if(search=='网站设计方案'){location.href='#'}
          else{alert("无法搜索")}
        }
      </script>


    </div>
    <div id="">
      <img src="images/江景(1).png" >
    </div>
    <div id="">
      <table border="0" cellspacing="" cellpadding="100px"  class="a">
        <tr align="center" bgcolor="cornflowerblue">
          <td><a href="index.jsp">首页</a></td>
          <td><a href="相关文章.jsp">相关文章</a></td>
          <td><a href="#">风景视频</a></td>
          <td><a href="#">网站设计方案</a></td>
        </tr>
      </table>
    </div>
    <div class="div6" align="center" >
      历史
    </div>
    <div class=" div7">
      <div class="div8">
        <p>黄石，湖北省辖地级市，国务院批复确定的长江中游重要的工业基地之一、鄂东地区中心城市，长江中游城市群区域中心城市、华中地区重要的先进制造业基地，武汉城市圈副中心城市, 全国资源枯竭转型试点城市，位于湖北东南部，长江中游南岸，东北临长江与黄冈隔江相望，北接鄂州，西靠武汉、鄂州，西南与咸宁为邻，东南与江西九江接壤。</p>
        <br>
        <p>
          黄石市总面积4583平方公里，下辖4个市辖区、1个县，代管1个县级市，设有1个国家级开发区。根据第七次人口普查数据，截至2020年11月1日零时，黄石市常住人口为2469079人。
        </p>
        <br>
        <p>黄石是华夏青铜文化的发祥地之一，也是近代中国民族工业的摇篮，还拥有国家一类水运口岸。黄石地势西南高，东北低，由西南向东北倾斜；属亚热带季风气候。</p>
        <br>
        <p>2017年6月，黄石市被命名为国家卫生城市。2018年10月，获得“国家森林城市”荣誉称号。2018年11月，入选中国城市全面小康指数前100名。2020年，黄石地区生产总值1641.32亿元。</p>
      </div>
      <img class=" img2" src="images/历史(1).png"  hspace="20px" align=" right" hspace="50px" vspace="50px">

    </div>

  </div>
  </body>
</html>
