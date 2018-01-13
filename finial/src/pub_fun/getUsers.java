package pub_fun;

import entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class getUsers {
    Connection conn;
    
    public List<Users> getUserInfo() {
    	List<Users> users = new ArrayList<Users>();
    	Connection  conn = db.getConnection();
    	Integer did;

        String list_sql = "SELECT * FROM user WHERE departmentId=1 AND delStatus = 1";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
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
