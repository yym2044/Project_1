package com.yym.infra.modules.coupang;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CoupangDao {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.yym.infra.modules.coupang.CoupangMpp";
	
	public List<Coupang> selectList() {return sqlSession.selectList(namespace + ".selectList", "");}
	
}
