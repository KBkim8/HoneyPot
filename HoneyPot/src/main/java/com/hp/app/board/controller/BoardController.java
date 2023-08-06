package com.hp.app.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.hp.app.admin.vo.AdminVo;
import com.hp.app.board.service.BoardService;
import com.hp.app.board.vo.BoardCategoryVo;
import com.hp.app.board.vo.BoardImgVo;
import com.hp.app.board.vo.BoardVo;
import com.hp.app.board.vo.LoveVo;
import com.hp.app.board.vo.ReplyVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.page.vo.PageVo;
import com.hp.app.util.file.FileUploader;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {

	private final BoardService service;

	// 자유 게시판 목록 조회
	@GetMapping("board/free")
	public String getFreeList(@RequestParam(defaultValue="1") String p, @RequestParam Map<String, String> searchVo, Model model, HttpSession session) {
		
		try {
			
			searchVo.put("cno", "1");
			
			int listCount = service.countBoard(searchVo);
			int currentPage = Integer.parseInt(p);
			int pageLimit = 5;
			int boardLimit = 8;
			PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
			List<BoardVo> voList = service.getList(pv, searchVo);
			
			model.addAttribute("voList", voList);
			model.addAttribute("pv", pv);
			model.addAttribute("searchVo", searchVo);
			
		}catch (Exception e) {
			e.printStackTrace();
		}

		return "board/free";
	}
	
	// 장터 게시판 목록 조회
	@GetMapping("board/market")
	public String getMarketList(@RequestParam(defaultValue="1") String p, @RequestParam Map<String, String> searchVo, Model model, HttpSession session) {
		
		try {
			
			searchVo.put("cno", "2");

			int listCount = service.countBoard(searchVo);
			int currentPage = Integer.parseInt(p);
			int pageLimit = 5;
			int boardLimit = 8;
			PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
			List<BoardVo> voList = service.getList(pv, searchVo);
			
			model.addAttribute("voList", voList);
			model.addAttribute("pv", pv);
			model.addAttribute("searchVo", searchVo);
			
		}catch (Exception e) {
			e.printStackTrace();
		}

		return "board/market";
	}
	
	// 익명 게시판 목록 조회
	@GetMapping("board/noname")
	public String getNonameList(@RequestParam(defaultValue="1") String p, @RequestParam Map<String, String> searchVo, Model model, HttpSession session) {
		
		try {
			
			searchVo.put("cno", "3");

			int listCount = service.countBoard(searchVo);
			int currentPage = Integer.parseInt(p);
			int pageLimit = 5;
			int boardLimit = 8;
			PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
			List<BoardVo> voList = service.getList(pv, searchVo);
			
			model.addAttribute("voList", voList);
			model.addAttribute("pv", pv);
			model.addAttribute("searchVo", searchVo);
			
		}catch (Exception e) {
			e.printStackTrace();
		}

		return "board/noname";
	}
	
	// 칭찬 게시판 목록 조회
	@GetMapping("board/praise")
	public String getPraiseList(@RequestParam(defaultValue="1") String p, @RequestParam Map<String, String> searchVo, Model model, HttpSession session) {
		
		try {
			
			searchVo.put("cno", "4");

			int listCount = service.countBoard(searchVo);
			int currentPage = Integer.parseInt(p);
			int pageLimit = 5;
			int boardLimit = 8;
			PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
			List<BoardVo> voList = service.getList(pv, searchVo);
			
			model.addAttribute("voList", voList);
			model.addAttribute("pv", pv);
			model.addAttribute("searchVo", searchVo);
			
		}catch (Exception e) {
			e.printStackTrace();
		}

		return "board/praise";
	}

	
	// 게시글 작성 (화면)
	@GetMapping("board/write")
	public String write(Model model) {
		List<BoardCategoryVo> cvo = service.getCategory();
		model.addAttribute("cvo", cvo);
		return "board/write";
	}
	
	// 게시글 작성
	@PostMapping("board/write")
	public String write(HttpSession session, BoardVo vo, String imgList) {
				
		try {
			
//			AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
//			if(loginAdmin == null) {
//				return "redirect:/"
//			}
//			vo.setWriterNo(loginAdmin.getNo());
			
			vo.setWriterNo("2"); // 임시 작성자번호
			int result = service.write(vo);
			if(result != 1) {
				session.setAttribute("alert", "게시글 작성 실패...");
				return "redirect:/board/free";
			}
			
			
			//썸네일 db 저장
			System.out.println(imgList);
			BoardImgVo ivo = new BoardImgVo();
			
			if (imgList != null && !"".equals(imgList)) {
				String[] arr = imgList.split(",");
				ivo.setName(arr[0]);
				int imgResult = service.insertImgToDb(ivo);
				System.out.println("이미지 저장 결과 : " + imgResult);
			}
					
//			for (String s : arr) {
//				System.out.println("배열에 담은 사진 : " + s);
//				ivo.setName(s);
//				service.insertImgToDb(ivo);
//			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("alert", "게시글 작성 성공!");
		
		if ("2".equals( vo.getBoardCno() )) {
			return "redirect:/board/market";
		}else if ("3".equals( vo.getBoardCno() )) {
			return "redirect:/board/noname";
		}else if ("4".equals( vo.getBoardCno() )) {
			return "redirect:/board/praise";
		}else {
			return "redirect:/board/free";
		}
		
	}
	
	
	//서머노트 사진 업로드
    @PostMapping("board/upload")
    @ResponseBody
    public List<String> handleFileUpload(@RequestParam("f") List<MultipartFile> flist, HttpServletRequest req) throws Exception {
    	
    	//이미지 리스트
		String path = req.getServletContext().getRealPath("/resources/board/");
		List<String> imgList =  FileUploader.saveFile(path, flist);
		
		System.out.println("추가한사진 : " + imgList);
		
		//이미지 리스트 폴더에 저장
		for (int i = 0 ; i < imgList.size() ; i++) {
			String filePath = path + imgList.get(i);
			File destinationFile = new File(filePath);
			flist.get(i).transferTo(destinationFile);
		}
		
		return imgList;
    }
    
    
    //게시글 수정(화면)
    @GetMapping("board/edit")
    public String edit(HttpSession session, Model model, String no) {
    	
		List<BoardCategoryVo> cvo = service.getCategory();
		BoardVo vo = service.viewDetail(no);
		model.addAttribute("cvo", cvo);
		model.addAttribute("vo", vo);
		if(no == null || "".equals(no) || "0".equals(no)) {
			session.setAttribute("alert", "잘못된 접근입니다.");
			return "redirect:/board/free";
		}
    	
    	return "board/edit";
    }
    
	//게시글 수정
	@PostMapping("board/edit")
	public String edit(HttpSession session, BoardVo vo) {
		
		try {
			
			vo.setWriterNo("2");
			int result = service.edit(vo);
			if(result != 1) {
				session.setAttribute("alertMsg", "게시글 수정 실패...");
				return "redirect:/board/detail?no=" + vo.getNo();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("alertMsg", "게시글 수정 성공!");
		return "redirect:/board/detail?no=" + vo.getNo();
	}
	
	//게시글 삭제
	@GetMapping("board/delete")
	public String delete(HttpSession session, String no) {
		
		//리턴값 카테고리 위해 vo 생성
		BoardVo vo = service.viewDetail(no);
		
		try {
			
			AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
//			if (loginAdmin == null) {
//				session.setAttribute("alertMsg", "게시글 삭제 실패...");
//				return "redirect:/main/amain";
//			}
			
			//String writerNo = loginAdmin.getNo();
			String writerNo = "2";
			
			Map<String, String> noMap = new HashMap<>();
			noMap.put("writerNo", writerNo);
			noMap.put("no", no);
			
			int result = service.delete(noMap);
			if(result != 1) {
				session.setAttribute("alertMsg", "게시글 삭제 실패...");
				return "redirect:/board/detail?no=" + no;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("alertMsg", "게시글 삭제 성공 !");
		
		if ("2".equals( vo.getBoardCno() )) {
			return "redirect:/board/market";
		}else if ("3".equals( vo.getBoardCno() )) {
			return "redirect:/board/noname";
		}else if ("4".equals( vo.getBoardCno() )) {
			return "redirect:/board/praise";
		}else {
			return "redirect:/board/free";
		}
		
	}
  
	
	// 게시글 상세 조회
	@GetMapping("board/detail")
	public String viewDetail(@RequestParam(defaultValue="1")String no, Model model) {
		
		try {
			BoardVo vo = service.viewDetail(no);
			model.addAttribute("vo", vo);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return "board/detail";
	}
	

	//댓글 작성
	@PostMapping("reply/write")
	@ResponseBody
	public String writeReply(HttpSession session, ReplyVo rvo) {
		
		AdminVo loginMember = (AdminVo) session.getAttribute("loginMember");
		
		//댓글 null 검사
		if (rvo.getContent() == null || rvo.getContent().trim().isEmpty()) {
			return "empty";
		}
		
		int result = service.writeReply(rvo);
		
		if(result <= 0) {
			return "fail";
		}
		
		return "success";
		
	}
	
	//댓글 수정
	@PostMapping("reply/edit")
	@ResponseBody
	public String editReply(HttpSession session, ReplyVo rvo) {
		
		AdminVo loginMember = (AdminVo) session.getAttribute("loginMember");
		
		//댓글 null 검사
		if (rvo.getContent() == null || rvo.getContent().trim().isEmpty()) {
			return "empty";
		}
		
		int result = service.editReply(rvo);
		
		if(result <= 0) {
			return "fail";
		}
		
		return "success";
		
	}
	
	//댓글 삭제
	@PostMapping("reply/delete")
	@ResponseBody
	public String deleteReply(HttpSession session, ReplyVo rvo) {
		
		try {
			
			AdminVo loginMember = (AdminVo) session.getAttribute("loginMember");
			
			int result = service.deleteReply(rvo);
			
			if(result <= 0) {
				return "fail";
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return "success";
		
	}
	
	//댓글 목록 조회
	@GetMapping("reply/list")
	@ResponseBody
	public List<ReplyVo> getReplyList(HttpSession session, String boardNo) throws JsonProcessingException {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		List<ReplyVo> rvoList = service.getReplyList(boardNo);
		
//		if(rvoList == null) {
//			return "fail";
//		}
		
		//자바객체 -> JSON 형태
//		ObjectMapper mapper = new ObjectMapper();
//		String replyList = mapper.writeValueAsString(rvoList);
		
		return rvoList;

	}
	
	//좋아요
	@GetMapping("love")
	@ResponseBody
	public int clickLove(LoveVo lvo) {
		
		//좋아요 여부
		int loveYn = service.checkLoveYn(lvo);
		
		//여부에 따라 좋아요 증감
		if (loveYn == 0 ) {
			service.insertLove(lvo);
		}else if (loveYn == 1 ) {
			service.deleteLove(lvo);
		}
		
		//좋아요 세기
		int loveCnt = service.countLove(lvo);
		
		return loveCnt;
		
	}
	

}