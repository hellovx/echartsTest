package com.zh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zh.model.echarts.DataView;
import com.zh.model.echarts.Feature;
import com.zh.model.echarts.Legend;
import com.zh.model.echarts.MagicType;
import com.zh.model.echarts.Mark;
import com.zh.model.echarts.Option;
import com.zh.model.echarts.Restore;
import com.zh.model.echarts.SaveAsImage;
import com.zh.model.echarts.Series;
import com.zh.model.echarts.Title;
import com.zh.model.echarts.Toolbox;
import com.zh.model.echarts.Tooltip;
import com.zh.model.echarts.XAxis;
import com.zh.model.echarts.YAxis;

@Controller
@RequestMapping(value="/echarts")
public class Hello {
	
	@RequestMapping(value="/hello.do")
	public String fir(Model model,String name){
		
		System.out.println("Hello first init!!");
		model.addAttribute("info", name);
		return "hello";
	}
	@RequestMapping(value="/bar.do")
	public void ajaxtest(HttpServletRequest request,HttpServletResponse response ){
		System.out.println("init bar ajaxtest");
		
		PrintWriter out=null;
		try {
			out=response.getWriter();
			String data="{\"tooltip\":{\"show\" : \"true\"},\"legend\":{\"data\":[\"销量\"]},"
					+ "\"xAxis\":[{\"type\":\"category\",\"data\":[\"衬衫\",\"羊毛衫\",\"雪纺衫\",\"裤子\",\"高跟鞋\",\"袜子\"]}],"
					+ "\"yAxis\":[{\"type\" : \"value\"}],\"series\":[{\"name\":\"销量\",\"type\" : \"bar\",\"data\":[ 7, 23, 123, 3, 44, 69 ]}]}";
			System.out.println(data);
			//数据输出到前端
			out.println(data);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	/**
	 * 
	 * @Title: barpojodemo 
	 * @Description: 将bar的option数据对象转换成json 传给前台
	 * @author : zhanghao
	 * @date : 2015年8月7日 下午4:03:01
	 * @return : void    返回类型 
	 * @throws
	 */
	@RequestMapping(value="/pojodemo.do")
	public void barpojodemo(HttpServletRequest request,HttpServletResponse response){
		System.out.println("init pojodemo ...");
		//定义输出对象
		PrintWriter out=null;
		//图表标题
		Title title=new Title();
		
		//辅助工具箱
		Toolbox toolbox=new Toolbox(true, new Feature(new Mark(),new DataView(), new MagicType(),new Restore(),new SaveAsImage()));
		
		//提示框
		Tooltip tooltip =new Tooltip();
		
		//图例
		Legend legend=new Legend(new String[]{"2013年","2014年"});
		
		//x轴
		XAxis xAxis=new XAxis("value",new String[]{"0", "0.01"});
		
		//y轴
		YAxis yAxis=new YAxis("category",new String[]{"巴西","印尼","美国","印度","中国","世界人口(万)"});
		
		//驱动图表生成的数据内容
		Series[] series={new Series("2013年", "bar", new String[]{"18203", "23489", "29034", "104970", "131744", "630230"}),
				new Series("2014年", "bar", new String[]{"19325", "23438", "31000", "121594", "134141", "681807"})};
		
		
		Option option=new Option(title, toolbox, tooltip, legend, series);
		//List list =new ArrayList();
		///list.add(option);
		
		Map<String, Object> map=new HashMap<String, Object>();

		map.put("title", title);
		map.put("toolbox", toolbox);
		map.put("tooltip", tooltip);
		map.put("legend", legend);
		map.put("series", series);
		map.put("xAxis", xAxis);
		map.put("yAxis", yAxis);
		
		String data;
		try {
			
			//jackson 进行 对象转换为json
			ObjectMapper mapper = new ObjectMapper();
			data=mapper.writeValueAsString(map);
			System.out.println(data);
			//获取输出对象
			out=response.getWriter();
			//数据输出到前端
			out.println(data);
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
