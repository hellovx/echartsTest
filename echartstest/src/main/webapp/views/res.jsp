<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form:form action="hello.do" modelAttribute="person" method="post">     
        <form:errors path="*"></form:errors><br/><br/>  
        name：<form:input path="name" /><br/>
        <form:errors path="name"></form:errors><br/>
        age：<form:input path="age" /><br/>
        <form:errors path="age"></form:errors><br/>
        <input type="submit" value="Submit" />
        
    </form:form>  
	</div>
</body>
</html>