package com.zh.model.echarts;

public class Feature {
	
	private Mark mark;
	private DataView dataView;
	private MagicType magicType;
	private Restore restore;
	private SaveAsImage saveAsImage;
	
	
	
	
	
	
	
	
	
	@Override
	public String toString() {
		return "Feature [mark=" + mark + ", dataView=" + dataView
				+ ", magicType=" + magicType + ", restore=" + restore
				+ ", saveAsImage=" + saveAsImage + "]";
	}
	public Feature() {
		super();
	}
	public Feature(Mark mark, DataView dataView, MagicType magicType,
			Restore restore, SaveAsImage saveAsImage) {
		super();
		this.mark = mark;
		this.dataView = dataView;
		this.magicType = magicType;
		this.restore = restore;
		this.saveAsImage = saveAsImage;
	}
	public Mark getMark() {
		return mark;
	}
	public DataView getDataView() {
		return dataView;
	}
	public MagicType getMagicType() {
		return magicType;
	}
	public Restore getRestore() {
		return restore;
	}
	public SaveAsImage getSaveAsImage() {
		return saveAsImage;
	}
	public void setMark(Mark mark) {
		this.mark = mark;
	}
	public void setDataView(DataView dataView) {
		this.dataView = dataView;
	}
	public void setMagicType(MagicType magicType) {
		this.magicType = magicType;
	}
	public void setRestore(Restore restore) {
		this.restore = restore;
	}
	public void setSaveAsImage(SaveAsImage saveAsImage) {
		this.saveAsImage = saveAsImage;
	}
	
	
	
	
	
	

}
