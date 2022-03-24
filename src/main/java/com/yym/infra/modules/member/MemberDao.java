package com.yym.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yym.infra.modules.member.MemberMpp";

	public int selectListCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectListCount", vo); }
	public List<Member> selectListAllMember() {return sqlSession.selectList(namespace + ".selectListAllMember", "");}
	
	public List<Member> selectList(MemberVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public List<Member> selectListSearch() {return sqlSession.selectList(namespace + ".selectListSearch", ""); }
	
	
//	INSERT
	public int insertMember(Member dto){ return sqlSession.insert(namespace + ".insertMember", dto); }
	public int insertMemberEmail(Member dto) {return sqlSession.insert(namespace + ".insertMemberEmail", dto);}
	public int insertMemberAddress(Member dto) {return sqlSession.insert(namespace + ".insertMemberAddress", dto);}
	public int insertMemberPhoneMobile(Member dto) {return sqlSession.insert(namespace + ".insertMemberPhoneMobile", dto);}
	public int insertMemberPhoneHome(Member dto) {return sqlSession.insert(namespace + ".insertMemberPhoneHome", dto);}
	
//	UPDATE
	public int updateMember(Member dto) {return sqlSession.insert(namespace + ".updateMember", dto); }
	public int updateMemberEmail(Member dto) {return sqlSession.insert(namespace + ".updateMemberEmail", dto); }
	public int updateMemberAddress(Member dto) {return sqlSession.insert(namespace + ".updateMemberAddress", dto); }
	public int updateMemberPhoneMobile(Member dto) {return sqlSession.insert(namespace + ".updateMemberPhoneMobile", dto); }
	public int updateMemberPhoneHome(Member dto) {return sqlSession.insert(namespace + ".updateMemberPhoneHome", dto); }
	
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public Member selectOnePhoneMobile(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOnePhoneMobile", vo);}
	public Member selectOnePhoneHome(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOnePhoneHome", vo);}
	
//	DELETE
//	public int deleteMember(MemberVo vo) {return sqlSession.delete(namespace + ".deleteMember", vo);}
//	public int deleteMemberEmail(MemberVo vo) {return sqlSession.delete(namespace + ".deleteMemberEmail", vo);}
//	public int deleteMemberAddress(MemberVo vo) {return sqlSession.delete(namespace + ".deleteMemberAddress", vo);}
//	public int deleteMemberPhone(MemberVo vo) {return sqlSession.delete(namespace + ".deleteMemberPhone", vo);}
	
	public int updateMemberDelNy(MemberVo vo) {return sqlSession.update(namespace + ".updateMemberDelNy", vo); }
	
	
}