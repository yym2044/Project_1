package com.yym.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public int selectListCount(MemberVo vo) throws Exception {
		return dao.selectListCount(vo);
	}
	
	@Override
	public List<Member> selectListAllMember() throws Exception {
		return dao.selectListAllMember();
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	
	@Override
	public List<Member> selectListSearch() throws Exception {
		return dao.selectListSearch();
	}
	
	
	@Override
	public int insertMember(Member dto) throws Exception {
		dao.insertMember(dto);
		dao.insertMemberAddress(dto);
		dao.insertMemberEmail(dto);
		dao.insertMemberPhoneHome(dto);
		dao.insertMemberPhoneMobile(dto);
		return 1;
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
	public int updateMember(Member dto) throws Exception {
		dao.updateMember(dto);
		dao.updateMemberAddress(dto);
		dao.updateMemberEmail(dto);
		dao.updateMemberPhoneHome(dto);
		dao.updateMemberPhoneMobile(dto);
		
		return 1;
	}

//	@Override
//	public int updateMemberEmail(Member dto) throws Exception {
//		return dao.updateMemberEmail(dto);
//	}
//
//	@Override
//	public int updateMemberAddress(Member dto) throws Exception {
//		return dao.updateMemberAddress(dto);
//	}
//
//	@Override
//	public int updateMemberPhoneMobile(Member dto) throws Exception {
//		return dao.updateMemberPhoneMobile(dto);
//	}
//
//	@Override
//	public int updateMemberPhoneHome(Member dto) throws Exception {
//		return dao.updateMemberPhoneHome(dto);
//	}

	

//	@Override
//	public int deleteMember(MemberVo vo) throws Exception {
//		return dao.deleteMember(vo);
//	}
//
//	@Override
//	public int deleteMemberEmail(MemberVo vo) throws Exception {
//		return dao.deleteMemberEmail(vo);
//	}
//
//	@Override
//	public int deleteMemberAddress(MemberVo vo) throws Exception {
//		return dao.deleteMemberAddress(vo);
//	}
//
//	@Override
//	public int deleteMemberPhone(MemberVo vo) throws Exception {
//		return dao.deleteMemberPhone(vo);
//	}

	@Override
	public int updateMemberDelNy(MemberVo vo) throws Exception {
		return dao.updateMemberDelNy(vo);
	}

	

}