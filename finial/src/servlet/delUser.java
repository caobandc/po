package servlet;

import entity.Users;
import pub_fun.db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "delUser" , urlPatterns={"/servlet/delUser"})
public class delUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
//        StringBuffer url = request.getRequestURL();
//        System.out.println(url);
//        System.out.println(request);
        String uid = request.getParameter("uid").trim();
//        System.out.println(uid);

        Connection conn;
        Users u = new Users();
        db database = new db();

        u.setUid(uid);

        try{
            conn = database.getConnection();
            //假删除用户信息
            String updateSql = "UPDATE `user` SET delStatus=0 WHERE userId="+u.getUid();
//            System.out.println(updateSql);
            Statement stmt = conn.createStatement();
            stmt.execute(updateSql);


            request.getSession().setAttribute("name",u.getUsername());

            stmt.close();
            conn.close();
            response.sendRedirect("../admin/table-font-list.jsp?page=1");

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
