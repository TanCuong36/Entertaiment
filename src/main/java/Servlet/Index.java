package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.LikeDao;
import Dao.VideoDao;
import Entity.Favorite;
import Entity.Video;
import Utils.*;

@WebServlet({ "/Index", "/Index/Like", "/Index/Page", "/Index/Favorite", "/Index/Favorite/Unlike" })
public class Index extends HttpServlet {

	VideoDao dao = new VideoDao();
	LikeDao likedao = new LikeDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equalsIgnoreCase("/Index/Favorite")) {
			List<Favorite> ds = likedao.findall(SessionUtils.get(request, "username").toString());
			request.setAttribute("list", ds);
			request.setAttribute("favorite", true);
			request.getRequestDispatcher("/HTML/TrangChu.jsp").forward(request, response);
			return;
		} else if (request.getServletPath().equalsIgnoreCase("/Index/Favorite/Unlike")) {
			try {
				likedao.delete(SessionUtils.get(request, "username").toString(), request.getParameter("idvideo"));
			} catch (Exception e) {
				e.printStackTrace();
			}
			// request.getRequestDispatcher("/Index/Favorite").forward(request, response);
			response.sendRedirect("/ASM_JAVA4_PD04237/Index/Favorite");
			return;
		} else if (request.getServletPath().equalsIgnoreCase("/Index/Like")) {
			try {
				likedao.insert(SessionUtils.get(request, "username").toString(),request.getParameter("idvideo"));
				response.sendRedirect("/ASM_JAVA4_PD04237/Index");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return;
		} else if (request.getServletPath().equalsIgnoreCase("/Index/Page")) {
			List<Video> list = dao.setPage(Integer.parseInt(request.getParameter("page"))-1);
			request.setAttribute("Videos", list);
			request.setAttribute("page", dao.totalPage());
			request.getRequestDispatcher("/HTML/TrangChu.jsp").forward(request, response);
			return;
		}
		// List<Favorite> ds =
		// likedao.findall(SessionUtils.get(request,"username").toString());
		// request.setAttribute("list", ds);

		List<Video> list = dao.setPage(0);
		request.setAttribute("Videos", list);
		request.setAttribute("page", dao.totalPage());
		request.getRequestDispatcher("/HTML/TrangChu.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
