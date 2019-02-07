<%@tag import="kr.or.ddit.prod.model.ProdVo"%>
<%@tag import="java.util.List"%>
<%@tag import="org.apache.ibatis.session.SqlSession"%>
<%@tag import="kr.or.ddit.db.mybatis.MybatisSqlSessionFactory"%>
<%@tag import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ tag language="java" pageEncoding="UTF-8"%>


<%
	// 기본 객체 사용가능.
// 	jspContext

	SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	List<ProdVo> prodList = sqlSession.selectList("lprod.selectLprod", jspContext.getAttribute("prod_lgu"));
	sqlSession.close();
%>


