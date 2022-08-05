package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.VideoDao;
import Entity.Video;

@WebServlet({ "/Admin/Videos", "/Admin/EDIT", "/Admin/UPDATE", "/Admin/CREATE" })
public class Admin extends HttpServlet {

	VideoDao dao = new VideoDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Video> list = dao.fillAllVD();
		request.setAttribute("Videos", list);
		if (!request.getServletPath().equals("/Admin/Videos")) {
			String btn = request.getParameter("btn");
			if (btn.equalsIgnoreCase("edit")) {
				Video vd = dao.ds(request.getParameter("id"));
				request.setAttribute("idvideo", vd);
				request.setAttribute("tr",true);
				request.setAttribute("check",false);
			}
		}else {
			request.setAttribute("tr",false);			
		}
		request.getRequestDispatcher("/HTML/Admin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("btn").equalsIgnoreCase("UPDATE")) {
			Video dsVideo = new Video();
			dsVideo.setId(request.getParameter("id"));
			dsVideo.setTitle(request.getParameter("title"));
			dsVideo.setViews(Integer.parseInt(request.getParameter("views")));
			dsVideo.setActive(request.getParameter("inlineRadioOptions").equalsIgnoreCase("active") ? true : false);
			dsVideo.setDescription(request.getParameter("description"));
			dsVideo.setPoster(request.getParameter("url"));
			dao.update(dsVideo);
			request.setAttribute("thongbao","Cập Nhật Video Thành Công");
		} else if (request.getParameter("btn").equalsIgnoreCase("CREATE")) {
			Video dsVideo = new Video();
			dsVideo.setId(request.getParameter("id"));
			dsVideo.setTitle(request.getParameter("title"));
			dsVideo.setViews(Integer.parseInt(request.getParameter("views")));
			dsVideo.setActive(request.getParameter("inlineRadioOptions").equalsIgnoreCase("active") ? true : false);
			dsVideo.setDescription(request.getParameter("description"));
			dsVideo.setPoster(request.getParameter("url"));
			if (dao.ds(request.getParameter("id"))!=null){
				request.setAttribute("thongbao","Video Có Mã "+request.getParameter("id")+" Đã Tồn Tại");
				request.setAttribute("mau",true);
			}else {
				dao.insert(dsVideo);
				request.setAttribute("thongbao","Thêm Video Thành Công");
			}						
		}else {
			try {
				dao.delete(request.getParameter("id"));
				request.setAttribute("thongbao","Xoá Video Thành Công");
			} catch (Exception e) {
				System.out.println(e);
			}
			
		}
		doGet(request, response);
	}

}
