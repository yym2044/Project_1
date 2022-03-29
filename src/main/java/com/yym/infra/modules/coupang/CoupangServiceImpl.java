package com.yym.infra.modules.coupang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CoupangServiceImpl implements CoupangService {

	@Autowired
	CoupangDao dao;
		
	@Override
	public List<Coupang> selectCategory() throws Exception {
		
		return dao.selectCategory();
	}

	
	
}
