import java.sql.*;
import com.mysql.cj.jdbc.Driver;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {

    private List<Ad> ads;

    public List<Ad> all(){
        return null;
    }

    public Ad findOne(Long id){
        int intId = id.intValue();
        return ads.get(intId);
    }

    public Long insert(Ad ad) {
      return null;
    }


}
