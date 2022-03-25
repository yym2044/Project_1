package com.yym.infra.modules.member;

public class Member {
	
	//검색어
	private Integer ifscSeq;
	private String ifscName;
	//멤버
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPwd;
	private String ifmmName;
	private String ifmmGenderCd;
	private String ifmmGenderName;
	private String ifmmDob;
	private String ifmmFavoriteColor;
	private Integer ifmmGradeCd;
	private String ifmmGrade;
	private Integer ifmmDelNy;
	private String ifmmRegDate;
	private Integer ifmmStatusCd;
	private String ifmmStatus;
	private Integer ifmmEmailConsentNy;
	private String ifmmEmailConsentNyText;
	private Integer ifmmSmsConsentNy;
	private String ifmmSmsConsentNyText;
	private Integer ifmmPushConsentNy;
	private String ifmmPushConsentNyText;
	//멤버_이메일
	private String ifmeEmailFull;
	private String ifmeEmailAccount;
	private String ifmeEmailDomain;
	private String ifmeEmailDomainCd;
	//멤버_폰
	private String ifmpTelecomCd;
	private String ifmpTelecomName;
	private String ifmpNumberMobile;
	private String ifmpNumberHome;
	//멤버_어드레스
	private String ifmaZipCode;
	private String ifmaAddress1;
	private String ifmaAddress2;
	private String ifmaAddressReferences;
	//멤버_노트
	private String ifntSeq;
	private String ifntContent;
	private String ifntWriter;
	private String noteDateTime;
	
	//국적
	private String ifnaSeq;
	private String ifnaName;
	private String ifnaCode2Char;
	private String ifnaCode3Char;
	//--------------------------------------------------------------
	public Integer getIfscSeq() {
		return ifscSeq;
	}
	public void setIfscSeq(Integer ifscSeq) {
		this.ifscSeq = ifscSeq;
	}
	public String getIfscName() {
		return ifscName;
	}
	public void setIfscName(String ifscName) {
		this.ifscName = ifscName;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmPwd() {
		return ifmmPwd;
	}
	public void setIfmmPwd(String ifmmPwd) {
		this.ifmmPwd = ifmmPwd;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(String ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	public String getIfmmGenderName() {
		return ifmmGenderName;
	}
	public void setIfmmGenderName(String ifmmGenderName) {
		this.ifmmGenderName = ifmmGenderName;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmFavoriteColor() {
		return ifmmFavoriteColor;
	}
	public void setIfmmFavoriteColor(String ifmmFavoriteColor) {
		this.ifmmFavoriteColor = ifmmFavoriteColor;
	}
	public Integer getIfmmGradeCd() {
		return ifmmGradeCd;
	}
	public void setIfmmGradeCd(Integer ifmmGradeCd) {
		this.ifmmGradeCd = ifmmGradeCd;
	}
	public String getIfmmGrade() {
		return ifmmGrade;
	}
	public void setIfmmGrade(String ifmmGrade) {
		this.ifmmGrade = ifmmGrade;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmRegDate() {
		return ifmmRegDate;
	}
	public void setIfmmRegDate(String ifmmRegDate) {
		this.ifmmRegDate = ifmmRegDate;
	}
	public Integer getIfmmStatusCd() {
		return ifmmStatusCd;
	}
	public void setIfmmStatusCd(Integer ifmmStatusCd) {
		this.ifmmStatusCd = ifmmStatusCd;
	}
	public String getIfmmStatus() {
		return ifmmStatus;
	}
	public void setIfmmStatus(String ifmmStatus) {
		this.ifmmStatus = ifmmStatus;
	}
	public Integer getIfmmEmailConsentNy() {
		return ifmmEmailConsentNy;
	}
	public void setIfmmEmailConsentNy(Integer ifmmEmailConsentNy) {
		this.ifmmEmailConsentNy = ifmmEmailConsentNy;
	}
	public String getIfmmEmailConsentNyText() {
		return ifmmEmailConsentNyText;
	}
	public void setIfmmEmailConsentNyText(String ifmmEmailConsentNyText) {
		this.ifmmEmailConsentNyText = ifmmEmailConsentNyText;
	}
	public Integer getIfmmSmsConsentNy() {
		return ifmmSmsConsentNy;
	}
	public void setIfmmSmsConsentNy(Integer ifmmSmsConsentNy) {
		this.ifmmSmsConsentNy = ifmmSmsConsentNy;
	}
	public String getIfmmSmsConsentNyText() {
		return ifmmSmsConsentNyText;
	}
	public void setIfmmSmsConsentNyText(String ifmmSmsConsentNyText) {
		this.ifmmSmsConsentNyText = ifmmSmsConsentNyText;
	}
	public Integer getIfmmPushConsentNy() {
		return ifmmPushConsentNy;
	}
	public void setIfmmPushConsentNy(Integer ifmmPushConsentNy) {
		this.ifmmPushConsentNy = ifmmPushConsentNy;
	}
	public String getIfmmPushConsentNyText() {
		return ifmmPushConsentNyText;
	}
	public void setIfmmPushConsentNyText(String ifmmPushConsentNyText) {
		this.ifmmPushConsentNyText = ifmmPushConsentNyText;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}
	public String getIfmeEmailAccount() {
		return ifmeEmailAccount;
	}
	public void setIfmeEmailAccount(String ifmeEmailAccount) {
		this.ifmeEmailAccount = ifmeEmailAccount;
	}
	public String getIfmeEmailDomain() {
		return ifmeEmailDomain;
	}
	public void setIfmeEmailDomain(String ifmeEmailDomain) {
		this.ifmeEmailDomain = ifmeEmailDomain;
	}
	public String getIfmeEmailDomainCd() {
		return ifmeEmailDomainCd;
	}
	public void setIfmeEmailDomainCd(String ifmeEmailDomainCd) {
		this.ifmeEmailDomainCd = ifmeEmailDomainCd;
	}
	public String getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(String ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	public String getIfmpTelecomName() {
		return ifmpTelecomName;
	}
	public void setIfmpTelecomName(String ifmpTelecomName) {
		this.ifmpTelecomName = ifmpTelecomName;
	}
	public String getIfmpNumberMobile() {
		return ifmpNumberMobile;
	}
	public void setIfmpNumberMobile(String ifmpNumberMobile) {
		this.ifmpNumberMobile = ifmpNumberMobile;
	}
	public String getIfmpNumberHome() {
		return ifmpNumberHome;
	}
	public void setIfmpNumberHome(String ifmpNumberHome) {
		this.ifmpNumberHome = ifmpNumberHome;
	}
	public String getIfmaZipCode() {
		return ifmaZipCode;
	}
	public void setIfmaZipCode(String ifmaZipCode) {
		this.ifmaZipCode = ifmaZipCode;
	}
	public String getIfmaAddress1() {
		return ifmaAddress1;
	}
	public void setIfmaAddress1(String ifmaAddress1) {
		this.ifmaAddress1 = ifmaAddress1;
	}
	public String getIfmaAddress2() {
		return ifmaAddress2;
	}
	public void setIfmaAddress2(String ifmaAddress2) {
		this.ifmaAddress2 = ifmaAddress2;
	}
	public String getIfmaAddressReferences() {
		return ifmaAddressReferences;
	}
	public void setIfmaAddressReferences(String ifmaAddressReferences) {
		this.ifmaAddressReferences = ifmaAddressReferences;
	}
	public String getIfnaSeq() {
		return ifnaSeq;
	}
	public void setIfnaSeq(String ifnaSeq) {
		this.ifnaSeq = ifnaSeq;
	}
	public String getIfnaName() {
		return ifnaName;
	}
	public void setIfnaName(String ifnaName) {
		this.ifnaName = ifnaName;
	}
	public String getIfnaCode2Char() {
		return ifnaCode2Char;
	}
	public void setIfnaCode2Char(String ifnaCode2Char) {
		this.ifnaCode2Char = ifnaCode2Char;
	}
	public String getIfnaCode3Char() {
		return ifnaCode3Char;
	}
	public void setIfnaCode3Char(String ifnaCode3Char) {
		this.ifnaCode3Char = ifnaCode3Char;
	}
	public String getIfntSeq() {
		return ifntSeq;
	}
	public void setIfntSeq(String ifntSeq) {
		this.ifntSeq = ifntSeq;
	}
	public String getIfntContent() {
		return ifntContent;
	}
	public void setIfntContent(String ifntContent) {
		this.ifntContent = ifntContent;
	}
	public String getIfntWriter() {
		return ifntWriter;
	}
	public void setIfntWriter(String ifntWriter) {
		this.ifntWriter = ifntWriter;
	}
	public String getNoteDateTime() {
		return noteDateTime;
	}
	public void setNoteDateTime(String noteDateTime) {
		this.noteDateTime = noteDateTime;
	}
	
}