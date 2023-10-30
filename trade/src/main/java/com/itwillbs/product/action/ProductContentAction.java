package com.itwillbs.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.product.db.ProductDAO;
import com.itwillbs.product.db.ProductDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class ProductContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M: ProductContentAction.execute() 호출");

		// 전달정보 저장(bno, pageNum, search(생략))
		int bno = 10; // 추후 수정
		String pageNum = request.getParameter("pageNum");

		// BoardDAO 객체 - 특정 글의 조회수 1 증가()
		ProductDAO dao = new ProductDAO();
		dao.updateReadcount(bno);

		// BoardDAO 객체 - 특정 글의 정보를 가져옴()
		ProductDTO dto = dao.getProduct(bno);

		// 글정보 request 영역에 저장
		request.setAttribute("dto", dto);

		// pageNum값도 request 영역에 저장(뷰페이지에서 리스트 갈 때 사용)
		request.setAttribute("pageNum", pageNum);

		// 페이지 이동 준비(./productContent.jsp)
		ActionForward forward = new ActionForward();
		forward.setPath("./productContent.jsp");
		forward.setRedirect(false);

		return forward;

	}

}
