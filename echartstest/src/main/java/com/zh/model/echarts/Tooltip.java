package com.zh.model.echarts;

public class Tooltip {
	
	private String trigger= "axis";
	
	
	
	
	

	@Override
	public String toString() {
		return "Tooltip [trigger=" + trigger + "]";
	}

	public Tooltip() {
		super();
	}

	public Tooltip(String trigger) {
		super();
		this.trigger = trigger;
	}

	public String getTrigger() {
		return trigger;
	}

	public void setTrigger(String trigger) {
		this.trigger = trigger;
	}
	
	

}
