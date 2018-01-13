package servlet;

import entity.Activitys;
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

@WebServlet(name = "delAct" , urlPatterns={"/servlet/delAct"})
public class delAct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String aid = request.getParameter("aid").trim();
//        System.out.println(uid);

        Connection conn;
        Activitys a = new Activitys();
        db database = new db();

        a.setAid(aid);

        try{
            conn = database.getConnection();
            //假删除活动信息
            String updateSql = "UPDATE `activity` SET delStatus=0 WHERE activityId="+a.getAid();
//            System.out.println(updateSql);
            Statement stmt = conn.createStatement();
            stmt.execute(updateSql);


//            request.getSession().setAttribute("name",a.getUsername());

            stmt.close();
            conn.close();
            response.sendRedirect("../admin/activityManage.jsp?page=1");

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
