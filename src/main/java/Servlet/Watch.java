package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.VideoDao;
import Entity.Video;
import java.text.DecimalFormat;
/**
 * Servlet implementation class Watch
 */
@WebServlet("/Watch")
public class Watch extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
		DecimalFormat convert= new DecimalFormat("###,###,###");
		VideoDao dao = new VideoDao();
		Video vd = dao.ds(request.getParameter("ID"));
		vd.setViews(vd.getViews()+1);
		dao.update(vd);
		request.setAttribute("Video",vd);
		request.setAttribute("V",convert.format(Double.parseDouble(vd.getViews()+"")));
		request.setAttribute("Videos",dao.fillAllVD());
		request.getRequestDispatcher("/HTML/Watch.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
