<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h2><a href="<%=request.getContextPath()%>/jsp/echarts/echartsindex.jsp">Echarts Demo Test</a></h2>
 <br><br><br><br>
	<form action="<%=request.getContextPath()%>/echarts/hello.do" methed="get">
		姓名：<input type="text" name="name"><br> 性别: <input
			type="text" name="sex"><br> 年龄：<input type="text"
			name="age"><br> 地址：<input type="text" name="add"><br>
		信息：<input type="text" name="allinfo"><br> <input
			type="submit" value="SUBMIT"><br>
	</form>
</body>
</html>