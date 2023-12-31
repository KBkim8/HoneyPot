package com.hp.app.notice.vo;

import lombok.Data;

@Data
public class NoticeVo {
	
	private String no;
	private String noticeCno;
	private String noticeCname;
	private String fullname;
	private String writerNo;
	private String writerName;
	private String title;
	private String content;
	private String enrollDate;
	private String modifyDate;
	private String status;
	private String hit;
	private String importantYn;

}
