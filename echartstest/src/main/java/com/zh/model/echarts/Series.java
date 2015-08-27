package com.zh.model.echarts;

import java.util.Arrays;

public class Series {

	private String name;
	private String type;
	private String[] data;
	
	
	
	
	
	@Override
	public String toString() {
		return "Series [name=" + name + ", type=" + type + ", data="
				+ Arrays.toString(data) + "]";
	}
	public Series() {
		super();
	}
	public Series(String name, String type, String[] data) {
		super();
		this.name = name;
		this.type = type;
		this.data = data;
	}
	public String getName() {
		return name;
	}
	public String getType() {
		return type;
	}
	public String[] getData() {
		return data;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setData(String[] data) {
		this.data = data;
	}
	
	
	

}
