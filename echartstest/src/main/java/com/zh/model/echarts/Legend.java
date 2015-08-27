package com.zh.model.echarts;

import java.util.Arrays;

public class Legend {
	
	private String[] data;
	
	
	
	

	@Override
	public String toString() {
		return "Legend [data=" + Arrays.toString(data) + "]";
	}

	public Legend() {
		super();
	}

	public Legend(String[] data) {
		super();
		this.data = data;
	}

	public String[] getData() {
		return data;
	}

	public void setData(String[] data) {
		this.data = data;
	}
	
	

}
