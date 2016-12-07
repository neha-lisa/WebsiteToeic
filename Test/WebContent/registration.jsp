<%@ page import="java.sql.*"%>
<%
    String fullname = request.getParameter("fullname");    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String cpw = request.getParameter("cpw");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/laptrinhweb",
            "root", "Thief1996");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into account(fullname, username, password, cpw, email, mobile, regdate, quyen, khoa) values ('" + fullname + "','" + username + "','" + password + "','" + cpw + "','" + email + "','" + mobile + "', CURDATE(),1,1)");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Thongbao.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>