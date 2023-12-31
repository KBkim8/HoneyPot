package com.hp.app.csc.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hp.app.csc.dao.CSCDao;
import com.hp.app.csc.vo.FAQCategoryVo;
import com.hp.app.csc.vo.FAQVo;
import com.hp.app.csc.vo.QNACategoryVo;
import com.hp.app.csc.vo.QNAVo;
import com.hp.app.csc.vo.ReportCategoryVo;
import com.hp.app.csc.vo.ReportVo;
import com.hp.app.csc.vo.SearchVo;
import com.hp.app.member.vo.MemberVo;
import com.hp.app.page.vo.PageVo;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class CSCServiceImpl implements CSCService {

	private final CSCDao dao;
	private final SqlSessionTemplate sst;
	// 회원

	// FAQ
	// FAQ 카테고리 조회
	@Override
	public List<FAQCategoryVo> getFAQCatList() {
		return dao.getFAQCatList(sst);
	}
	
	// FAQ 모든 글 갯수
	@Override
	public int getFAQCnt(Map<String, String> searchVo) {
		return dao.getFAQCnt(sst, searchVo);
	}

	
	// FAQ 모든 List 조회
	@Override
	public List<FAQVo> getFAQList(PageVo pvo, Map<String, String> searchVo) {
		return dao.getFAQList(sst, pvo, searchVo);
	}

	// FAQ 상세 조회
	@Override
	public FAQVo getFAQByNo(String fno) throws Exception {
		FAQVo vo = dao.getFAQByNo(sst, fno);
		
		int result = dao.increaseHit(sst, fno);
		
		if(result != 1) {
			throw new Exception();
		}
		
		return vo;
	}
	
	// FAQ 검색 List 조회
	@Override
	public List<FAQVo> getFAQListBySearch(FAQVo vo) {
		return null;
	}

	// 문의
	// 문의 카테고리 List 조회
	@Override
	public List<QNACategoryVo> getQNACatList() {
		return dao.getQNACatList(sst);
	}
	
	// 문의 등록
	@Override
	public int insertInquiry(QNAVo vo) {
		return dao.insertInquiry(sst, vo);
	}

	// 문의 List 조회
	@Override
	public List<QNAVo> getMyQNAList(String no) {
		return dao.getMyQNAList(sst, no);
	}

	// 문의 상세 조회
	@Override
	public QNAVo getMyQNAByNo(QNAVo vo) {
		return dao.getMyQNAByNo(sst, vo);
	}

	// 문의 내역 삭제
	@Override
	public int deleteMyInquiry(QNAVo vo) {
		return dao.deleteMyInquiry(sst, vo);
	}

	// 신고
	// 신고 카테고리 List 조회
	@Override
	public List<ReportCategoryVo> getReportCatList() {
		return dao.getReportCatList(sst);
	}
	
	// 신고 대상 회원 List 조회
	@Override
	public List<MemberVo> getMemberList(SearchVo vo) {
		return dao.getMemberList(sst, vo);
	}
	
	// 신고 대상 회원 조회
	@Override
	public MemberVo getMemberByNo(String mno) {
		return dao.getMemberByNo(sst, mno);
	}
	
	// 신고 등록
	@Override
	public int insertReport(ReportVo vo) {
		return dao.insertReport(sst, vo);
	}

	// 신고 List 조회
	@Override
	public List<ReportVo> getMyReportList(String no) {
		return dao.getMyReportList(sst, no);
	}

	// 신고 상세 조회
	@Override
	public ReportVo getMyReportByNo(ReportVo vo) {
		return dao.getMyReportByNo(sst, vo);
	}

	// 신고 삭제
	@Override
	public int deleteMyReport(ReportVo vo) {
		return dao.deleteMyReport(sst, vo);
	}

	//-------------------------------------------------------------------------------------------------------------
	
	// 관리자

	// 문의 List 검색 갯수
	@Override
	public int getQNACnt(Map<String, String> searchMap) {
		return dao.getQNACnt(sst, searchMap);
	}

	// 문의 List 검색 조회
	@Override
	public List<QNAVo> getQNAAllList(Map<String, String> searchMap) {
		return dao.getQNAAllList(sst, searchMap);
	}
	
	// 문의 List 검색 조회(페이징)
	@Override
	public List<QNAVo> getQNAList(PageVo pvo, Map<String, String> searchMap) {
		return dao.getQNAList(sst, pvo, searchMap);
	}

	// 문의내역 상세조회
	@Override
	public QNAVo getQNAByNo(String qno) {
		return dao.getQNAByNo(sst, qno);
	}

	// 문의내역 삭제
	@Override
	public int deleteInquiry(String qno) {
		return dao.deleteInquiry(sst, qno);
	}

	// 문의내역 답변
	@Override
	public QNAVo anwerInuqiry(String qno, String answer) throws Exception {
		
		int result = dao.anwerInuqiry(sst, qno, answer);
		if(result != 1) {
			throw new Exception();
		}
		
		QNAVo vo = dao.getQNAByNo(sst, qno);
		
		return vo;
	}
	
	// 신고
	
	// 신고 List 검색 갯수
	@Override
	public int getReportCnt(Map<String, String> searchMap) {
		return dao.getReportCnt(sst, searchMap);
	}

	// 신고 List 검색 조회
	@Override
	public List<ReportVo> getReportAllList(Map<String, String> searchMap) {
		return dao.getReportAllList(sst, searchMap);
	}
	
	// 신고 List 검색 조회(페이징)
	@Override
	public List<ReportVo> getReportList(PageVo pvo, Map<String, String> searchMap) {
		return dao.getReportList(sst, pvo, searchMap);
	}

	// 신고 내역 상세조회
	@Override
	public ReportVo getReportByNo(String rno) {
		return dao.getReportByNo(sst, rno);
	}

	// 신고 내역 삭제
	@Override
	public int deleteReport(String rno) {
		return dao.deleteReport(sst, rno);
	}
	
	// 신고 내역 처리
	@Override
	public int completeReport(String rno) {
		return dao.completeReport(sst, rno);
	}
	
	// FAQ
	// FAQ 카테고리 조회
	@Override
	public List<FAQCategoryVo> getFAQCatListAdmin() {
		return dao.getFAQCatListAdmin(sst);
	}

	// FAQ 전체 갯수
	@Override
	public int getFAQCntAdmin(Map<String, String> searchVo) {
		return dao.getFAQCntAdmin(sst, searchVo);
	}

	// FAQ LIST 검색 조회(페이징)
	@Override
	public List<FAQVo> getFAQListAdmin(PageVo pvo, Map<String, String> searchVo) {
		return dao.getFAQListAdmin(sst, pvo, searchVo);
	}

	// FAQ 삭제
	@Override
	public int deleteFAQ(String fno) {
		return dao.deleteFAQ(sst, fno);
	}

	// FAQ 수정
	@Override
	public FAQVo editFAQ(Map<String, String> editMap) throws Exception {
		
		int result = dao.editFAQ(sst, editMap);
		
		if(result != 1) {
			throw new Exception("FAQ 수정 에러");
		}
		
		FAQVo vo = dao.getFAQByNo(sst, editMap.get("fno"));
		
		return vo;
	}

	// FAQ 작성
	@Override
	public int writeFAQ(FAQVo vo) {
		return dao.writeFAQ(sst, vo);
	}

	


	
} // class
