package kr.co.sist.mkjg.clinic.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.service.ClinicService;
import kr.co.sist.mkjg.clinic.util.SessionCheck;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;

@Controller
@SessionAttributes({"cId","bln"})
public class ClinicController {
	
	@Autowired
	private ClinicService cs;
	private String url = "";
	private SessionCheck sc = new SessionCheck();
	
	@RequestMapping(value="monitoring_list.do", method=GET)
	public String monitoringList(HttpSession session) {
		url = "clinic/cln_use_management/monitoring/monitoring_list";
		return url; 
	}
	
	@RequestMapping(value="reservation_list.do", method=GET)
	public String reservationList(HttpSession session, Model model,  @RequestParam(defaultValue="1")int currentPage) throws SQLException{
		String bln = (String)session.getAttribute("bln");
		
		RevBlnCurrentPage rbcp = new RevBlnCurrentPage();
		rbcp.setBln(bln);
		rbcp.setCurrentPage(currentPage);
		
		List<RevList> revList = cs.selectRevList(rbcp);
		model.addAttribute("rev_list", revList);
		
		String indexList = cs.revPageIndexList(rbcp);
		model.addAttribute("rev_index_list", indexList);
		
		url = "clinic/cln_use_management/reservation/reservation_list";
		
		return url; 
	}
	
	@RequestMapping(value="use_list.do", method=GET)
	public String useList(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage ) throws SQLException {
		String bln = (String)session.getAttribute("bln");
		
		UseBlnCurrentPage ubcp =  new UseBlnCurrentPage();
		ubcp.setBln(bln);
		ubcp.setCurrentPage(currentPage);
		
		List<UseHistoryList> useHistoryList = cs.selectUseHistoryList(ubcp);
		model.addAttribute("use_history_list", useHistoryList);
		
		String indexList = cs.useHistoryIndexList(ubcp);
		model.addAttribute("use_history_index", indexList);
		
		url = "clinic/cln_use_management/use/use_list";
		return url; 
	}
	
	@RequestMapping(value="user_qna_list.do", method=GET)
	public String userQna() {
		url = "clinic/cln_qna/user/user_qna_list";
		return url; 
	}
	
	@RequestMapping(value="mgr_qna_list.do", method=GET)
	public String mgrQna() {
		url = "clinic/cln_qna/mgr/mgr_qna_list";
		return url; 
	}
	
	@RequestMapping(value="cln_reg.do", method=GET)
	public String clnReg() {
		url = "clinic/cln_company_manage/cln_reg/cln_reg";
		return url; 
	}
	
	@RequestMapping(value="logout.do", method=GET)
	public String clnLogout(SessionStatus ss) {
		ss.setComplete();
		url = "clinic/cln_login/login";
		return url; 
	}

	//인덱스두를 받으면 리턴이 동적으로 되야되고
	//세션이없으면 다 로그인으로 빠짐
	@RequestMapping(value="index.do", method= {POST,GET})
	//public String index(HttpSession session, Model model, String id, String pass, String check, ClinicIdCheck cic) throws SQLException{
	public String index(HttpSession session, Model model, ClinicIdCheck cic) throws SQLException{
		//아이디 또는 패스워드가 null이면 다시 로그인 화면으로 이동시킴
		if(cic.getCId()==null && cic.getPass() == null) {
			url="clinic/cln_login/login";
		}else { // null이 아니면 로직체크해서 메인 페이지로 이동시킴, aprvl이 N, Y인 로직도 추가해야함
			model.addAttribute("cId", cic.getCId()); // 사업자 아이디 세션 할당
			
			String bln = cs.selectBln(cic);
			model.addAttribute("bln", bln); // 사업자 등록번호 세션 할당
			
			String name = cs.selectName(cic);
			model.addAttribute("cName", name); // 사업자 이름 세션 할당
					
			List<NoticeTitle> noticeTitlelist = cs.selectNoticeTitle();
			model.addAttribute("notice_title_list", noticeTitlelist);
			
			List<TodayReg> todayReglist = cs.selectTodayReg(bln);
			model.addAttribute("today_reg_list", todayReglist);
			
			JSONObject weekRegDayCnt = cs.selectWeekRegDayCnt(bln);
			model.addAttribute("week_reg_day_cnt", weekRegDayCnt);
			
			JSONObject weekQGCDayCnt = cs.selectWeekQGCCnt(bln);
			model.addAttribute("week_QGC_Day_Cnt", weekQGCDayCnt);
			
			url = "clinic/cln_main/cln_main_approval_OK";
		}//end else
		
		//세션 체크 ( 로그인 후 세션 여부를 체크해서 화면 이동 )
		if(session.getAttribute("cId")!=null) {
			//세션이 존재하면 메인화면으로 이동시킨다.
			url = "clinic/cln_main/cln_main_approval_OK";
		}else {
			//세션이 없으면 로그인 페이지로 이동시킨다.
			sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		
		return url; 
	}//login
	
	@ResponseBody
	@RequestMapping(value="cIdCheck.do", method=POST)
	public String cIdCheck(String joinCId) throws SQLException{
		
		int cIdCheck = cs.selectCIdCheck(joinCId);
		return java.lang.String.valueOf(cIdCheck);
	}
	
	@RequestMapping(value="join.do", method=GET)
	public String join() {
		url = "clinic/cln_login/cln_join";
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value="joinCheck.do", method=POST)
	public String joinCheck(CeoAddJoin caj, HttpServletRequest hsr) throws SQLException {
//		caj.setCIp(hsr.getRemoteAddr());
//		System.out.println(hsr.getRemoteAddr());
		return java.lang.String.valueOf(cs.insertCeo(caj));
	}
	
	@RequestMapping(value="cln_join_OK.do", method=GET)
	public String joinOK()throws SQLException{
		url = "clinic/cln_login/cln_join_OK";
		return url;
	}
	
	@RequestMapping(value="revAprvl.do",method=POST)
	@ResponseBody
	public String revAprvl(AprvlBseq ab)throws SQLException{
		int cnt = cs.updateRevAprvl(ab);
		
		JSONObject obj=new JSONObject();
		obj.put("data",cnt);
		
		return obj.toJSONString();
	}
	
}//class
