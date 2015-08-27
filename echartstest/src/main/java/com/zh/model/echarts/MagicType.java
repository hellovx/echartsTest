package com.zh.model.echarts;

import java.util.Arrays;

public class MagicType {
	
	private boolean show= true;
	private String[]  type={"line","bar"};
	
	
	
	@Override
	public String toString() {
		return "MagicType [show=" + show + ", type=" + Arrays.toString(type)
				+ "]";
	}
	public MagicType() {
		super();
	}
	public MagicType(boolean show, String[] type) {
		super();
		this.show = show;
		this.type = type;
	}
	public boolean isShow() {
		return show;
	}
	public String[] getType() {
		return type;
	}
	public void setShow(boolean show) {
		this.show = show;
	}
	public void setType(String[] type) {
		this.type = type;
	}
	
	
	

}
