<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authentication page</title>
</head>
<body>


		<s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/laptrinhweb" user="root"
			password="Thief1996" />

		<s:update dataSource="${ds}" var="count">
        update account
        set fullname=?, email=?, mobile=?, khoa=?
        where id='${param.id}'
        <s:param value="${param.fullname }"></s:param>
        <s:param value="${param.email }"></s:param>
        <s:param value="${param.mobile }"></s:param>
        <s:param value="${param.khoa }"></s:param>
        
      </s:update>
      
      <c:if test="${count>=1 }">
           <font size="5" color="green">Thành Công</font>
           <br>
           <a href="Admin.jsp" class="btn btn-defaut">Back</a>
      </c:if>
      
      

		



</body>
</html>