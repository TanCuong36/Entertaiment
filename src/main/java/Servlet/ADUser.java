package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.criterion.ExistsSubqueryExpression;
import Dao.UserDao;
import Entity.User;
import Entity.Video;

@WebServlet({"/Admin/Users","/Admin/edit"})
public class ADUser extends HttpServlet {

	UserDao dao = new UserDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> list = dao.findIdUser();
		request.setAttribute("Users", list);		
		if (!request.getServletPath().equals("/Admin/Users")) {
			User x = dao.findID(request.getParameter("id"));
			request.setAttribute("user",x);
			request.setAttribute("dis",true);
		}
		request.getRequestDispatcher("/HTML/ADUser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("btn").equals("UPDATE")){
			User us = new User();
			us.setUsername(request.getParameter("iduser"));
			us.setEmail(request.getParameter("email"));
			us.setFullname(request.getParameter("fullname"));
			us.setPassword(request.getParameter("passuser"));
			us.setAdmin(request.getParameter("inlineRadioOptions").equalsIgnoreCase("active")?true:false);
			dao.update(us);	
		}
		doGet(request, response);
	}

}
