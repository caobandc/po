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

@WebServlet(name = "editUser" , urlPatterns={"/servlet/editUser"})
public class editUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String uid = (String) request.getSession().getAttribute("uid");
        String content = request.getParameter("content");
        String right = request.getParameter("right");

//        System.out.println(uid);
//        System.out.println(content);
//        System.out.println(right);

        Connection conn;
        Users u = new Users();
        db database = new db();

        u.setUid(uid);
        u.setContent(content);
        u.setRight(right);

        try{
            conn = database.getConnection();
            //假删除用户信息
            String updateSql = "UPDATE `user` SET isBackuser='"+u.getRight()+"',content='"+u.getContent()+"' WHERE userId="+u.getUid();
//            System.out.println(updateSql);
            Statement stmt = conn.createStatement();
            stmt.execute(updateSql);


            request.getSession().setAttribute("name",u.getUsername());

            stmt.close();
            conn.close();
            response.sendRedirect("../admin/table-font-list.jsp");

        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
