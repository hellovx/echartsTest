package com.zh.model.echarts;

public class DataView {
	private boolean show = true;
	private boolean readOnly = false;
	
	
	
	
	public DataView() {
		super();
	}
	public DataView(boolean show, boolean readOnly) {
		super();
		this.show = show;
		this.readOnly = readOnly;
	}
	public boolean isShow() {
		return show;
	}
	public boolean isReadOnly() {
		return readOnly;
	}
	public void setShow(boolean show) {
		this.show = show;
	}
	public void setReadOnly(boolean readOnly) {
		this.readOnly = readOnly;
	}
	
	
	
	
}
