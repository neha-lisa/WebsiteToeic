<%@ page import="java.sql.*"%>
<%
    String noidung = request.getParameter("noidung");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/laptrinhweb",
            "root", "Thief1996");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into tinnhan(username_tinnhan, noidung, thoigian) values ('" + fullname + "','" + username + "','" + password + "','" + cpw + "','" + email + "','" + mobile + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Thongbao.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>