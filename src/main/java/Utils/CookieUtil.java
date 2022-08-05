package Utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {
	public static String get(String name, HttpServletRequest http) {
		Cookie[] cookies = http.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(name)) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	public static Cookie add(String name, String value, int hours, HttpServletResponse http) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(60 * 60 * hours);
		cookie.setPath("/");
		http.addCookie(cookie);
		return cookie;
	}
}
