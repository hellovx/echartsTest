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
	require([ 'echarts', 'echarts/chart/pie','echarts/chart/funnel' // 使用柱状图就加载bar模块，按需加载
	]);
</script>

<script type="text/javascript">
	$(document).ready(function() {
		//alert("hello init");
		// 基于准备好的dom，初始化echarts图表  macarons infographic为主题
		var myChart = require('echarts').init(document.getElementById('main'));
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
				//data 可将返回的数据按格式放入到下面配置中。
				var option = {
					    title : {
					        text: '某站点用户访问来源',
					        subtext: '纯属虚构',
					        x:'center'
					    },
					    tooltip : {
					        trigger: 'item',
					        formatter: "{a} <br/>{b} : {c} ({d}%)"
					    },
					    legend: {
					        orient : 'vertical',
					        x : 'left',
					        data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
					    },
					    toolbox: {
					        show : true,
					        feature : {
					            mark : {show: true},
					            dataView : {show: true, readOnly: false},
					            magicType : {
					                show: true, 
					                type: ['pie', 'funnel'],
					                option: {
					                    funnel: {
					                        x: '25%',
					                        width: '50%',
					                        funnelAlign: 'left',
					                        max: 1548
					                    }
					                }
					            },
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
					    series : [
					        {
					            name:'访问来源',
					            type:'pie',
					            radius : '55%',
					            center: ['50%', '60%'],
					            data:[
					                {value:335, name:'直接访问'},
					                {value:310, name:'邮件营销'},
					                {value:234, name:'联盟广告'},
					                {value:135, name:'视频广告'},
					                {value:1548, name:'搜索引擎'}],
					            itemStyle:{ 
					                normal:{ 
					                      label:{ 
					                        show: true, 
					                        formatter: '{b} : {c} ({d}%)' 
					                      }, 
					                      labelLine :{show:true} 
					                    } 
					                }
					        }
					    ]
					};
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