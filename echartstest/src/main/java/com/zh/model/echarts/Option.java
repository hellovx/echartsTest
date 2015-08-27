package com.zh.model.echarts;

import java.util.Arrays;

public class Option {

	private Title title;
	private Toolbox toolbox;
	private Tooltip tooltip;
	private Legend legend;
	private Series[] series;
	
	
	
	
	
	
	
	@Override
	public String toString() {
		return "Option [title=" + title + ", toolbox=" + toolbox + ", tooltip="
				+ tooltip + ", legend=" + legend + ", series="
				+ Arrays.toString(series) + "]";
	}
	public Option() {
		super();
	}
	public Option(Title title, Toolbox toolbox, Tooltip tooltip, Legend legend,
			Series[] series) {
		super();
		this.title = title;
		this.toolbox = toolbox;
		this.tooltip = tooltip;
		this.legend = legend;
		this.series = series;
	}
	public Title getTitle() {
		return title;
	}
	public Toolbox getToolbox() {
		return toolbox;
	}
	public Tooltip getTooltip() {
		return tooltip;
	}
	public Legend getLegend() {
		return legend;
	}
	public Series[] getSeries() {
		return series;
	}
	public void setTitle(Title title) {
		this.title = title;
	}
	public void setToolbox(Toolbox toolbox) {
		this.toolbox = toolbox;
	}
	public void setTooltip(Tooltip tooltip) {
		this.tooltip = tooltip;
	}
	public void setLegend(Legend legend) {
		this.legend = legend;
	}
	public void setSeries(Series[] series) {
		this.series = series;
	}
	
	
	
	
	
	
	

}
