package com.yym.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {

		int count = service.selectListCount(vo);
		
		String count2 = String.valueOf(count);
		
		vo.setParamsPaging(count);
		
		if(count != 0) {
			
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
			
//		model.addAttribute("list", service.selectList());  위 두줄 대신 이렇게도 가능
			
			
			model.addAttribute("count2", count2);
			
		}
		
		List<Member> listSearch = service.selectListSearch();
		model.addAttribute("listSearch", listSearch);
		
		return "member/memberList";
	}
	
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(Model model, MemberVo vo) throws Exception {


		Member rt = service.selectOne(vo);
				
		model.addAttribute("rt", rt);
		

		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model, MemberVo vo) throws Exception {
		
		//멤버수 가져오기 -> ${fn:length(list2)+1}로 다음 ifmmSeq값을 얻음
//		List<Member> list2 = service.selectList(vo);
//		model.addAttribute("list2", list2);
		
		//멤버수 가져오기 (selectListAllMember) -> ${fn:length(list2)+1}로 다음 ifmmSeq값을 얻음
//		List<Member> list2 = service.selectListAllMember();
//		model.addAttribute("list2", list2);
		
		//코드값 가져오기
		List<Member> list = service.selectListCode();
		model.addAttribute("list", list);
		
		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {

		// 입력을 작동시킨다.
		service.insertMember(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberEditForm")
	public String memberEditForm(Model model, MemberVo vo) throws Exception {
		
		Member rt = service.selectOne(vo);
		model.addAttribute("rt", rt);
		
		//코드값 가져오기
		List<Member> list = service.selectListCode();
		model.addAttribute("list", list);
		
		return "member/memberEditForm";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Model model, Member dto) throws Exception {

		// 업데이트 하는 구문
		service.updateMember(dto);

		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq();

	}
	
//	@RequestMapping(value = "/member/memberDele")
//	public String memberDele(Model model, MemberVo vo) throws Exception {
//		
//		// 업데이트 하는 구문
//		service.deleteMemberEmail(vo);
//		service.deleteMemberAddress(vo);
//		service.deleteMemberPhone(vo);
//		service.deleteMember(vo);
//		
//		return "redirect:/member/memberList";
//		
//	}
	
	@RequestMapping(value = "/member/updateDelNy")
	public String updateDelNy(Model model, MemberVo vo) throws Exception {

		// 업데이트 하는 구문
		service.updateMemberDelNy(vo);

		return "redirect:/member/memberList";

	}
	
}