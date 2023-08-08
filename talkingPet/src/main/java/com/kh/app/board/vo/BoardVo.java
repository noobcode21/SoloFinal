package com.kh.app.board.vo;

import lombok.Data;

@Data
public class BoardVo {
	
	private String boardNo;
	private String memberNo;
	private String boardCategoryNo;
	private String boardTitle;
	private String boardContent;
	private String enrollDate;
	private String modifyDate;
	private String status;
	private String hit;
	private String memberNick;
	
}
