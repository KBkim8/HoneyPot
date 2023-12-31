package com.hp.app.fee.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hp.app.fee.service.FeeService;
import com.hp.app.fee.vo.MemberFeeVo;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PayController {
	
	private IamportClient api;
	@Autowired
	private FeeService service;
	
	public PayController() {
		// REST API 키와 REST API secret 를 아래처럼 순서대로 입력
		this.api = new IamportClient("2074117130366302","sUv8n9LtloQE5CcekMpYecbdHUTkWL02X5A5Jq8j9XSPSr1vvwN2i0HTvbDAicJ0ZUxx9efwFXCvAp3M");
	}
		
	@ResponseBody
	@RequestMapping(value="/fee/member/payment/{imp_uid}", method = RequestMethod.POST)
	public IamportResponse<Payment> paymentByImpUid(
			Model model
			, Locale locale
			, HttpSession session
			, @PathVariable(value= "imp_uid") String imp_uid
			, @RequestBody MemberFeeVo paymentInfo) throws IamportResponseException, IOException
	{
		String memberName = paymentInfo.getMemberNo();
		log.info(memberName);
		int result = service.changePayStatus(memberName);

		return api.paymentByImpUid(imp_uid);
	}

}
