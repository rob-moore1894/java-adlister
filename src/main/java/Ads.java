import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    Ad findOne(Long id);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
}
