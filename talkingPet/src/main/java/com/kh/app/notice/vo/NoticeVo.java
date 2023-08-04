package com.kh.app.notice.vo;

import lombok.Data;

@Data
public class NoticeVo {
	
	private String noticeNo;
	private String adminNo;
	private String noticeTitle;
	private String noticeContent;
	private String enrollDate;
	private String modifyDate;
	private String status;
	private String hit;
	
}
