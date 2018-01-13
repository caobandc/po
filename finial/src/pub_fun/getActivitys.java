package pub_fun;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Departs;
import entity.Activitys;
import pub_fun.db;

import static java.lang.Math.ceil;

public class getActivitys {
    Connection conn;

    public List<Activitys> getActivityInfo() {


        double totalPage=0;
        double total=0;
        Integer pageNum = 5;


        List<Activitys> activitys = new ArrayList<Activitys>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM activity WHERE delStatus = 1 ORDER BY createTime DESC";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {

                total++;
                totalPage = ceil(total/pageNum);

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
                activity.setTotalPage(totalPage);

                activitys.add(activity);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return activitys;
    }

    public List<Activitys> getLimit(String currentPage) {


        Integer current = Integer.parseInt(currentPage);

        Integer pageNum = 5;

        List<Activitys> activitys = new ArrayList<Activitys>();
        Connection  conn = db.getConnection();

        double totalPage=0;
        double total=0;
        Integer start = (current-1)*pageNum;

        String list_sql = "SELECT * FROM activity WHERE delStatus = 1 LIMIT "+start+","+pageNum;
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
