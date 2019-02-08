import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection = null;

    public MySQLAdsDao (Config config) {
        try {
            DriverManager.registerDriver(new Driver());

            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database!" , e);
        }
    }


    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while (rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")));
            }
            return ads;
        } catch (SQLException e) {
            e.getMessage();
        }
        return null;
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("INSERT INTO ads (user_id, title, description) VALUES (" + ad.getUserId()+ "," + ad.getTitle() + "," + ad.getDescription() + ")");
        } catch (SQLException e) {
            e.getMessage();
        }
        return ad.getId();
    }
}
