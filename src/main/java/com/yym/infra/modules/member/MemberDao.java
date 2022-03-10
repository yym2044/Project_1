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

	public List<Member> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public List<Member> selectListCode() {return sqlSession.selectList(namespace + ".selectListCode", ""); }
	
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
	public Member selectOne(Member dto) {return sqlSession.selectOne(namespace + ".selectOne", dto);}
	
}