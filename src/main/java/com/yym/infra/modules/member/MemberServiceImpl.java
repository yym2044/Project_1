package com.yym.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList(); 
	}
	
	@Override
	public List<Member> selectListCode() throws Exception {
		return dao.selectListCode();
	}
	
	@Override
	public int insertMember(Member dto) throws Exception {
		return dao.insertMember(dto);
	}
	@Override
	public int insertMemberEmail(Member dto) throws Exception {
		return dao.insertMemberEmail(dto);
	}
	@Override
	public int insertMemberAddress(Member dto) throws Exception {
		return dao.insertMemberAddress(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	@Override
	public Member selectOne(Member dto) throws Exception {
		return dao.selectOne(dto);
	}

	@Override
	public int insertMemberPhoneMobile(Member dto) throws Exception {
		return dao.insertMemberPhoneMobile(dto);
	}

	@Override
	public int insertMemberPhoneHome(Member dto) throws Exception {
		return dao.insertMemberPhoneHome(dto);
	}

	@Override
	public int updateMember(Member dto) throws Exception {
		return dao.updateMember(dto);
	}

	@Override
	public int updateMemberEmail(Member dto) throws Exception {
		return dao.updateMemberEmail(dto);
	}

	@Override
	public int updateMemberAddress(Member dto) throws Exception {
		return dao.updateMemberAddress(dto);
	}

	@Override
	public int updateMemberPhoneMobile(Member dto) throws Exception {
		return dao.updateMemberPhoneMobile(dto);
	}

	@Override
	public int updateMemberPhoneHome(Member dto) throws Exception {
		return dao.updateMemberPhoneHome(dto);
	}

	

	

}