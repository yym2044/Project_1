package com.yym.infra.modules.member;

public class MemberVo {
	
	private String ifmmSeq;
	
	private String shIfmmId;
	
	private String shIfscSeq;
	private String searchBar;
	
	private Integer shIfmmGrade;
	
//	private Integer shIfmmConsentNy;		// String 타입으로 하는 경우 다중선택시 오류발생
	
	private Integer shIfmmEmailConsentNy;
	private Integer shIfmmSmsConsentNy;
	private Integer shIfmmPushConsentNy;
//------------
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getShIfmmId() {
		return shIfmmId;
	}
	public void setShIfmmId(String shIfmmId) {
		this.shIfmmId = shIfmmId;
	}
	public String getShIfscSeq() {
		return shIfscSeq;
	}
	public void setShIfscSeq(String shIfscSeq) {
		this.shIfscSeq = shIfscSeq;
	}
	public String getSearchBar() {
		return searchBar;
	}
	public void setSearchBar(String searchBar) {
		this.searchBar = searchBar;
	}
//	public Integer getShIfmmConsentNy() {
//		return shIfmmConsentNy;
//	}
//	public void setShIfmmConsentNy(Integer shIfmmConsentNy) {
//		this.shIfmmConsentNy = shIfmmConsentNy;
//	}
	public Integer getShIfmmEmailConsentNy() {
		return shIfmmEmailConsentNy;
	}
	public void setShIfmmEmailConsentNy(Integer shIfmmEmailConsentNy) {
		this.shIfmmEmailConsentNy = shIfmmEmailConsentNy;
	}
	public Integer getShIfmmSmsConsentNy() {
		return shIfmmSmsConsentNy;
	}
	public void setShIfmmSmsConsentNy(Integer shIfmmSmsConsentNy) {
		this.shIfmmSmsConsentNy = shIfmmSmsConsentNy;
	}
	public Integer getShIfmmPushConsentNy() {
		return shIfmmPushConsentNy;
	}
	public void setShIfmmPushConsentNy(Integer shIfmmPushConsentNy) {
		this.shIfmmPushConsentNy = shIfmmPushConsentNy;
	}
	public Integer getShIfmmGrade() {
		return shIfmmGrade;
	}
	public void setShIfmmGrade(Integer shIfmmGrade) {
		this.shIfmmGrade = shIfmmGrade;
	}
	
}