package com.hp.app.myboard.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hp.app.board.vo.BoardVo;
import com.hp.app.board.vo.ReplyVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.myboard.service.MyboardService;
import com.hp.app.page.vo.PageVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MyBoardController {
	
	private final MyboardService service;
	
	//내 게시글
	@GetMapping("mypage/act/board")
	public String getMyPost(@RequestParam(defaultValue="1") String p, Model model, HttpSession session) {
		
		//회원 아니면 리턴
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if(loginMember == null) {
			session.setAttribute("alertMsg", "회원으로 로그인 해주세요.");
			return "redirect:/board/free";
		}

		String writerNo = loginMember.getNo();
		
		int listCount = service.countMyPost(writerNo);
		int currentPage = Integer.parseInt(p);
		int pageLimit = 5;
		int boardLimit = 8;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
	
		List<BoardVo> voList = service.getMyPost(pv, writerNo);
		
		model.addAttribute("voList", voList);
		model.addAttribute("pv", pv);
			
		return "mypage/act/board";
	}
	
	//내 댓글
	@GetMapping("mypage/act/reply")
	public String getMyReply(@RequestParam(defaultValue="1") String p, Model model, HttpSession session) {
		
		//회원 아니면 리턴
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if(loginMember == null) {
			session.setAttribute("alertMsg", "회원으로 로그인 해주세요.");
			return "redirect:/board/free";
		}

		String writerNo = loginMember.getNo();
		
		int listCount = service.countMyReply(writerNo);
		int currentPage = Integer.parseInt(p);
		int pageLimit = 5;
		int boardLimit = 8;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
	
		List<ReplyVo> voList = service.getMyReply(pv, writerNo);
		
		model.addAttribute("voList", voList);
		model.addAttribute("pv", pv);

		return "mypage/act/reply";
	}
	
	//좋아요한 글
	@GetMapping("mypage/act/like")
	public String getMyLove(@RequestParam(defaultValue="1") String p, Model model, HttpSession session) {
		
		
		//회원 아니면 리턴
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if(loginMember == null) {
			session.setAttribute("alertMsg", "회원으로 로그인 해주세요.");
			return "redirect:/board/free";
		}

		String memberNo = loginMember.getNo();
			
		int listCount = service.countMyLove(memberNo);
		int currentPage = Integer.parseInt(p);
		int pageLimit = 5;
		int boardLimit = 8;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
	
		List<BoardVo> voList = service.getMyLove(pv, memberNo);
		
		model.addAttribute("voList", voList);
		model.addAttribute("pv", pv);

		return "mypage/act/like";
	}
	

}
