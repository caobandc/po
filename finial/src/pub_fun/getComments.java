package pub_fun;

import entity.Activitys;
import entity.Comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class getComments {
    Connection conn;

    public List<Comments> getCommentInfo(String aid) {

        List<Comments> comments = new ArrayList<Comments>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM commentDetail WHERE activityId = "+aid;
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
                String commentText = rs.getString("commentText");
                String nickName = rs.getString("nickName");
                String img = rs.getString("img");
                Integer activityId = rs.getInt("activityId");

                Comments comment = new Comments();
                comment.setCommentText(commentText);
                comment.setNickName(nickName);
                comment.setActivityId(activityId);
                comment.setImg(img);

                comments.add(comment);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

}
