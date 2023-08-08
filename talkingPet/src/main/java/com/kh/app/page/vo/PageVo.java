package com.kh.app.page.vo;

import lombok.Data;

@Data
public class PageVo {

	private int listCount;
	private int currentPage;
	private int pageLimit;
	private int boardLimit;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int beginRow;
	private int lastRow;

	public PageVo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;

		maxPage = (int) Math.ceil((double) listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		beginRow = boardLimit * (currentPage - 1) + 1;
		lastRow = beginRow + boardLimit - 1;
		
	}
	
}
