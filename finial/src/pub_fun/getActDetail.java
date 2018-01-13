package pub_fun;

import entity.Activitys;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class getActDetail {
    Connection conn;

    public List<Activitys> detailInfo(String aid) {

        List<Activitys> activitys = new ArrayList<Activitys>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM activity WHERE delStatus = 1 AND activityId = "+aid;
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
                String content = rs.getString("content");
                String activityName = rs.getString("activityName");
                String activityMes = rs.getString("activityMes");
                String img = rs.getString("img");
                Integer activityId = rs.getInt("activityId");
                Integer userId = rs.getInt("userId");

                Activitys activity = new Activitys();
                activity.setContent(content);
                activity.setActivityName(activityName);
                activity.setActivityMes(activityMes);
                activity.setImg(img);
                activity.setActivityId(activityId);
                activity.setUserId(userId);

                activitys.add(activity);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return activitys;
    }
}
