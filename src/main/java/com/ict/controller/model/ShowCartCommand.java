package com.ict.controller.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.controller.db.CartVO;
import com.ict.controller.db.DAO;
import com.ict.controller.db.MemberVO;

public class ShowCartCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberVO mvo = (MemberVO)request.getSession().getAttribute("m_vo");
		String m_id = mvo.getM_id();
		// 해당 id의 전체 카트 정보 가져오기
		List<CartVO> cartlist = DAO.getAllCartList(m_id);
		request.setAttribute("cartlist", cartlist);
		return "view/cartlist.jsp";
	}
}
