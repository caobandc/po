package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Users;
import pub_fun.db;

import javax.servlet.http.HttpSession;

import static java.lang.Math.ceil;

public class getUsers {
    Connection conn;
    
    public List<Users> getListInfo(String currentPage) {


        Integer current = Integer.parseInt(currentPage);

        Integer pageNum = 5;

    	List<Users> users = new ArrayList<Users>();
        List<Users> results = new ArrayList<Users>();
    	Connection  conn = db.getConnection();

        double totalPage=0;
        double total=0;
        Integer start = (current-1)*pageNum;

        String list_sql = "SELECT * FROM user WHERE delStatus = 1 LIMIT "+start+","+pageNum;
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();

            while(rs.next())
            {
                total++;
                totalPage = ceil(total/pageNum);
                String username = rs.getString("nickName");
                String number = rs.getString("phoneNum");
                Integer userId = rs.getInt("userId");
                Integer sex = rs.getInt("sex");
                String email = rs.getString("email");
                Integer departmentId = rs.getInt("departmentId");
                Integer isBackuser = rs.getInt("isBackuser");
                String content  = rs.getString("content");
                String img = rs.getString("img");

                Users user = new Users();
                user.setUsername(username);
                user.setNumber(number);
                user.setContent(content);
                user.setUserId(userId);
                user.setSex(sex);
                user.setImg(img);
                user.setEmail(email);
                user.setDepartmentId(departmentId);
                user.setIsBackuser(isBackuser);
                user.setTotalPage(totalPage);

                users.add(user);

            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public List<Users> getTotalInfo() {

        Integer pageNum = 5;

        List<Users> users = new ArrayList<Users>();

        Connection  conn = db.getConnection();

        double totalPage=0;
        double total=0;

        String list_sql = "SELECT * FROM user WHERE delStatus = 1";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();

            while(rs.next())
            {
                total++;
                totalPage = ceil(total/pageNum);

                Users user = new Users();
                user.setTotalPage(totalPage);

                users.add(user);

            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }


}
