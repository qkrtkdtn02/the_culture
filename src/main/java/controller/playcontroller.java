package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.PlayDAO;

@Controller
public class playcontroller {

	PlayDAO playdao;

	@Autowired
	public playcontroller(PlayDAO playdao) {
		this.playdao = playdao;
	}

	@RequestMapping("/")
	public String selectList() {

		return "/WEB-INF/views/home.jsp";
	}

}
