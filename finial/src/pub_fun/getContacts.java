package pub_fun;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Departs;
import entity.Contacts;
import pub_fun.db;

public class getContacts {
    Connection conn;

    public List<Contacts> getContactInfo() {
        List<Contacts> contacts = new ArrayList<Contacts>();
        Connection  conn = db.getConnection();
        String list_sql = "SELECT * FROM contact";
        try {
            PreparedStatement pstat = conn.prepareStatement(list_sql);
            ResultSet rs = (ResultSet) pstat.executeQuery();
            while(rs.next())
            {
                String name = rs.getString("name");
                String img = rs.getString("img");
                String content = rs.getString("content");
                String href = rs.getString("href");
                Integer contactId = rs.getInt("contactId");

                Contacts contact = new Contacts();
                contact.setName(name);
                contact.setContent(content);
                contact.setImg(img);
                contact.setContactId(contactId);
                contact.setHref(href);

                contacts.add(contact);
            }

            pstat.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contacts;
    }

}
