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
	<c:if test="${ empty param.username or empty param.password}">
		<c:redirect url="Login.jsp">
			<c:param name="errMsg" value="Please Enter UserName and Password" />
		</c:redirect>

	</c:if>

	<c:if test="${not empty param.username and not empty param.password}">
		<s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/laptrinhweb" user="root"
			password="Thief1996" />

		<s:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from account
        where username='${param.username}'
        and password='${param.password}'
        and quyen='${param.q}'
        and khoa=1
        
      </s:query>
      <s:update dataSource="${ds}" var="lasttime">
				       update account
                       set account.lasttime=current_time()
                       where account.username='${param.username}'
		        </s:update>
     

		<c:forEach items="${selectQ.rows}" var="r">
			<c:choose>
				<c:when test="${r.kount gt 0}">
				
					<c:set scope="session" var="loginUser" value="${param.username}" />
					<c:if test="${ param.q==0}">
					   <c:redirect url="Admin.jsp" />
					</c:if>
					<c:if test="${ param.q==1}">
					   <c:redirect url="HomeSauDangNhap.jsp" />
					</c:if>
				</c:when>
				<c:otherwise>
					<c:redirect url="Login.jsp">
						<c:param name="errMsg" value="Username/password does not match" />
					</c:redirect>
				</c:otherwise>
			</c:choose>

		</c:forEach>

	</c:if>

</body>
</html>