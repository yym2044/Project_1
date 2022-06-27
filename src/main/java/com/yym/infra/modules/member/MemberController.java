package com.yym.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.yym.infra.common.constants.Constants;
import com.yym.infra.common.util.UtilDateTime;
import com.yym.infra.common.util.UtilRest;
import com.yym.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/test/publicCorona1JsonNodeList")
	public String publicCorona1JsonNodeList(Model model) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(UtilRest.makeJsonStringBuilder("http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=LmEx2srRT0gx5KEnYWcolsev9PKtXw4eNB5KzqFqw1IPrYbOEsv%2FYXMimhZohuADm%2BOf4yXM3ghTbKtbTUtQnw%3D%3D&numOfRows=3&pageNo=1&type=json").toString());
		
		System.out.println(node.get("header").get("resultCode").asText());
		System.out.println(node.get("header").get("resultMsg").asText());
		System.out.println(node.get("body").get("items").get(0).get("KIT_PROD_QTY").asText());
		System.out.println(node.get("header"));
		System.out.println(node.get("body").get("items"));
		
		model.addAttribute("node", node);
		
		return "test/publicCorona1JsonNodeList";
	}
	
	@RequestMapping(value = "/test/TsunamiShelter")
	public String TsunamiShelter(Model model) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(UtilRest.makeJsonStringBuilder("http://apis.data.go.kr/1741000/TsunamiShelter3/getTsunamiShelter1List?ServiceKey=tXv6zvGOEaCo4vYkPtHkY0MZvCHhUn%2BvMsQURfMYuemmYW1cdudh6o6q6Rg0%2FJFCStgW3TucKJ0jTrEVZj7Aqg%3D%3D&type=json&pageNo=1&numOfRows=10").toString(), Map.class);
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			
			System.out.println("[key] : " + key + ", [value] : " + value);
		}
		
		Map<String, Object> TsunamiShelter = new HashMap<String, Object>();
		
//		System.out.println("####### TsunamiShelter");
//		for(String key : TsunamiShelter.keySet()) {
//			
//			String value = String.valueOf(TsunamiShelter.get(key));
//			
//			System.out.println("[key] : " + key + ", [value] : " + value);
//		}
		
		
		return "test/TsunamiShelter";
	}
	
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCoronaList(Model model) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(UtilRest.makeJsonStringBuilder("http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=LmEx2srRT0gx5KEnYWcolsev9PKtXw4eNB5KzqFqw1IPrYbOEsv%2FYXMimhZohuADm%2BOf4yXM3ghTbKtbTUtQnw%3D%3D&numOfRows=3&pageNo=1&type=json").toString(), Map.class);
		
		System.out.println("################################ map ################################");
		for (String key : map.keySet()) {
			
//			String value = (String) map.get(key);	// error Casting
//			String value = map.get(key).toString();	// error NPE
			String value = String.valueOf(map.get(key));
			
			System.out.println("[key] : " + key + ", [value] : " + value);
		}
		
		// 새로운 Map 생성
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("################################ header ################################");
		for (String key : header.keySet()) {
			
			String value = String.valueOf(header.get(key));
			
			System.out.println("[key] : " + key + ", [value] : " + value);
		}
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		System.out.println("################################ body ################################");
		for(String key : body.keySet()) {
			String value = String.valueOf(body.get(key));
			
			System.out.println("[key] : " + key + ", [value] : " + value);
		}
		
		// 배열을 리스트로 뽑기
//		List<Test> items = new ArrayList<Test>();
//		items = (List<Test>) body.get("items");
		
		model.addAllAttributes(map);
//		model.addAllAttributes(header);
//		model.addAllAttributes(body);
		
		return "test/publicCorona1List";
	}
	
	@RequestMapping(value = "/test/memberView")
	public String testMemberView(Model model) throws Exception {
		
//		String apiUrl = "http://localhost:8080/infra/rest/member/2";
//		
//		URL url = new URL(apiUrl);
//		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
//		httpURLConnection.setRequestMethod("GET");
//		
//		BufferedReader bufferedReader;
//		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
//			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
//		} else {
//			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
//		}
//		
//		StringBuilder stringBuilder = new StringBuilder();
//		String line;
//		
//		while((line = bufferedReader.readLine()) != null) {
//			stringBuilder.append(line);
//		}
//		
//		bufferedReader.close();
//		httpURLConnection.disconnect();
//		
//		
//		
//		ObjectMapper objectMapper = new ObjectMapper();
//		Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);
		
		ObjectMapper objectMapper = new ObjectMapper();
		Member member = objectMapper.readValue(UtilRest.makeJsonStringBuilder("http://localhost:8080/infra/rest/member/2").toString(), Member.class);
		// model 객체를 이용하여 jsp로 데이터를 넘겨준다.
		model.addAttribute("item", member);
		
		return "test/memberView";
	}
	
	@RequestMapping(value = "/test/memberList")
	public String testMemberList(Model model) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		List<Member> list = objectMapper.readValue(UtilRest.makeJsonStringBuilder("http://localhost:8080/infra/rest/member").toString(), new TypeReference<List<Member>>() {});
		
		model.addAttribute("list", list);
		
		return "/test/memberList";
	}
	
	
	
	
	@RequestMapping(value = "member/loginForm")
	public String loginForm() throws Exception {
		
		
		return "member/loginForm";
	}
	
	@RequestMapping(value = "member/loginKakao")
	public String loginKakao() throws Exception {
		
		return "member/loginKakao";
	}
	@RequestMapping(value = "member/loginNaver")
	public String loginNaver() throws Exception {
		return "member/loginNaver";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);

		if(rtMember != null) {
			
			httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
			httpSession.setAttribute("sessId", rtMember.getIfmmId());
			httpSession.setAttribute("sessName", rtMember.getIfmmName());
			httpSession.setAttribute("sessAdminNy", rtMember.getIfmmAdminNy());
			
			if(rtMember.getIfmmAdminNy() == 0) {
				returnMap.put("rt", "successGoMain");
			} else if(rtMember.getIfmmAdminNy() == 1) {
				returnMap.put("rt", "successGoIndex");
			} else {
				returnMap.put("rt", "fail");
			}
			
		} else {
			returnMap.put("rt", "fail");
		}
		
		
		return returnMap;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProcSns")
	public Map<String, Object> loginProcSns(Member dto, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLoginSns(dto);

		if(rtMember != null) {
			
			httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
			httpSession.setAttribute("sessId", rtMember.getIfmmId());
			httpSession.setAttribute("sessName", rtMember.getIfmmName());
			httpSession.setAttribute("sessAdminNy", rtMember.getIfmmAdminNy());
			
			if(rtMember.getIfmmAdminNy() == 0) {
				returnMap.put("rt", "successGoMain");
			} else if(rtMember.getIfmmAdminNy() == 1) {
				returnMap.put("rt", "successGoIndex");
			} else {
				returnMap.put("rt", "fail");
			}
			
		} else {
			returnMap.put("rt", "fail");
		}
		
		
		return returnMap;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/member/logOutProc")
	public Map<String, Object> logOutProc(HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
 	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {
		
		System.out.println("UtilDateTime.nowLocalDateTime() : " + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate : " + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString() : " + UtilDateTime.nowString());

		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		
		vo.setShPeriod(vo.getShPeriod() == null ? 0 : vo.getShPeriod());
		
		if(vo.getShPeriod() == 0) {
			vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL, 1) : vo.getShDateStart());
			vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		} else if(vo.getShPeriod() == 1) {
			vo.setShDateStart(UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL, 1));
			vo.setShDateEnd(UtilDateTime.nowString());
		} else if(vo.getShPeriod() == 2) {
			vo.setShDateStart(UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), -1, 2));
			vo.setShDateEnd(UtilDateTime.nowString());
		} else if(vo.getShPeriod() == 3) {
			vo.setShDateStart(UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), -1, 3));
			vo.setShDateEnd(UtilDateTime.nowString());
		}
		
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
//		Member rt1 = service.selectOnePhoneMobile(vo);
//		Member rt2 = service.selectOnePhoneHome(vo);
				
		model.addAttribute("rt", rt);
//		model.addAttribute("rt1", rt1);
//		model.addAttribute("rt2", rt2);
		
		//회원이 갖는 파생 데이터들
		model.addAttribute("listAddressOnline", service.selectListAddressOnline(vo));
		model.addAttribute("listPhone", service.selectListPhone(vo));
		model.addAttribute("noteList", service.selectNote(vo));
		model.addAttribute("listUploaded", service.selectListMemberUploaded(vo));
		

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
	
	@RequestMapping(value = "/member/memberNoteInst")
	public String memberNoteInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insertMemberNote(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "/member/memberEditForm")
	public String memberEditForm(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		Member rt = service.selectOne(vo);
//		Member rt1 = service.selectOnePhoneMobile(vo);
//		Member rt2 = service.selectOnePhoneHome(vo);
				
		model.addAttribute("rt", rt);
//		model.addAttribute("rt1", rt1);
//		model.addAttribute("rt2", rt2);
		
		//코드값 가져오기
		model.addAttribute("codeMemberGrade", CodeServiceImpl.selectListCachedCode("20"));
		model.addAttribute("codeTelecom", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmailDomain", CodeServiceImpl.selectListCachedCode("6"));
		
		//국적 리스트
		model.addAttribute("listNation", service.selectListNation());
		//회원이 갖는 파생 데이터들
		model.addAttribute("listPhone", service.selectListPhone(vo));
		model.addAttribute("listAddressOnline", service.selectListAddressOnline(vo));
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
	
	@RequestMapping(value = "/member/memberNoteDele")
	public String memberNoteDele(Model model, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		// 업데이트 하는 구문
		service.deleteMemberNote(vo);
		
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
		
		return "redirect:/member/memberView";
		
	}
	
	@RequestMapping(value = "/member/recaptchaTest")
	public String recaptchaTest() throws Exception {
		
		return "/member/recaptchaTest";
	}
}