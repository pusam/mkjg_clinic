package kr.co.sist.mkjg.clinic.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.clinic.dao.ClinicDAO;
import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.domain.WeekQGCDayCnt;
import kr.co.sist.mkjg.clinic.domain.WeekRegDayCnt;
import kr.co.sist.mkjg.clinic.util.Paging;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.RevPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseHistory;

@Component
public class ClinicService {
	
	@Autowired
	private ClinicDAO c_dao;
	
	//∆‰¿Ã¬° ΩÃ±€≈Ê¿∏∑Œ ∏∏µÈæÓº≠ ±Ú∞Ì
	private Paging p = Paging.getInstance();
	
	public List<NoticeTitle> selectNoticeTitle() throws SQLException{
		List<NoticeTitle> list = null;
		
		list = c_dao.selectNoticeTitle();
		
		return list;
	}//selectNoticeTitle
	
	public List<TodayReg> selectTodayReg(String bln) throws SQLException{
		List<TodayReg> list = null;
		
		list = c_dao.selectTodayReg(bln);
		
		return list;
	}//selectNoticeTitle
	
	public String selectBln(ClinicIdCheck cic) throws SQLException{
		String bln = null;
		if("ceo".equals(cic.getCheck())) {
			bln = c_dao.selectCeoBln(cic.getCId());
		}//end if
		
		if("emp".equals(cic.getCheck())) {
			bln = c_dao.selectEmpBln(cic.getCId());
		}//end if
		
		return bln;
	}//selectBln
	
	public String selectName(ClinicIdCheck cic) throws SQLException{
		String bln = null;
		if("ceo".equals(cic.getCheck())) {
			bln = c_dao.selectCeoName(cic.getCId());
		}//end if
		
		if("emp".equals(cic.getCheck())) {
			bln = c_dao.selectEmpName(cic.getCId());
		}//end if
		
		return bln;
	}//selectBln
	
	public JSONObject selectWeekRegDayCnt(String bln) throws SQLException{
		List<WeekRegDayCnt> list = null;
		
		list = c_dao.selectWeekRegDayCnt(bln);
		
		JSONObject json = new JSONObject();
		
		int temp=0;
		for(int i =1; i<=7; i++) {
			json.put(i, 0);
		}
		for(WeekRegDayCnt wrdc : list) {
			switch(wrdc.getDay()) {
			case "ø˘" :temp=1; 
			break;
			case "»≠" :temp=2; 
			break;
			case "ºˆ" :temp=3; 
			break;
			case "∏Ò" :temp=4; 
			break;
			case "±›" :temp=5; 
			break;
			case "≈‰" :temp=6; 
			break;
			case "¿œ" :temp=7; 
			break;
			}
			
			
			
			json.put( temp, wrdc.getCnt());
		}
		return json;
	}//selectWeekRegDayCnt
	
	public int selectCIdCheck(String joinCId) throws SQLException{
		int cIdCheck = 0;
		if(c_dao.selectCidCheck(joinCId)==1) {
			cIdCheck=1;
		}//end if
		
		return cIdCheck;
	}//selectCIdCheck
	
	public int insertCeo(CeoAddJoin caj)throws SQLException{
		int cnt = 0;
		
		cnt = c_dao.insertCeo(caj);
		
		return cnt; 
	}
	
	public List<RevList> selectRevList(RevBlnCurrentPage rbcp) throws SQLException{
		int startNum = p.startNum(rbcp.getCurrentPage());
		int endNum = p.endNum(startNum);

		RevPage rp = new RevPage();
		rp.setBln(rbcp.getBln());
		rp.setStartNum(startNum);
		rp.setEndNum(endNum);
		
		List<RevList> list = c_dao.selectRevList(rp);
		return list;
	}
	
	public String revPageIndexList(RevBlnCurrentPage rbcp) throws SQLException {
		int totalCnt = c_dao.selectRevTotalCnt(rbcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(rbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, rbcp.getCurrentPage(), "reservation_list.do");
	}
	
	public JSONObject selectWeekQGCCnt(String bln) throws SQLException{
		List<WeekQGCDayCnt> list = c_dao.selectWeekQGCCnt(bln);
		
		JSONObject json = new JSONObject();
		
		for(int i=1; i<8; i++) {
		json.put(i, 0);
		}
		
		for(WeekQGCDayCnt wqdc : list) {
			json.put(wqdc.getDay(), wqdc.getCnt());
		}
		
		return json;
	}
	
	public int updateRevAprvl(AprvlBseq ab) throws SQLException{
		String flag=ab.getAprvl().equals("N")?"Y":"N";
		
		ab.setAprvl(flag);
		
		int cnt = c_dao.updateBookAprvl(ab);
		
		return cnt;
	}
	
	public List<UseHistoryList> selectUseHistoryList(UseBlnCurrentPage ubcp) throws SQLException{
		int startNum = p.startNum(ubcp.getCurrentPage());
		int endNum = p.endNum(startNum);

		UseHistory uh = new UseHistory();
		uh.setBln(ubcp.getBln());
		uh.setStartNum(startNum);
		uh.setEndNum(endNum);
		
		List<UseHistoryList> list = c_dao.selectUseHistoryList(uh);
		return list;
	}
	
	public String useHistoryIndexList(UseBlnCurrentPage ubcp) throws SQLException {
		int totalCnt = c_dao.selectUseHistoryCnt(ubcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(ubcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, ubcp.getCurrentPage(), "use_list.do");
	}
	
}
