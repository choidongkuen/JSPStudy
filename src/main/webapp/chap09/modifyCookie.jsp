<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	// Cookie 의 값을 수정하는 방법
	// 특정 이름을 가지는 쿠키의 값을 수정하기 위해서는 해당 이름을 가지는 쿠기가 존재 해야 한다.
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		// for 문을 돌면서
		for (int i = 0 ; i < cookies.length ; i++) {
			// 해당 이름과 동일한 이름의 쿠키가 있다면
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name",
					URLEncoder.encode("JSP프로그래밍", "utf-8"));
				// 새로운 값을 설정 후, 응답 객체를 통해 응답한다.
				response.addCookie(cookie);
			}
		}
	}
%>
<html>
<head><title>값 변경</title></head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>
