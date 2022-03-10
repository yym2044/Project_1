package com.yym.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "/code/")			17번 라인 대신 (11번 라인 + 18번 라인)으로도 가능
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
//	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectList();

		model.addAttribute("list", list);

		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm() throws Exception {

		return "code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Model model, Code dto) throws Exception {

		// 입력이 되어야 함
		service.insert(dto);

		return "";
	}

	@RequestMapping(value = "/code/codeGroupView1")
	public String codeGroupView1(Model model, CodeVo vo) throws Exception {

		Code rt = service.selectOne(vo);

		model.addAttribute("rt", rt);

		return "code/codeGroupView1";
	}

	@RequestMapping(value = "/code/codeGroupView2")
	public String codeGroupView2(Model model, CodeVo vo) throws Exception {

		List<Code> list = service.selectList2(vo);

		model.addAttribute("list", list);

		return "code/codeGroupView2";
	}

	@RequestMapping(value = "/code/codeGroupEditForm")
	public String codeGroupEditForm(Model model, CodeVo vo) throws Exception {

		Code rt = service.selectOne(vo);

		model.addAttribute("rt", rt);

		return "code/codeGroupEditForm";
	}

//	@RequestMapping(value = "/code/codeGroupUpdt")		// CodeVo.java에 필드 추가
//	public String codeGroupUpdt(Model model, CodeVo vo) throws Exception {
//
//		// 업데이트 하는 구문
//		service.update(vo);
//		
//		// View1을 다시 뿌려주기 위한 구문
//		Code rt = service.selectOne(vo);
//		model.addAttribute("rt", rt);
//
//		return "/code/codeGroupView1";
//	}

	@RequestMapping(value = "/code/codeGroupUpdt") // SelectOne(Code dto) 새로 생성
	public String codeGroupUpdt(Model model, Code dto) throws Exception {

		// 업데이트 하는 구문
		service.update(dto);

		// View1을 다시 뿌려주기 위한 구문
		Code rt = service.selectOne(dto);
		model.addAttribute("rt", rt);

		return "code/codeGroupView1" ;

	}
	
//	코드
	
	@RequestMapping(value = "/code/codeList")
	public String codeList(Model model) throws Exception {

		List<Code> list = service.selectList_code();

		model.addAttribute("list", list);

		return "code/codeList";
	}

	@RequestMapping(value = "/code/codeForm")
	public String codeForm(Model model) throws Exception {

		//ifcgSeq 정보를 가져오기 위해
		List<Code> list = service.selectList();

		model.addAttribute("list", list);
		
		
		return "code/codeForm";
	}

	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Model model, Code dto) throws Exception {

		// 입력이 되어야 함
		service.insert_code(dto);

		return "";
	}
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(Model model, CodeVo vo) throws Exception {

		Code rt = service.selectOne_code(vo);

		model.addAttribute("rt", rt);

		return "code/codeView";
	}
	
	@RequestMapping(value = "/code/codeEditForm")
	public String codeEditForm(Model model, CodeVo vo) throws Exception {

		Code rt = service.selectOne_code(vo);

		model.addAttribute("rt", rt);

		return "code/codeEditForm";
	}
	
	@RequestMapping(value = "/code/codeUpdt") // SelectOne(Code dto) 새로 생성
	public String codeUpdt(Model model, Code dto) throws Exception {

		// 업데이트 하는 구문
		service.update_code(dto);

//		// View을 다시 뿌려주기 위한 구문
		Code rt = service.selectOne_code(dto);
		model.addAttribute("rt", rt);

		return "/code/codeView" ;

	}
	
	@RequestMapping(value = "/code/codeDele")
	public String codeDele(Model model, CodeVo vo) throws Exception {
		
		// 업데이트 하는 구문
		service.delete_code(vo);
		
//		// List를 다시 뿌려주기 위한 구문
		List<Code> list = service.selectList_code();
		model.addAttribute("list", list);
		
		return "/code/codeList" ;
		
	}
}