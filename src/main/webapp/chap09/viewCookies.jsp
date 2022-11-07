<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLDecoder" %>
<html>
<head><title>쿠키 목록</title></head>
<body>
쿠키 목록<br>
<%
	// 웹브라우저가 전송한 쿠키 정보를 Cookie 인스턴스 배열로 받기
	Cookie[] cookies = request.getCookies();

	if (cookies != null && cookies.length > 0) {
		for (int i = 0 ; i < cookies.length ; i++) {
%>
	<%= cookies[i].getName() %> = 
	<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %><br>
<%
		}
	} else {
%>
쿠키가 존재하지 않습니다.
<%
	}
%>
</body>
</html>
