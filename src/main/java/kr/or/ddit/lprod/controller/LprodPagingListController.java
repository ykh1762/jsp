package kr.or.ddit.lprod.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;
import kr.or.ddit.util.model.PageVo;

@WebServlet("/lprodPagingList")
public class LprodPagingListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ILprodService lprodService;
	
	@Override
	public void init() throws ServletException {
		lprodService = new LprodServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// page, pageSize에 해당하는 파라미터를 받기. --> pageVo. 단, 파라미터가 null일 경우
		// --> page : 1, pageSize : 10.
		int page = request.getParameter("page") == null ? 
				1 : Integer.parseInt(request.getParameter("page"));
		
		int pageSize = request.getParameter("pageSize") == null ? 
				5 : Integer.parseInt(request.getParameter("pageSize"));
		
		PageVo pageVo = new PageVo(page, pageSize);
		
		// userService 객체를 이용해서 userPagingList 조회.
		Map<String, Object> resultMap = lprodService.selectLprodPagingList(pageVo);
		
		List<LprodVo> lprodList = (List<LprodVo>) resultMap.get("lprodList");
		int lprodCnt = (Integer) resultMap.get("lprodCnt");
		
		// request 객체에 조회된 결과를 속성으로 설정.
		request.setAttribute("lprodList", lprodList);
		request.setAttribute("lprodCnt", lprodCnt);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("page", page);
		
		// userPagingList를 화면으로 출력할 jsp로 위임(forward).
		request.getRequestDispatcher("/lprod/lprodPagingList.jsp").forward(request, response);;
	}

}

/*
	 
오라클에서 rownum 은 쿼리가 실행될 때 결과 레코드에 번호를 나타내어 주는 필드이다.

물론 table 을 만들 때 rownum 을 만들어줄 필요는 없다.

어떠한 테이블이라도 "select rownum from boardtable" 의 형태로 쿼리를 날리면 레코드에

번호컬럼이 생기는 것을 볼수 있다.

따라서 페이징을 위한 쿼리에서 우리는 rownum 이 10 보다 크고 20 보다 작은

이런 식의 조건을 주어 원하는 범위의 레코드만 쿼리 할수 있다.

Select * from boardtable where rownum > 10 and rownum <=20

 

위와 같이 쿼리 하면 어떨가? 결과가 하나도 않나올 것이다. 왜냐하면 쿼리가 실행될 때

Where 부분이 먼저 실행한다. Select 하기 전에 rownum 이 발생하지 않기 때문에

rownum 할 데이터가 없어서 아무 값도 가져오지 못하게 되는것이다.

다시 쿼리를 수정하게 되면 다음과 같다.

Select 서브 쿼리를 날려서 먼저 데이터를 가져온후에 rownum 을 하는것이다.

Select * from (select rownum numrow, boardtable from boardtable)

Where numrow > 10 and numrow <= 20

 

여기에서 문제가 다 해결된건 아니다. Order by 절을 사용하게 되면 또다른 문제에 직면하게 된다

Select * from (select rownum numrow, boardtable from boardtable order by reg_date desc)

Where numrow > 10 and numrow <= 20

 

실행해 보면 원하는 결과가 나오지 않는 것을 알수있을것이다.

이유는 order by 가 rownum 값을 만드는데 영향을 못주는 것으로 생각된다.

즉 order by 를 지정한다고 해도 rownum 은 최초의 order by 가 없는 상태로 만들어진다.

원하는 형태의 정렬 데이터를 rownum 하고 싶다면 서브쿼리를 order by 절로 날린후

Rownum 을 매기면 된다.

Select rownum numrow, aa.* from (select * from boardtable order by reg_date desc) aa

 

여기에 범위지정 쿼리를 써넣게 되면 어떻게 될까? 위에서 설명한 대로 아무값도 안나오게 된다

Select rownum numrow, aa.* from (select * from boardtable order by reg_date desc) aa

Where numrow > 10 and numrow <= 20

 

이것을 제대로 구현할려면 한번더 select 구문 서브쿼리를 날려야한다.

Select * from (select rownum numrow, aa.* from (select * from boardtable order by reg_date desc) aa ) where numrow > 10 and numrow <= 20

 

이와 같이 하게 되면 서브쿼리를 몇번이나 날리게 되어 데이터 양이 많을경우

퍼포먼스에 문제가 생길수가 있다. 그래서 index 와 hint 절을 사용하여 성능을 향상시켜준다.

Index 는 order by 구문에 나오는 reg_date 를 주면될것이다.

Create unique index  idx_board_reg_date on boardtable (reg_date, idx)



출처: https://mainia.tistory.com/267 [녹두장군 - 상상을 현실로]
 
 
 
 */














