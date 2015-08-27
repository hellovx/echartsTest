<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>柱状图Demo</title>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>

<script src="${path}/js/echarts/e_theme/blue.js"></script>
<script src="${path}/js/echarts/e_theme/roma.js"></script>
<script type="text/javascript" src="${path}/js/jquery/jquery-1.11.1.min.js"></script>

<!-- 引入echarts.js 框架文件  -->
<script type="text/javascript"
	src="${path}/js/echarts/build/dist/echarts.js"></script>
<!-- 为模块加载器配置echarts和所需图表的路径  -->
<script type="text/javascript">
	require.config({

		paths : {
			echarts : '${path}/js/echarts/build/dist'
		}
	});
</script>

<!-- 使用 -->
<script type="text/javascript">
	require([ 'echarts', 'echarts/chart/bar', 'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
	]);
</script>

<script type="text/javascript">
	$(document).ready(function() {
		//alert("hello init");
		// 基于准备好的dom，初始化echarts图表  macarons infographic为主题
		var myChart = require('echarts').init(document.getElementById('main'),e_roma);
		//var myChart = require('echarts').init(document.getElementById('main'));
		//单独设置主题 green red
		//myChart.setTheme(e_blue);

		myChart.showLoading({
			text : '正在努力的读取数据中...', //loading话术
		});
		//ajax get data ing...
		var url = "${path}/echarts/bar.do";
		$.ajax({
			type : "post",
			url : url,
			dataType : "json",
			success : function(data) {
				//alert(data.hello);

				myChart.hideLoading();
				// 图表使用-------------------
				var option = data;
				myChart.setOption(option);

			},
			error : function(error) {
				alert("错误：" + error);
			}

		});

	});
</script>

<script type="text/javascript">

function fnt_showlink(){
	
	var myChart = require('echarts').init(document.getElementById('myline'));
	
	
}

</script>
</head>
<body>


	<div id="main" style="height: 400px"></div>
	<div id="myline" style="height: 400px"></div>
</body>
</html>