package com.yym.infra.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";

	public List<Code> selectList() {return sqlSession.selectList(namespace + ".selectList", "");}
	
	public int insert(Code dto) {return sqlSession.insert(namespace + ".insert", dto);}
	
	public Code selectOne(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public Code selectOne(Code dto) {return sqlSession.selectOne(namespace + ".selectOne", dto);}
	
	public List<Code> selectList2(CodeVo vo) {return sqlSession.selectList(namespace + ".selectList2", vo);}
	
//	public int update(CodeVo vo) {return sqlSession.update(namespace + ".update", vo);}
	public int update(Code dto) {return sqlSession.update(namespace + ".update", dto);}
	
//	코드
	public List<Code> selectList_code() {return sqlSession.selectList(namespace + ".selectList_code", "");}
	
	public int insert_code(Code dto) {return sqlSession.insert(namespace + ".insert_code", dto);}
	
	public Code selectOne_code(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOne_code", vo);}
	public Code selectOne_code(Code dto) {return sqlSession.selectOne(namespace + ".selectOne_code", dto);}
	
	public int update_code(Code dto) {return sqlSession.update(namespace + ".update_code", dto);}
	
	public int delete_code(CodeVo vo) {return sqlSession.delete(namespace + ".delete_code", vo);}
}