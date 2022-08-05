package Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
   public static void add(HttpServletRequest req,String name,Object value){
	   HttpSession session = req.getSession();
	   session.setAttribute(name, value);
   }
   public static Object get(HttpServletRequest req,String name){
	   HttpSession session = req.getSession();
	   Object value =  session.getAttribute(name);
	   return value;
   }
   public static void invaildate(HttpServletRequest req){
	   HttpSession session = req.getSession();
	   session.invalidate();
   }
   public static boolean isLogin(HttpServletRequest req){
	   return get(req,"username")!=null;
   }
   public static String getLoginUser(HttpServletRequest req){
	   Object username = get(req,"username");
	   return username == null?null:username.toString();
   }
}
