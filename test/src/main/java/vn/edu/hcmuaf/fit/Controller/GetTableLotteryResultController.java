package vn.edu.hcmuaf.fit.Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GetTableLotteryResultController", value = "/GetTableLotteryResultController")
public class GetTableLotteryResultController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("selectedDate");
        System.out.println(date);
//        LotteryResultDAO dao = new LotteryResultDAO();
//        List<String> provincesSouth = dao.getListLotteryResult(date, "Miền Nam");
//        List<String> provincesMid = dao.getListLotteryResult(date, "Miền Trung");
//        List<String> provincesNorth = dao.getListLotteryResult(date, "Miền Bắc");
//        System.out.println(provincesNorth);
//        System.out.println(provincesSouth);
//        System.out.println(provincesMid);
        request.setAttribute("date", date);
        request.getRequestDispatcher("ajax/ajax_table.jsp").forward(request, response);
    }
}
