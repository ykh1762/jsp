package kr.or.ddit.lprod.service;

import java.util.List;

import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.prod.model.ProdVo;
import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.dao.UserDaoImpl;
import kr.or.ddit.user.model.UserVo;

public class LprodServiceImpl implements ILprodService {
	
	private ILprodDao lprodDao;

	public LprodServiceImpl(){
		lprodDao = new LprodDaoImpl();
	}
	
	/**
	 * 
	 * Method : getAllLprod
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 lprod 정보 조회.
	 */
	@Override
	public List<LprodVo> getAllLprod() {
		return lprodDao.getAllLprod();
	}

	/**
	 * 
	 * Method : selectLprod
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 특정 카테고리의 prodList 조회.
	 */
	@Override
	public List<ProdVo> selectLprod(String lprod_gu) {
		return lprodDao.selectLprod(lprod_gu);
	}



}
