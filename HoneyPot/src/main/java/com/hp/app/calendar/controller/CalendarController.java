package com.hp.app.calendar.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class CalendarController {
	@GetMapping("info/calendar/mypage")
	public String viewCalendar() {
		return "mypage/myInfo/calendar/view";
	}
}