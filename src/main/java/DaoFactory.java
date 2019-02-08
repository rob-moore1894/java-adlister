public class DaoFactory {
    private static Ads adsDao;

    private static Config moreAds = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(moreAds);
        }
        return adsDao;
    }
}
