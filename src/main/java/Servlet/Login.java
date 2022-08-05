package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.core.FrameworkListener;

import Dao.UserDao;
import Entity.User;
import Utils.*;

@WebServlet("/Login")
public class Login extends HttpServlet {

	UserDao dao = new UserDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = CookieUtil.get("username", request);
		if (username == null) {
			request.getRequestDispatcher("/HTML/FormDN.jsp").forward(request, response);
			return;
		}
		SessionUtils.add(request, "username", username);
		SessionUtils.add(request, "check",true);
		response.sendRedirect("Index");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String user = request.getParameter("name");
			String pass = request.getParameter("pass");
			boolean remember = Boolean.parseBoolean(request.getParameter("remember"));
			User x = dao.findID(user);
			System.out.println(remember);
			if (x != null && x.getPassword().equals(pass)) {									
				SessionUtils.add(request, "username", x.getUsername());
				SessionUtils.add(request, "check",true);
				if (remember) {	
					CookieUtil.add("username", user,24, response);
										
				} else {
					CookieUtil.add("username", user, 0, response);
				}
				if(x.getAdmin()) {response.sendRedirect("/ASM_JAVA4_PD04237/Admin/Videos");}else{response.sendRedirect("Index");}								
				return;
			}
			request.setAttribute("thongbao", "Username hoặc Mật Khẩu Không Chính Xác");
		} catch (Exception e) {
			System.out.println(e);

		}
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_LOGIN_PAGE);
	}

}
