<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="com.jkxy.model.entity.UserInfo"></jsp:useBean>
	<jsp:useBean id="userseivice" class="com.jkxy.service.UserService"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
		out.println(user.getUserName());
		out.println(user.getUserPsd());
		if (userseivice.valiUser(user)) {
			session.setAttribute("user", user);
			%>
			<jsp:forward page="main.jsp"></jsp:forward>
			<%
		}else {
			%>
			<jsp:forward page="index.jsp"></jsp:forward>
			<%
		}
	%>
</body>
</html>