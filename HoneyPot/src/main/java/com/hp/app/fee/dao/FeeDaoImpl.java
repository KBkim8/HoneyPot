package com.hp.app.fee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.hp.app.fee.vo.AdminFeeVo;
import com.hp.app.fee.vo.MemberFeeVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.page.vo.PageVo;


@Repository
public class FeeDaoImpl implements FeeDao{

	@Override
	public List<MemberFeeVo> memberFeeList(SqlSessionTemplate sst,Map<String, String> paramMap) {
		return sst.selectList("fee.selectMemberFeeList", paramMap);
	}

	@Override
	public int totalMemberFee(SqlSessionTemplate sst, Map<String, String> paramMap) {
		return sst.selectOne("fee.memberTotalPrice", paramMap);
	}

	@Override
	public int adminListCnt(SqlSessionTemplate sst, Map<String, String> paramMap) {
		return sst.selectOne("fee.adminFeeCnt", paramMap);
	}

	@Override
	public List<AdminFeeVo> adminList(SqlSessionTemplate sst, PageVo pv, Map<String, String> paramMap) {
		RowBounds rb = new RowBounds(pv.getOffset() , pv.getBoardLimit());
		return sst.selectList("fee.adminFeeList", paramMap, rb);
	}

	@Override
	public int add(SqlSessionTemplate sst, AdminFeeVo vo) {
		return sst.insert("fee.addFee", vo);
	}

	@Override
	public int delete(SqlSessionTemplate sst,String no) {
		return sst.delete("fee.delete",no);
	}

	@Override
	public int currentFee(SqlSessionTemplate sst, Map<String , String> dateVo) {
		return sst.selectOne("fee.currentFee", dateVo);
	}

	@Override
	public int prevFee(SqlSessionTemplate sst, Map<String , String> dateVo) {
		return sst.selectOne("fee.prevFee", dateVo);
	}

	@Override
	public int yearAgoFee(SqlSessionTemplate sst, Map<String , String> dateVo) {
		return sst.selectOne("fee.yearAgoFee",dateVo);
	}

	@Override
	public int edit(SqlSessionTemplate sst, AdminFeeVo vo) {
		return sst.update("fee.AdminEdit", vo);
	}

	@Override
	public List<MemberFeeVo> thisMonth(SqlSessionTemplate sst,Map<String, String> dateVo) {
		return sst.selectList("fee.thisMonth", dateVo);
	}

	@Override
	public List<MemberFeeVo> prevMonth(SqlSessionTemplate sst, Map<String, String> dateVo) {
		return sst.selectList("fee.prevMonth", dateVo);
	}

	@Override
	public List<MemberFeeVo> oneYearFee(SqlSessionTemplate sst, Map<String, String> dateVo) {
		return sst.selectList("fee.categoryLineChart", dateVo);
	}

	@Override
	public int changePayStatus(SqlSessionTemplate sst, String memberName) {
		return sst.update("fee.changePayYN",memberName);
	}

	@Override
	public List<AdminFeeVo> getAllFee(SqlSessionTemplate sst, Map<String, String> monthMap) {
		return sst.selectList("fee.AdminFeeList", monthMap);
	}

	@Override
	public String getCategoryNo(SqlSessionTemplate sst, String categoryName) {
		return sst.selectOne("fee.getCategoryNo", categoryName);
	}

	@Override
	public String getMemberNo(SqlSessionTemplate sst, Map<String, String> dongHo) {
		return sst.selectOne("fee.getMemberNo", dongHo);
	}

	@Override
	public int insertMemberFee(SqlSessionTemplate sst, MemberFeeVo feeVo) {
		return sst.insert("fee.insertMemberFee", feeVo);
	}
	
	@Override
	public List<MemberVo> getAllDong(SqlSessionTemplate sst) {
		return sst.selectList("fee.getAllDong");
	}

	@Override
	public List<MemberVo> getAllHo(SqlSessionTemplate sst) {
		return sst.selectList("fee.getAllHo");
	}



}
