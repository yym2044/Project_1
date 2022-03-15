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
	
	private Integer checkbox1;
	
	
//	정렬
	private String sort;
	private String orderby;
	
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	private Integer shRows = 5;
	
//------------
	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
	}
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
	public Integer getCheckbox1() {
		return checkbox1;
	}
	public void setCheckbox1(Integer checkbox1) {
		this.checkbox1 = checkbox1;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}
	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}
	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}
	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	public Integer getShRows() {
		return shRows;
	}
	public void setShRows(Integer shRows) {
		this.shRows = shRows;
	}
	
}