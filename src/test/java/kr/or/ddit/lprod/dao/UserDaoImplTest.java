package kr.or.ddit.lprod.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.prod.model.ProdVo;
import kr.or.ddit.user.model.UserVo;

import org.junit.Before;
import org.junit.Test;

public class UserDaoImplTest {

	// getAllLprod 메서드를 테스트하는 메서드 작성.
	@Test
	public void testGetAllLprod() {
		/***Given***/
		ILprodDao lprodDao = new LprodDaoImpl();
		
		/***When***/
		List<LprodVo> lprodList = lprodDao.getAllLprod();
		for(LprodVo lprodVo : lprodList){
			System.out.println(lprodVo);
		}
		
		/***Then***/
		assertNotNull(lprodList);

	}
	
	// selectLprod 메서드를 테스트하는 메서드 작성.
	@Test
	public void testSelectLprod() {
		/***Given***/
		ILprodDao lprodDao = new LprodDaoImpl();
		
		/***When***/
		List<ProdVo> prodList = lprodDao.selectLprod("P101");
		for(ProdVo prodVo : prodList){
			System.out.println(prodVo);
		}
		
		/***Then***/
		assertNotNull(prodList);
		
	}

}
