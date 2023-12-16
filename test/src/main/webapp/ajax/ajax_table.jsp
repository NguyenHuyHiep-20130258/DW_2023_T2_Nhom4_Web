<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.LotteryResultDAO" %>

<%--
  Created by IntelliJ IDEA.
  User: LEGION
  selectedDate: 12/9/2023
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
  String selectedDate = (String) request.getAttribute("date");
  System.out.println(selectedDate);
//  String selectedDate = "2023-11-24";
  LotteryResultDAO dao = new LotteryResultDAO();
//  List<String> provincesNorth = dao.getListLotteryResult(selectedDate, "Miền Bắc");
  String provincesNorth = dao.getLotteryResultMB(selectedDate);
  System.out.println(provincesNorth);
  List<String> provincesMid = dao.getListLotteryResult(selectedDate, "Miền Trung");
  List<String> provincesSouth = dao.getListLotteryResult(selectedDate, "Miền Nam");
%>
<table style="margin-top: 20px;">
  <caption>Kết quả Xổ số Miền Bắc</caption>
  <tr>
    <th>Giải</th>
    <th>
      <%=provincesNorth%>
    </th>
  </tr>
  <tr>
    <td>Giải ĐB</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải ĐB")%>
    </td>
  </tr>
  <tr>
    <td>Giải Nhất</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 1")%>
    </td>
  </tr>
  <tr>
    <td>Giải Nhì</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 2")%>
    </td>
  </tr>
  <tr>
    <td>Giải Ba</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 3")%>
    </td>
  </tr>
  <tr>
    <td>Giải Tư</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 4")%>
    </td>
  </tr>
  <tr>
    <td>Giải Năm</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 5")%>
    </td>
  </tr>
  <tr>
    <td>Giải Sáu</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 6")%>
    </td>
  </tr>
  <tr>
    <td>Giải Bảy</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesNorth, selectedDate, "Giải 7")%>
    </td>
  </tr>
</table>
<table style="margin-top: 20px;">
  <caption>Kết quả Xổ số Miền Trung</caption>
  <tr>
    <th>Giải</th>
    <th>
      <%=provincesMid.get(0)%>
    </th>
    <th>
      <%=provincesMid.get(1)%>
    </th>
    <% if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) { %>
    <th><%=provincesMid.get(2)%></th>
    <% } %>
  </tr>
  <tr>
    <td>Giải ĐB</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải ĐB")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải ĐB")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải ĐB")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Nhất</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 1")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 1")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 1")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Nhì</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 2")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 2")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 2")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Ba</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 3")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 3")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 3")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Tư</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 4")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 4")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 4")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Năm</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 5")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 5")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 5")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Sáu</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 6")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 6")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 6")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Bảy</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 7")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 7")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 7")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Tám</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(0), selectedDate, "Giải 8")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesMid.get(1), selectedDate, "Giải 8")%>
    </td>
    <%if (provincesMid.size() > 2 && !provincesMid.get(2).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesMid.get(2), selectedDate, "Giải 8")%></td>
    <%}%>
  </tr>
</table>
<table style="margin-top: 20px;">
  <caption>Kết quả Xổ số Nam Miền Nam</caption>
  <tr>
    <th>Giải</th>
    <th>
      <%=provincesSouth.get(0)%>
    </th>
    <th>
      <%=provincesSouth.get(1)%>
    </th>
    <th>
      <%=provincesSouth.get(2)%>
    </th>
    <% if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) { %>
    <th><%=provincesSouth.get(3)%></th>
    <% } %>
  </tr>
  <tr>
    <td>Giải ĐB</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải ĐB")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải ĐB")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải ĐB")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải ĐB")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Nhất</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 1")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 1")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 1")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 1")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Nhì</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 2")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 2")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 2")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 2")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Ba</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 3")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 3")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 3")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 3")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Tư</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 4")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 4")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 4")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 4")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Năm</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 5")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 5")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 5")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 5")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Sáu</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 6")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 6")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 6")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 6")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Bảy</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 7")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 7")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 7")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 7")%></td>
    <%}%>
  </tr>
  <tr>
    <td>Giải Tám</td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(0), selectedDate, "Giải 8")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(1), selectedDate, "Giải 8")%>
    </td>
    <td>
      <%=dao.getWinningNumberByPrize(provincesSouth.get(2), selectedDate, "Giải 8")%>
    </td>
    <%if (provincesSouth.size() > 3 && !provincesSouth.get(3).isEmpty()) {%>
    <td><%=dao.getWinningNumberByPrize(provincesSouth.get(3), selectedDate, "Giải 8")%></td>
    <%}%>
  </tr>
</table>