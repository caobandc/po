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

@WebServlet(name = "editAct" , urlPatterns={"/servlet/editAct"})
public class editAct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String aid = (String) request.getSession().getAttribute("aid");
        String activityName = request.getParameter("name");
        String activityMes = request.getParameter("mes");

        Connection conn;
        Activitys a = new Activitys();
        db database = new db();

        a.setAid(aid);
        a.setActivityName(activityName);
        a.setActivityMes(activityMes);

        try{
            conn = database.getConnection();
            //修改活动信息
            String updateSql = "UPDATE activity SET activityName='"+a.getActivityName()+"',activityMes='"+a.getActivityMes()+"' WHERE activityId="+a.getAid();
            Statement stmt = conn.createStatement();
            stmt.execute(updateSql);


            stmt.close();
            conn.close();
            response.sendRedirect("../admin/activityManage.jsp?page=1");

        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
