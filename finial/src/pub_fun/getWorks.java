package pub_fun;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Works;
//import pub_fun.db;

public class getWorks {
    Connection conn;

    public List<Works> getWorkInfo() {
        List<Works> works = new ArrayList<Works>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM work  JOIN user ON user.userId=work.userId WHERE `work`.delStatus = 1";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
                String username = rs.getString("nickName");
                String content = rs.getString("content");
                String createMethod = rs.getString("createMethod");
                Integer workId = rs.getInt("workId");
                Integer userId = rs.getInt("userId");
                String spec = rs.getString("spec");
                String title = rs.getString("title");
                Integer likeNum = rs.getInt("likeNum");
                //TODO:datetime
//
//                System.out.println(username);
//                System.out.println(createMethod);
//                System.out.println(content);
//                System.out.println(workId);
//                System.out.println(userId);
//                System.out.println(spec);
//                System.out.println(title);
//                System.out.println(likeNum);

                Works work = new Works();
                work.setUsername(username);
                work.setContent(content);
                work.setCreateMethod(createMethod);
                work.setWorkId(workId);
                work.setUserId(userId);
                work.setSpec(spec);
                work.setTitle(title);
                work.setLikeNum(likeNum);

                works.add(work);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return works;
    }

}
