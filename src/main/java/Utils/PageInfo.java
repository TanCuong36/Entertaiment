package Utils;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.collections.map.HashedMap;

public class PageInfo {
	public static Map<PageType, PageInfo> pageRouteMap = new HashedMap();
	
	static {
		pageRouteMap.put(PageType.USER_MANAGEMENT_PAGE, new PageInfo("User Management","/admin/users/users.jsp", null));
		pageRouteMap.put(PageType.REPORTS_MANAGEMENT_PAGE, new PageInfo("Reports","/admin/reports/reports.jsp", null));
		pageRouteMap.put(PageType.VIDEOS_MANAGEMENT_PAGE, new PageInfo("Reports","/admin/videos/videos.jsp", null));	
		pageRouteMap.put(PageType.SITE_HOME_PAGE, new PageInfo("Home Page","/sites/home/home.jsp", null));
		pageRouteMap.put(PageType.SITE_LOGIN_PAGE, new PageInfo("Login Page","/HTML/FormDN.jsp", null));	
		pageRouteMap.put(PageType.SITE_REGISTRATION_PAGE, new PageInfo("Registration Page","/sites/users/registration.jsp", null));
		pageRouteMap.put(PageType.SITE_FORGOT_PASSWORD_PAGE, new PageInfo("Forgor Password Page","/sites/users/forgot_password.jsp", null));
		pageRouteMap.put(PageType.SITE_CHANGE_PASSWORD_PAGE, new PageInfo("Change Password Page","/sites/users/change_password.jsp", null));
		pageRouteMap.put(PageType.SITE_EDIT_PROFILE_PAGE, new PageInfo("Edit Profile Page","/sites/users/edit_profile.jsp", null));		
		pageRouteMap.put(PageType.SITE_FAVORITE_PAGE, new PageInfo("Favorite Page","/sites/videos/favorite.jsp", null));
		pageRouteMap.put(PageType.SITE_DETAIL_PAGE, new PageInfo("Detail Page","/sites/videos/detail.jsp", null));
		pageRouteMap.put(PageType.SITE_SHARE_PAGE, new PageInfo("Share Page","/sites/videos/share.jsp", null));
	}
	
	public static void prepareAndForward(HttpServletRequest req, HttpServletResponse resp, PageType pageType) 
			throws ServletException, IOException {
		
		PageInfo page = pageRouteMap.get(pageType);
		
		req.setAttribute("page", page);
		req.getRequestDispatcher("/admin/layout.jsp").forward(req, resp);
		
	}
	
	public static void prepareAndForwardSite(HttpServletRequest req, HttpServletResponse resp, PageType pageType) 
			throws ServletException, IOException {
		
		PageInfo page = pageRouteMap.get(pageType);
		
		req.setAttribute("page", page);
		req.getRequestDispatcher("/HTML/FormDN.jsp").forward(req, resp);
		
	}
	
	private String title;
	private String contentUrl;
	private String scriptUrl;
	
	
	
	public PageInfo(String title, String contentUrl, String scriptUrl) {
		super();
		this.title = title;
		this.contentUrl = contentUrl;
		this.scriptUrl = scriptUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentUrl() {
		return contentUrl;
	}
	public void setContentUrl(String contentUrl) {
		this.contentUrl = contentUrl;
	}
	public String getScriptUrl() {
		return scriptUrl;
	}
	public void setScriptUrl(String scriptUrl) {
		this.scriptUrl = scriptUrl;
	}
	
	
	
}
