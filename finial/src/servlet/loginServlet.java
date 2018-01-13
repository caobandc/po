package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Users;
import pub_fun.db;

@WebServlet(name = "loginServlet" , urlPatterns={"/servlet/loginServlet"})
public class loginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        String username,password;
        Connection conn;

        Users u = new Users();
        db database = new db();

        try{
            username = request.getParameter("username");
            password = request.getParameter("password");
            u.setUsername(username);
            u.setPassword(password);

            try{
                conn = database.getConnection();
                //检查用户是否存在
                String checkSql = "SELECT * FROM user WHERE nickName='"+username+"'AND password='"+password+"'AND delStatus=1";
                PreparedStatement pstat = conn.prepareStatement(checkSql);
                ResultSet rs = pstat.executeQuery();

                if (rs.next()){

                    //存session
                    request.getSession().setAttribute("uid",rs.getInt("userId"));
                    request.getSession().setAttribute("name",rs.getString("nickName"));
                    request.getSession().setAttribute("sex",rs.getString("sex"));
                    request.getSession().setAttribute("email",rs.getString("email"));
                    request.getSession().setAttribute("did",rs.getInt("departmentId"));
                    request.getSession().setAttribute("isBack",rs.getInt("isBackuser"));

                    pstat.close();
                    conn.close();
                    response.sendRedirect("../homepage.jsp");

                }else{

                    response.sendRedirect("../error.jsp");
                    
                }

            }catch (SQLException e){
                e.printStackTrace();
            }

        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
