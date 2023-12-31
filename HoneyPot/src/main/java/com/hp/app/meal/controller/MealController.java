package com.hp.app.meal.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hp.app.admin.vo.AdminVo;
import com.hp.app.meal.service.MealService;
import com.hp.app.meal.vo.MealVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.page.vo.PageVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("meal")
@RequiredArgsConstructor
@Slf4j
public class MealController<V> {
	private final MealService ms;

	@GetMapping("mmeal")
	public String mmain(HttpSession session, Model model, @RequestParam(defaultValue = "1") int p) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if (loginMember == null) {
			return "redirect:/main/mmain";
		}

		int listCount = ms.getMealCnt();
		int currentPage = p;
		int pageLimit = 5;
		int boardLimit = 5;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		List<MealVo> mealList = ms.getMealList(pv);
		List<MealVo> mealListTotal = ms.getMealList();
		MealVo todayMeal = ms.getTodayMeal();
		
		model.addAttribute("mealList", mealList);
		model.addAttribute("mealListTotal", mealListTotal);
		model.addAttribute("todayMeal", todayMeal);
		model.addAttribute("pv", pv);
		return "meal/mmeal";
	}
	
	@GetMapping("ameal")
	public String amain(HttpSession session, Model model, @RequestParam(defaultValue = "1") int p) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		if (loginAdmin == null) {
			return "redirect:/main/amain";
		}
		
		int listCount = ms.getMealCnt();
		int currentPage = p;
		int pageLimit = 5;
		int boardLimit = 5;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		List<MealVo> mealList = ms.getMealList(pv);
		List<MealVo> mealListTotal = ms.getMealList();
		List<MealVo> dietList = ms.getDietList();
		MealVo todayMeal = ms.getTodayMeal();
		
		model.addAttribute("mealList", mealList);
		model.addAttribute("mealListTotal", mealListTotal);
		model.addAttribute("dietList", dietList);
		model.addAttribute("todayMeal", todayMeal);
		model.addAttribute("pv", pv);
		return "meal/ameal";
	}

	@GetMapping("mypage")
	public String mypage(HttpSession session, Model model, @RequestParam(defaultValue = "1") int p) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if (loginMember == null) {
			return "redirect:/main/mmain";
		}
		
		int listCount = ms.getMealCnt();
		int currentPage = p;
		int pageLimit = 5;
		int boardLimit = 5;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		List<MealVo> applyList = ms.getApplyList(loginMember.getNo(), pv);
		model.addAttribute("applyList", applyList);
		model.addAttribute("pv", pv);
		return "meal/mypage";
	}
	
	@GetMapping("breakFastApply")
	@ResponseBody
	public String applyBreakFast(@RequestParam Map<String, String> paramMap) {
		int result = ms.applyBreakFast(paramMap);
		log.info("result : {}", result);
		if (result == 0) {
			return "error";
		}
		return "success";
	}
	
	@GetMapping("editMeal")
	@ResponseBody
	public String editMeal(@RequestParam Map<String, String> paramMap) {
		int result = ms.editMeal(paramMap);
		log.info("result : {}", result);
		if (result == 0) {
			return "error";
		}
		return "success";
	}
	
	@GetMapping("plusMeal")
	@ResponseBody
	public String plusMeal(@RequestParam Map<String, String> paramMap) {
		int result = ms.plusMeal(paramMap);
		log.info("result : {}", result);
		if (result == 0) {
			return "error";
		}
		return "success";
	}
	
	@GetMapping("cancelApply")
	@ResponseBody
	public String cancelApply(String no) {
		int result = ms.cancelApply(no);
		log.info("result : {}", result);
		if (result == 0) {
			return "error";
		}
		return "success";
	}
	
	@GetMapping("selectMeal")
	@ResponseBody
	public MealVo selectMeal(String no) {
		MealVo selectMeal = ms.selectMeal(no);
		return selectMeal;
	}
}
