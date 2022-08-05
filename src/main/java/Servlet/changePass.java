package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;
import Entity.User;

@WebServlet("/changePass")
public class changePass extends HttpServlet {

	UserDao dao = new UserDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = dao.findID(request.getParameter("id"));
		if (user.getPassword().equals(request.getParameter("current"))) {
			if (request.getParameter("new").equals(request.getParameter("confirm"))) {
				user.setPassword(request.getParameter("new"));
				request.setAttribute("tb", "Đổi mật khẩu thành công!!!");
				dao.update(user);
			} else {
				request.setAttribute("tb", "New pass và confirm pass chưa khớp!!!");
			}
		} else {
			request.setAttribute("tb", "Mật Khẩu hiện tại không đúng!!!");
		}
		response.sendRedirect("Index");
	}

}
