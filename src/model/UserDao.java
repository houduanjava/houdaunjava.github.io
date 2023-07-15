package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDao {
    //添加
    public void save(User user){
        try {
            Connection conn= DataBaseUtil.getConnection();
            Statement st=conn.createStatement();
            //SQL
            String strInsert="insert into tb_user(id,zname,username,password,sex,email,tel)  values(null,'"+user.getZname()+"','"+user.getUsername()+"','"+user.getPassword()+"','"+user.getSex()+"','"+user.getEmail()+"','"+user.getTel()+"')";
            //执行SQL语句，实现注册
            st.execute(strInsert);
            st.close();
            DataBaseUtil.closeConnection(conn);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    /*public void save(String username,String password,String sex,String photo,String email,String tel){
        try {
            Connection conn= DataBaseUtil.getConnection();
            Statement st=conn.createStatement();
            //SQL
            String strInsert="insert into tb_user (id,username,password,sex,photo,email,tel) " +
                    "values(null,'"+username+"','"+password+"','"+sex+"','"+photo+"','"+email+"','"+tel+"')";
            //执行SQL语句，实现注册
            st.execute(strInsert);

            st.close();
            DataBaseUtil.closeConnection(conn);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }*/
    //删除
    public  void delete(String username, String password){
        User user=null;
       try{
           Connection connection=DataBaseUtil.getConnection();
           Statement st=connection.createStatement();
//           String strselect ="select * from tb_user where username='"+username+"' and password='"+password+"'";
           String strdelete ="delete from tb_user where username='"+username+"' and password='"+password+"'";
           st.execute(strdelete);
//           ResultSet rs=st.executeQuery(strdelete);
//           while (rs.next()){
//               user=new User();
//               user.setId(rs.getInt("id"));
//               user.setUsername(rs.getString("username"));
//               user.setPassword(rs.getString("password"));
//               user.setSex(rs.getString("sex"));
//               user.setZname(rs.getString("zname"));
//               user.setEmail(rs.getString("email"));
//               user.setTel(rs.getString("tel"));
//           }
           st.close();
           connection.close();
             DataBaseUtil.closeConnection(connection);

       }catch (ClassNotFoundException | SQLException e){
           e.printStackTrace();
       }

    }
    //修改
      public User updata(User user){
          System.out.println(user.getZname());
          System.out.println(user.getUsername());
          System.out.println(user.getPassword());
          User user1=new User();
        try{
            Connection connection=DataBaseUtil.getConnection();
            Statement st=connection.createStatement();
            String  strupdate="update tb_user set zname='"+user.getZname()+"',sex='"+user.getSex()+"',tel='"+user.getTel()+"',email='"+user.getEmail()+"' where username='"+user.getUsername()+"' and password='"+user.getPassword()+"'";
//            String  strupdate2="update tb_user set  zname='"+user.getZname()+"'";
            st.execute(strupdate);
            String strlogin="select * from tb_user where username='"+user.getUsername()+"' and password='"+user.getPassword()+"'";
            ResultSet rs=st.executeQuery(strlogin);
             if (rs.next()){

                user1.setId(rs.getInt("id"));
                user1.setUsername(rs.getString("username"));
                user1.setPassword(rs.getString("password"));
                user1.setSex(rs.getString("sex"));
                user1.setZname(rs.getString("zname"));
                user1.setEmail(rs.getString("email"));
                user1.setTel(rs.getString("tel"));
            }
            st.close();
            connection.close();
            DataBaseUtil.closeConnection(connection);

        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }


          return  user1;
      }
    //查询
        public User login(String username, String password){
            User user=null;
            try {
                Connection conn= DataBaseUtil.getConnection();
                Statement st=conn.createStatement();
                //SQL
                String strInsert="select * from tb_user where username='"+username+"' and password='"+password+"'";
                //执行SQL语句，实现注册
                ResultSet rs=st.executeQuery(strInsert);

                if(rs.next()){
                    user=new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setSex(rs.getString("sex"));
                    user.setZname(rs.getString("zname"));
                    user.setEmail(rs.getString("email"));
                    user.setTel(rs.getString("tel"));
                }

                st.close();
                DataBaseUtil.closeConnection(conn);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            return user;
        }


}
