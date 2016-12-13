<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
									<thead>
										<tr>
											<th>Người Đăng</th>
											<th>File</th>
											<th>Ghi Chú</th>
										</tr>
									</thead>
									<tbody>
										<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
													url="jdbc:mysql://localhost/laptrinhweb" user="root" password="Thief1996"/>
													<sql:query dataSource="${con}" var="result">
														select *
                                                        from account inner join file_share 
                                                        on account.username=file_share.username_account
                                                        where file_share.share='1' 
                                                                                                               
                                                        
													</sql:query>
													<form method="get" action="ReadPDF">
													<c:forEach var="rows" items="${result.rows }">
														<tr>
															<td>${rows.fullname }</td>
															<td><button type="submit" value="${rows.ID_file_share}" name="idfileshare"  class="btn btn-link">${rows.ten_file }</button></td>
															<td>${rows.ghichu }</td>
														</tr>
													</c:forEach>
													</form>
									</tbody>

								</table>

</body>
</html>