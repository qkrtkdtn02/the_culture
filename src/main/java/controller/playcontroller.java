package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.PlayDAO;
import dao.PlayInfoDAO;
import dao.RepleDAO;
import dao.TodayDAO;
import dao.UserInfoDAO;
import vo.PlayVO;
import vo.UserInfoVO;

@Controller
public class playcontroller {

	PlayDAO playdao;
	PlayInfoDAO playinfodao;
	RepleDAO repledao;
	UserInfoDAO userinfodao;
	TodayDAO todaydao;
	
	@Autowired //자동주입 : spring으로부터 자동생성 가능한 객체를 new없이 알아서 생성해 준다
	HttpServletRequest request;
	
	@Autowired
	public playcontroller(PlayDAO playdao , PlayInfoDAO playinfodao, UserInfoDAO userinfodao, TodayDAO todaydao, RepleDAO repledao) {
		this.playdao = playdao;
		this.playinfodao = playinfodao;
		this.userinfodao = userinfodao;
		this.todaydao = todaydao;
		this.repledao = repledao;
		
	}

	@RequestMapping( value = {"/", "/culture.do"})
	public String selectList(Model model) {
		List<PlayVO> list = playdao.selectList();
		model.addAttribute("rank",list);
		return "/WEB-INF/views/home.jsp";
	}
	
	
	
	
	
	@RequestMapping("/login_form.do")
	public String login_form() {
		System.out.println("여기는옴");
		return "/WEB-INF/views/login.jsp";
	}
	
	@RequestMapping("/login.do")
	public String login(HttpSession session) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserInfoVO vo = userinfodao.selectOne(id);
		if(vo == null) {
			return "redirect:login_form.do";
		}else {
		
		session = request.getSession();
		session.setAttribute("login", vo);
		
		
	
		return "redirect:culture.do";
		}
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session = request.getSession();
		session.invalidate();
		
		return "redirect:culture.do";
	}
	
	@RequestMapping("/info.do")
	public String info(Model model) {
		String genrenm = request.getParameter("genrenm");	
		List<PlayVO> list = playdao.selectgenre(genrenm);
		model.addAttribute("select",list);
		model.addAttribute("genrenm", genrenm);
		return "/WEB-INF/views/info.jsp";
	}
}
