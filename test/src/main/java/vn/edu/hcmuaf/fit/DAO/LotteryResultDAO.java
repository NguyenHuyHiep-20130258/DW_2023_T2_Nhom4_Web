package vn.edu.hcmuaf.fit.DAO;


import vn.edu.hcmuaf.fit.Database.JDBIConnector;

import java.sql.SQLException;
import java.util.List;

public class LotteryResultDAO {
    public List<String> getListLotteryResult(String date, String region) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT province FROM `lottery_result_mart` WHERE date=? AND region=? GROUP BY province")
                .bind(0, date)
                .bind(1, region)
                .mapTo(String.class)
                .list());
    }
    public String getLotteryResultMB(String date) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT province FROM `lottery_result_mart` WHERE date=? AND region='Miền Bắc' GROUP BY province")
                .bind(0, date)
                .mapTo(String.class)
                .first()
        );
    }
    public String getWinningNumberByPrize(String province, String date, String prize) {
        List<String> resultList = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT winning_number FROM `lottery_result_mart` WHERE province=? AND date=? AND prize=?")
                .bind(0, province)
                .bind(1, date)
                .bind(2, prize)
                .mapTo(String.class)
                .list()
        );
        String resultString = String.join(" ", resultList);
        return resultString;
    }


    public static void main(String[] args) throws SQLException {
        LotteryResultDAO dao = new LotteryResultDAO();
//        List<String> list = new LotteryResultDAO().getListLotteryResult("2023-12-6", "Miền Bắc");
//        System.out.println(list.get(0));
//        System.out.println(list.get(0));
//        System.out.println(dao.getWinningNumberByPrize("Bắc Ninh", "2023-12-6", "giải ĐB"));
        System.out.println(dao.getLotteryResultMB("2023-12-7"));
    }
}
