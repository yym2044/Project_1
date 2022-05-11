package com.yym.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberRestController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/rest/member", method = RequestMethod.GET)
//	@GetMapping("/rest/member")
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = service.selectList(vo);
		return list;
	}
	
	@RequestMapping(value = "/rest/member/{seq}", method = RequestMethod.GET)
//	@GetMapping("/rest/member/{seq}")
	public Member selectOne(@PathVariable String seq, MemberVo vo) throws Exception {
		vo.setIfmmSeq(seq);
		Member rt = service.selectOne(vo);
		
		return rt;
	}
	
	@RequestMapping(value = "/rest/member", method = RequestMethod.POST)
//	@PostMapping("rest/member")
	public String insert(@RequestBody Member dto) throws Exception {
		service.insertMember(dto);
		return dto.getIfmmSeq();
	}
	
	@RequestMapping(value = "/rest/member/{seq}", method = RequestMethod.PATCH)
//	@PatchMapping("/rest/member/{seq}")
	public int update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
		dto.setIfmmSeq(seq);
		return service.updateMember(dto);
	}
}