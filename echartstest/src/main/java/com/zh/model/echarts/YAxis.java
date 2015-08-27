package com.zh.model.echarts;

import java.util.Arrays;

public class YAxis {
	
	private String  type;
	private Object[] data;
	
	
	
	
	
	
	@Override
	public String toString() {
		return "YAxis [type=" + type + ", data=" + Arrays.toString(data) + "]";
	}
	public YAxis() {
		super();
	}
	public YAxis(String type, Object[] data) {
		super();
		this.type = type;
		this.data = data;
	}
	public String getType() {
		return type;
	}
	public Object[] getData() {
		return data;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setData(Object[] data) {
		this.data = data;
	}
	
	
	
	
	
	
	
	

}
