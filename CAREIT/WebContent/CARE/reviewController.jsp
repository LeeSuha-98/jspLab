<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>가입</title>
</head>
<body>
<% 
	String command = request.getParameter("command");
	System.out.println("<"+command+">");  //받아져온 command값이 출력된다.%>
	
	
	<script type="text/javascript">
		alert("글 수정 성공!!");
		location.href="boardcontroller.jsp?command=detail&seq=<%=seq%>";
	</script>


	
</body>
</html>

