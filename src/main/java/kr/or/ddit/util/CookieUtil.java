package kr.or.ddit.util;

public class CookieUtil {

	private String[] cookie;

	public CookieUtil(String cookieString) {
		cookie = cookieString.split("; ");
		// cookie[0] ~ cookie[2]. "userId=brown" ...
	}
	
	public String getCookieValue(String string) {
		String[][] cookie_arr = new String[cookie.length][2];
		for(int i = 0; i < cookie.length; i++){
			cookie_arr[i] = cookie[i].split("=");
		}
		// cookie_arr[0] -> ["userId", "brown"]
		
		String result = null;
		for(int i = 0; i < cookie.length; i++){
			if(string.equals(cookie_arr[i][0])){
				result = cookie_arr[i][1];
				break;
			}
		}
		// cookie_arr[0][0], [0][1] -> "userId", "brown" 
		
		return result;
	}

}











