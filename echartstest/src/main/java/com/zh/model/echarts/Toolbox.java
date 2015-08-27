package com.zh.model.echarts;

public class Toolbox {
	
	private boolean show=true;
	
	private Feature feature;
	
	
	

	@Override
	public String toString() {
		return "Toolbox [show=" + show + ", feature=" + feature + "]";
	}

	public Toolbox() {
		super();
	}

	public Toolbox(boolean show, Feature feature) {
		super();
		this.show = show;
		this.feature = feature;
	}

	public boolean isShow() {
		return show;
	}

	public Feature getFeature() {
		return feature;
	}

	public void setShow(boolean show) {
		this.show = show;
	}

	public void setFeature(Feature feature) {
		this.feature = feature;
	}
	
	
	

}
