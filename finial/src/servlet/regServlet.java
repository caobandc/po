package servlet;

import entity.Users;
import pub_fun.db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "regServlet" , urlPatterns={"/servlet/regServlet"})
public class regServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        Connection conn;

        Users u = new Users();
        db database = new db();

        u.setUsername(username);
        u.setPassword(password);

        username=u.getUsername();
        password=u.getPassword();

            try{
                conn = database.getConnection();
                //添加用户信息
                String addSql = "INSERT INTO `user`(nickName,password) VALUES ('"+u.getUsername()+"','"+u.getPassword()+"')";
                Statement stmt = conn.createStatement();
                stmt.execute(addSql);


                request.getSession().setAttribute("name",u.getUsername());

                stmt.close();
                conn.close();
                response.sendRedirect("../homepage.jsp");

            }catch (SQLException e){
                e.printStackTrace();
            }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
