package com.yym.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList() throws Exception; 
	public List<Member> selectListCode() throws Exception;
//	INSERT
	public int insertMember(Member dto) throws Exception;
	public int insertMemberEmail(Member dto) throws Exception;
	public int insertMemberAddress(Member dto) throws Exception;
	public int insertMemberPhoneMobile(Member dto) throws Exception;
	public int insertMemberPhoneHome(Member dto) throws Exception;
//	UPDATE
	public int updateMember(Member dto) throws Exception;
	public int updateMemberEmail(Member dto) throws Exception;
	public int updateMemberAddress(Member dto) throws Exception;
	public int updateMemberPhoneMobile(Member dto) throws Exception;
	public int updateMemberPhoneHome(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	public Member selectOne(Member dto) throws Exception;
}