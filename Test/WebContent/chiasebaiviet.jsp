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
        update file_share
        set ghichu=?, share=?
        where username_account='${sessionScope['loginUser']}'
        <s:param value="${param.ghichu }"></s:param>
        <s:param value="${param.share }"></s:param>        
      </s:update>
      
      <c:if test="${count>=1 }">
           <font size="5" color="green">Thành Công</font>
           <br>
           <a href="Share.jsp" class="btn btn-defaut">Back</a>
      </c:if>
      
      

		



</body>
</html>