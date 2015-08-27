package com.zh.util;

import org.codehaus.jackson.map.ObjectMapper;

public class JsonUtil {

	/**
	 * @Title: toJsonString
	 * @Description: 将对象转换为json字符串（使用 Jackson ）
	 * @author : zhanghao
	 * @date : 2015年8月10日 上午11:50:27
	 * @param: str ( jack:jackson,fast:fastjson)
	 * @return : String 返回类型
	 * @throws
	 */
	public static String toJsonString(Object val) throws Exception {
		// 返回json字符串数据
		String data;
		ObjectMapper mapper = new ObjectMapper();
		data = mapper.writeValueAsString(val);
		return data;

	}

}
