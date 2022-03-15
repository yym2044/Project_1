package com.yym.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}
	
	@Override
	public Code selectOne(Code dto) throws Exception {
		
		return dao.selectOne(dto);
	}

	@Override
	public List<Code> selectList2(CodeVo vo) throws Exception {
		
		return dao.selectList2(vo);
	}

//	@Override
//	public int update(CodeVo vo) throws Exception {
//		return dao.update(vo);
//	}
	
	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}

//	코드
	
	@Override
	public List<Code> selectList_code(CodeVo vo) throws Exception {
		
		return dao.selectList_code(vo);
	}

	@Override
	public int insert_code(Code dto) throws Exception {
		return dao.insert_code(dto);
	}

	@Override
	public Code selectOne_code(CodeVo vo) throws Exception {
		return dao.selectOne_code(vo);
	}
	
	@Override
	public Code selectOne_code(Code dto) throws Exception {
		return dao.selectOne_code(dto);
	}
	
	@Override
	public int update_code(Code dto) throws Exception {
		return dao.update_code(dto);
	}

	@Override
	public int delete_code(CodeVo vo) throws Exception {
		return dao.delete_code(vo);
	}
}