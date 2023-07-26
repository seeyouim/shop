package com.ict.controller.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.controller.db.DAO;

public class CartDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		int result = DAO.getCartDel(idx);
		return "MyController?cmd=showcart";
	}
}
