package com.yym.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yym.infra.modules.code.CodeServiceImpl;

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
	public String memberView(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {


		Member rt = service.selectOne(vo);
		Member rt1 = service.selectOnePhoneMobile(vo);
		Member rt2 = service.selectOnePhoneHome(vo);
				
		model.addAttribute("rt", rt);
		model.addAttribute("rt1", rt1);
		model.addAttribute("rt2", rt2);
		
		model.addAttribute("noteList", service.selectNote(vo));
		

		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {
		
		//멤버수 가져오기 -> ${fn:length(list2)+1}로 다음 ifmmSeq값을 얻음
//		List<Member> list2 = service.selectList(vo);
//		model.addAttribute("list2", list2);
		
		//멤버수 가져오기 (selectListAllMember) -> ${fn:length(list2)+1}로 다음 ifmmSeq값을 얻음
//		List<Member> list2 = service.selectListAllMember();
//		model.addAttribute("list2", list2);
		
		//코드값 가져오기
		model.addAttribute("codeTelecom", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeMemberGrade", CodeServiceImpl.selectListCachedCode("20"));
		model.addAttribute("codeEmailDomain", CodeServiceImpl.selectListCachedCode("6"));
		
		//국적 리스트
		model.addAttribute("listNation", service.selectListNation());
		
		return "member/memberForm";
	}
	
//	@RequestMapping(value = "/member/memberInst")
//	public String memberInst(MemberVo vo, Member dto) throws Exception {
//
//		// 입력을 작동시킨다.
//		service.insertMember(dto);
//		
//		/* return "redirect:/member/memberList"; */
//		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq();
//	}
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		// 입력을 작동시킨다.
		service.insertMember(dto);
		 
//		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq());
//		redirectAttributes.addAttribute("shIfmmGrade", vo.getShIfmmGrade());
//		redirectAttributes.addAttribute("shIfmmEmailConsentNy", vo.getShIfmmEmailConsentNy());
//		redirectAttributes.addAttribute("shIfmmSmsConsentNy", vo.getShIfmmSmsConsentNy());
//		redirectAttributes.addAttribute("shIfmmPushConsentNy", vo.getShIfmmPushConsentNy());
//		redirectAttributes.addAttribute("shIfscSeq", vo.getShIfscSeq());
//		redirectAttributes.addAttribute("searchBar", vo.getSearchBar());
//		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
//		redirectAttributes.addAttribute("rowNumToShow", vo.getRowNumToShow());
//		redirectAttributes.addAttribute("sort", vo.getSort());
//		redirectAttributes.addAttribute("orderby", vo.getOrderby());
		
		System.out.println(vo.getIfmmSeq());	// null값 나옴..
		vo.setIfmmSeq(dto.getIfmmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "/member/memberEditForm")
	public String memberEditForm(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		Member rt = service.selectOne(vo);
		Member rt1 = service.selectOnePhoneMobile(vo);
		Member rt2 = service.selectOnePhoneHome(vo);
				
		model.addAttribute("rt", rt);
		model.addAttribute("rt1", rt1);
		model.addAttribute("rt2", rt2);
		
		//코드값 가져오기
		model.addAttribute("codeMemberGrade", CodeServiceImpl.selectListCachedCode("20"));
		model.addAttribute("codeTelecom", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmailDomain", CodeServiceImpl.selectListCachedCode("6"));
		
		//국적 리스트
		model.addAttribute("listNation", service.selectListNation());
		
		return "member/memberEditForm";
	}
	
//	@RequestMapping(value = "/member/memberUpdt")
//	public String memberUpdt(Model model, Member dto) throws Exception {
//
//		// 업데이트 하는 구문
//		service.updateMember(dto);
//
//		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq();
//
//	}
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		// 업데이트 하는 구문
		service.updateMember(dto);
		
//		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq());
//		redirectAttributes.addAttribute("shIfmmGrade", vo.getShIfmmGrade());
//		redirectAttributes.addAttribute("shIfmmEmailConsentNy", vo.getShIfmmEmailConsentNy());
//		redirectAttributes.addAttribute("shIfmmSmsConsentNy", vo.getShIfmmSmsConsentNy());
//		redirectAttributes.addAttribute("shIfmmPushConsentNy", vo.getShIfmmPushConsentNy());
//		redirectAttributes.addAttribute("shIfscSeq", vo.getShIfscSeq());
//		redirectAttributes.addAttribute("searchBar", vo.getSearchBar());
//		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
//		redirectAttributes.addAttribute("rowNumToShow", vo.getRowNumToShow());
//		redirectAttributes.addAttribute("sort", vo.getSort());
//		redirectAttributes.addAttribute("orderby", vo.getOrderby());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberView";
		
	}
	
	@RequestMapping(value = "/member/memberDele")
	public String memberDele(Model model, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		// 업데이트 하는 구문
		service.deleteMember(vo);
		
//		redirectAttributes.addAttribute("shIfmmGrade", vo.getShIfmmGrade());
//		redirectAttributes.addAttribute("shIfmmEmailConsentNy", vo.getShIfmmEmailConsentNy());
//		redirectAttributes.addAttribute("shIfmmSmsConsentNy", vo.getShIfmmSmsConsentNy());
//		redirectAttributes.addAttribute("shIfmmPushConsentNy", vo.getShIfmmPushConsentNy());
//		redirectAttributes.addAttribute("shIfscSeq", vo.getShIfscSeq());
//		redirectAttributes.addAttribute("searchBar", vo.getSearchBar());
//		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
//		redirectAttributes.addAttribute("rowNumToShow", vo.getRowNumToShow());
//		redirectAttributes.addAttribute("sort", vo.getSort());
//		redirectAttributes.addAttribute("orderby", vo.getOrderby());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
		
	}
	
	@RequestMapping(value = "/member/updateDelNy")
	public String updateDelNy(Model model, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		// 업데이트 하는 구문
		service.updateMemberDelNy(vo);
		
//		redirectAttributes.addFlashAttribute("shIfmmGrade", vo.getShIfmmGrade());
//		redirectAttributes.addFlashAttribute("shIfmmEmailConsentNy", vo.getShIfmmEmailConsentNy());
//		redirectAttributes.addFlashAttribute("shIfmmSmsConsentNy", vo.getShIfmmSmsConsentNy());
//		redirectAttributes.addFlashAttribute("shIfmmPushConsentNy", vo.getShIfmmPushConsentNy());
//		redirectAttributes.addFlashAttribute("shIfscSeq", vo.getShIfscSeq());
//		redirectAttributes.addFlashAttribute("searchBar", vo.getSearchBar());
//		redirectAttributes.addFlashAttribute("thisPage", vo.getThisPage());
//		redirectAttributes.addFlashAttribute("rowNumToShow", vo.getRowNumToShow());
//		redirectAttributes.addFlashAttribute("sort", vo.getSort());
//		redirectAttributes.addFlashAttribute("orderby", vo.getOrderby());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberList";

	}
	
}