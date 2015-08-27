package com.zh.model.echarts;

public class Title {
	
	private String text="图表标题";
	private String subtext="图表子内容";
	
	
	
	
	
	@Override
	public String toString() {
		return "title [text=" + text + ", subtext=" + subtext + "]";
	}
	public Title() {
		super();
	}
	public Title(String text, String subtext) {
		super();
		this.text = text;
		this.subtext = subtext;
	}
	public String getText() {
		return text;
	}
	public String getSubtext() {
		return subtext;
	}
	public void setText(String text) {
		this.text = text;
	}
	public void setSubtext(String subtext) {
		this.subtext = subtext;
	}
	
	
	
	

}
