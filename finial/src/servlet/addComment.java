package servlet;

import entity.Activitys;
import entity.Comments;
import entity.Users;
import pub_fun.db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "addComment" , urlPatterns={"/servlet/addComment"})
public class addComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String commentText = request.getParameter("commentText").trim();
        String nickName = (String) request.getSession().getAttribute("name");
        String aid = (String)request.getSession().getAttribute("aid");
        Connection conn;


        Comments c = new Comments();
        db database = new db();

        c.setNickName(nickName);
        c.setCommentText(commentText);
        c.setAid(aid);

        nickName=c.getNickName();
        commentText=c.getCommentText();
        aid = c.getAid();

        try{
            conn = database.getConnection();

            //获取用户id
            String checkSql = "SELECT * FROM `user` WHERE nickName='"+nickName+"' AND delStatus=1";
            PreparedStatement pstat = conn.prepareStatement(checkSql);
            ResultSet rs = pstat.executeQuery();
            //如果用户存在
            if(rs.next()){
                //添加评论信息
                String addSql = "INSERT INTO comment(userId,activityId,commentText) VALUES ('"+rs.getInt("userId")+"','"+aid+"','"+commentText+"')";
                Statement stmt = conn.createStatement();
                stmt.execute(addSql);

                stmt.close();
                conn.close();
                response.sendRedirect("../activityDetail.jsp?aid="+aid);
            }



        }catch (SQLException e){
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
