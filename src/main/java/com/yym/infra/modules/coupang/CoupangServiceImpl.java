package com.yym.infra.modules.coupang;

import java.util.List;

public class CoupangServiceImpl implements CoupangService {

	@Override
	public List<Coupang> selectList() throws Exception {
		
		return dao.selectList();
	}

	
	
}
