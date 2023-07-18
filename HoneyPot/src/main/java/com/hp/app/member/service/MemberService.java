package com.hp.app.member.service;

import com.hp.app.admin.vo.AdminVo;
import com.hp.app.member.vo.MemberVo;

public interface MemberService {
	MemberVo mlogin(MemberVo vo);
	AdminVo alogin(AdminVo vo);
	int mjoin(MemberVo vo);
	int ajoin(AdminVo vo);
}