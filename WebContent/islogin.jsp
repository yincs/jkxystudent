<%@page import="com.jkxy.model.entity.UserInfo"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserInfo user = (UserInfo)session.getAttribute("user");
	if(user == null){
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
		<%
	}
%>