<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setAttribute("name", "최범균");
%>
<html>
<head><title>EL Object</title></head>
<body>

요청 URI: ${pageContext.request.requestURI}<br>
요청 URI: <%=request.getRequestURI() %> <br> <!-- 아래나 위나 똑같음. -->


request의 name 속성: ${requestScope.name}<br>
request의 name 속성: <%=request.getAttrubyte("name") %><br> <!-- 아래나 위나 똑같음. -->


<!--  //파라미터의 코드를 출력하여라. url에 직접 = test 라고 치면 파라미터가 test라고 출력된다. -->
code 파라미터: ${param.code}<br> 
code 파라미터: <%= request.getParameter("code") %> <br> <!-- 아래나 위나 똑같음. -->
</body>
</html>
