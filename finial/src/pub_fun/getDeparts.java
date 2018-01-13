package pub_fun;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Departs;
import entity.Users;
import pub_fun.db;

public class getDeparts {
    Connection conn;

    public List<Departs> getDepartInfo() {
        List<Departs> departs = new ArrayList<Departs>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM department WHERE delStatus = 1";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
                String content = rs.getString("content");
                String departmentName = rs.getString("departmentName");
                String img = rs.getString("img");
                Integer departmentId = rs.getInt("departmentId");
                Integer leaderId = rs.getInt("leaderId");

                Departs depart = new Departs();
                depart.setContent(content);
                depart.setDepartmentId(departmentId);
                depart.setDepartmentName(departmentName);
                depart.setImg(img);
                depart.setLeaderId(leaderId);

                departs.add(depart);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return departs;
    }

}
