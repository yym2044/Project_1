package com.yym.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public int selectListCount(MemberVo vo) throws Exception;
	public List<Member> selectListAllMember() throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public List<Member> selectListSearch() throws Exception;
//	INSERT
	public int insertMember(Member dto) throws Exception;
	
//	UPDATE
	public int updateMember(Member dto) throws Exception;
//	public int updateMemberEmail(Member dto) throws Exception;
//	public int updateMemberAddress(Member dto) throws Exception;
//	public int updateMemberPhoneMobile(Member dto) throws Exception;
//	public int updateMemberPhoneHome(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	public Member selectOne(Member dto) throws Exception;
	
//	DELETE
//	public int deleteMember(MemberVo vo) throws Exception;
//	public int deleteMemberEmail(MemberVo vo) throws Exception;
//	public int deleteMemberAddress(MemberVo vo) throws Exception;
//	public int deleteMemberPhone(MemberVo vo) throws Exception;
	
	public int updateMemberDelNy(MemberVo vo) throws Exception;
}