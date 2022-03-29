package com.yym.infra.modules.coupang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CoupangController {

	@Autowired
	CoupangServiceImpl service;
	
	@RequestMapping(value = "/coupang/mainPage")
	public String mainPage(Model model) throws Exception {
		
		return "coupang/mainPage";
	}
}
