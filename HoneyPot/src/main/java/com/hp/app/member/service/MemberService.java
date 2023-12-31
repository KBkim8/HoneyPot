package com.hp.app.member.service;

import com.hp.app.admin.vo.AdminVo;
import com.hp.app.member.vo.MemberVo;

public interface MemberService {
	MemberVo mlogin(MemberVo vo);

	AdminVo alogin(AdminVo vo);

	int mjoin(MemberVo vo);

	int ajoin(AdminVo vo);

	int medit(MemberVo vo);

	int aedit(AdminVo vo);

	int midDubCheck(String id);

	int aidDubCheck(String id);

	int quit(String no);

	String findId(String email);

	String findPwd(MemberVo vo);

	int emailChangePwd(MemberVo vo);

}
