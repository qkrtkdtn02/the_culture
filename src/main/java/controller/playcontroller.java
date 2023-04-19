package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.PlayDAO;
import dao.PlayInfoDAO;
import dao.RepleDAO;
import dao.TodayDAO;
import dao.UserInfoDAO;

@Controller
public class playcontroller {

	PlayDAO playdao;
	PlayInfoDAO playinfodao;
	RepleDAO repledao;
	UserInfoDAO userinfodao;
	TodayDAO todaydao;

	@Autowired
	public playcontroller(PlayDAO playdao , PlayInfoDAO playinfodao, UserInfoDAO userinfodao, TodayDAO todaydao, RepleDAO repledao) {
		this.playdao = playdao;
		this.playinfodao = playinfodao;
		this.userinfodao = userinfodao;
		this.todaydao = todaydao;
		this.repledao = repledao;
		
		System.out.println( playdao );
		System.out.println(playinfodao);
		System.out.println(userinfodao);
		System.out.println(repledao);
		System.out.println(todaydao);
	}

	@RequestMapping( value = {"/", "/culture.do"})
	public String selectList() {
		System.out.println("여기는옴");
		return "/WEB-INF/views/home.jsp";
	}
	
	@RequestMapping("/login.do")
	public String login() {
		System.out.println("여기는옴");
		return "/WEB-INF/views/login.jsp";
	}

}
