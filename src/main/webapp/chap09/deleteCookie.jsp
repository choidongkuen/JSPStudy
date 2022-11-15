<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	// JSP는 별도의 쿠키 삭제 메소드를 제공하지 않는다.
	// Cookie 객체의 setMaxAge 메소드를 이용해서 유효시간을 0으로 지정하자.
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0 ; i < cookies.length ; i++) {
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name", "");
				// 유효시간 0으로 지정 -> 해당 쿠키를 삭제하겠다.
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}

	// deleteCookie.jsp 를 실행 후 viewCookie.jsp 를 실행하면 해당 쿠키가 삭제
%>
<html>
<head><title>쿠키 삭제</title></head>
<body>
name 쿠키를 삭제합니다.
</body>
</html>
