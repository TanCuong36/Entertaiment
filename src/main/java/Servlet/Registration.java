package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;
import Entity.User;

@WebServlet("/Registration")
public class Registration extends HttpServlet {

	UserDao dao = new UserDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/HTML/FormDK.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (dao.findID(request.getParameter("txtUsername")) == null) {
			User user = new User();
			user.setFullname(request.getParameter("txtfullname"));
			user.setEmail(request.getParameter("txtemail"));
			user.setUsername(request.getParameter("txtUsername"));
			user.setPassword(request.getParameter("txtpass"));
			dao.insert(user);
			response.sendRedirect("Login");
		} else {
			request.setAttribute("thongbao", "Username đã tồn tại vui lòng nhập lại!!!");
			request.getRequestDispatcher("/HTML/FormDK.jsp").forward(request, response);
		}
	}

}
