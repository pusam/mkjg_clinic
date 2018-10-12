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

	//�ε����θ� ������ ������ �������� �Ǿߵǰ�
	//�����̾����� �� �α������� ����
	@RequestMapping(value="index.do", method= {POST,GET})
	//public String index(HttpSession session, Model model, String id, String pass, String check, ClinicIdCheck cic) throws SQLException{
	public String index(HttpSession session, Model model, ClinicIdCheck cic) throws SQLException{
		//���̵� �Ǵ� �н����尡 null�̸� �ٽ� �α��� ȭ������ �̵���Ŵ
		if(cic.getCId()==null && cic.getPass() == null) {
			url="clinic/cln_login/login";
		}else { // null�� �ƴϸ� ����üũ�ؼ� ���� �������� �̵���Ŵ, aprvl�� N, Y�� ������ �߰��ؾ���
			model.addAttribute("cId", cic.getCId()); // ����� ���̵� ���� �Ҵ�
			
			String bln = cs.selectBln(cic);
			model.addAttribute("bln", bln); // ����� ��Ϲ�ȣ ���� �Ҵ�
			
			String name = cs.selectName(cic);
			model.addAttribute("cName", name); // ����� �̸� ���� �Ҵ�
					
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
		
		//���� üũ ( �α��� �� ���� ���θ� üũ�ؼ� ȭ�� �̵� )
		if(session.getAttribute("cId")!=null) {
			//������ �����ϸ� ����ȭ������ �̵���Ų��.
			url = "clinic/cln_main/cln_main_approval_OK";
		}else {
			//������ ������ �α��� �������� �̵���Ų��.
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
