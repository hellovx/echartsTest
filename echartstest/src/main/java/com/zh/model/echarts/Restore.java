package com.zh.model.echarts;

public class Restore {
	
	private boolean show= true;

	
	@Override
	public String toString() {
		return "Restore [show=" + show + "]";
	}

	
	
	public Restore() {
		super();
	}

	public Restore(boolean show) {
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
