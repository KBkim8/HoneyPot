package com.hp.app.main.dao;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.hp.app.admin.vo.AdminVo;
import com.hp.app.calendar.vo.MemberCalendarVo;
import com.hp.app.calendar.vo.NoticeCalendarVo;
import com.hp.app.fee.vo.AdminFeeVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.notice.vo.NoticeVo;
import com.hp.app.page.vo.PageVo;

@Repository
public class MainDaoImpl implements MainDao {

	@Override
	public AdminVo getCaptain(SqlSessionTemplate sst, String name) {
		return sst.selectOne("main.getCaptain", name);
	}

	@Override
	public int getCaptainLoveCnt(SqlSessionTemplate sst, String no) {
		return sst.selectOne("main.getCaptainLoveCnt", no);
	}

	@Override
	public int getCaptainHateCnt(SqlSessionTemplate sst, String no) {
		return sst.selectOne("main.getCaptainHateCnt", no);
	}

	@Override
	public int voteCaptainLove(SqlSessionTemplate sst, String[] arr) {
		List<String> list = Arrays.asList(arr);
		return sst.update("main.voteCaptainLove", list);
	}

	@Override
	public int getNoticeCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getNoticeCnt");
	}

	@Override
	public List<NoticeVo> getNoticeList(SqlSessionTemplate sst, PageVo pv) {
		RowBounds rb = new RowBounds(pv.getOffset(), pv.getBoardLimit());
		return sst.selectList("main.getNoticeList", null, rb);
	}

	@Override
	public String getMyCaptainLove(SqlSessionTemplate sst, String[] paramArr) {
		List<String> list = Arrays.asList(paramArr);
		return sst.selectOne("main.getMyCaptainLove", list);
	}

	@Override
	public int getPopularCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getPopularCnt");
	}

	@Override
	public List<NoticeVo> getPopularList(SqlSessionTemplate sst, PageVo pv) {
		RowBounds rb = new RowBounds(pv.getOffset(), pv.getBoardLimit());
		return sst.selectList("main.getPopularList", null, rb);
	}

	@Override
	public List<MemberCalendarVo> getMemberCalendarList(SqlSessionTemplate sst, String no) {
		return sst.selectList("main.getMemberCalendarList", no);
	}

	@Override
	public List<MemberVo> getMemberPointList(SqlSessionTemplate sst) {
		return sst.selectList("main.getMemberPointList");
	}

	@Override
	public List<MemberVo> getDongPointList(SqlSessionTemplate sst) {
		return sst.selectList("main.getDongPointList");
	}

	@Override
	public List<NoticeCalendarVo> getNoticeCalendarList(SqlSessionTemplate sst) {
		return sst.selectList("main.getNoticeCalendarList");
	}

	@Override
	public int getReportCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getReportCnt");
	}

	@Override
	public int getQnaCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getQnaCnt");
	}

	@Override
	public int getNormalMemberCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getNormalMemberCnt");
	}

	@Override
	public int getWaitMemberCnt(SqlSessionTemplate sst) {
		return sst.selectOne("main.getWaitMemberCnt");
	}

	@Override
	public List<AdminFeeVo> getAdminFeeList(SqlSessionTemplate sst) {
		return sst.selectList("main.getAdminFeeList");
	}

	@Override
	public int getTotalFee(SqlSessionTemplate sst) {
		return sst.selectOne("main.getTotalFee");
	}

	@Override
	public int voteCaptainLoveInsert(SqlSessionTemplate sst, String[] arr) {
		List<String> list = Arrays.asList(arr);
		return sst.insert("main.voteCaptainLoveInsert", list);
	}
}
