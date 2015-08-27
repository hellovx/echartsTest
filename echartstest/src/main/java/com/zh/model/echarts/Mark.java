package com.zh.model.echarts;

public class Mark {
	
	private boolean show=true;
	
	

	@Override
	public String toString() {
		return "Mark [show=" + show + "]";
	}

	public Mark() {
		super();
	}

	public Mark(boolean show) {
		super();
		this.show = show;
	}

	public boolean isShow() {
		return show;
	}

	public void setShow(boolean show) {
		this.show = show;
	}
	

}
