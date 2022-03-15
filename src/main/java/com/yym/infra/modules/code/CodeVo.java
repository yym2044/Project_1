package com.yym.infra.modules.code;

public class CodeVo {
	
//	VO
	private String ifcgSeq;
	private String ifcdSeq;
	
	private String shIfcgName;
	private String shIfcgDelNy;
	
	private String shIfcgSeq;
	
	private String shOption;
	private String shValue;
	
//	paging
	private Integer rowNumToShow;
	private Integer startRnumForMysql;

	//------------
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getShIfcgName() {
		return shIfcgName;
	}
	public void setShIfcgName(String shIfcgName) {
		this.shIfcgName = shIfcgName;
	}
	public String getShIfcgDelNy() {
		return shIfcgDelNy;
	}
	public void setShIfcgDelNy(String shIfcgDelNy) {
		this.shIfcgDelNy = shIfcgDelNy;
	}
	public String getShIfcgSeq() {
		return shIfcgSeq;
	}
	public void setShIfcgSeq(String shIfcgSeq) {
		this.shIfcgSeq = shIfcgSeq;
	}
	public String getShOption() {
		return shOption;
	}
	public void setShOption(String shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(Integer rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public Integer getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(Integer startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
}