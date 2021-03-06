<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="guestbook.model.Message"
		 import="guestbook.service.WriteMessageService" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="message" class="guestbook.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>

<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	int writeResult = writeService.writeMessage(message);    // 원래 메소드명은 write()였던 것으로 기억합니다.
    // WriteMessageService 클래스에서 msgDAO.insert()의 리턴값을 반환하도록 수정해야 합니다.
	if (writeResult == 0)	response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
%>
// ajax success handler의 매개변수로 밑의 내용이 전달됩니다. (저는 사용 안 함)
<html>

<head>
	<title>방명록 메시지 남김</title>
</head>

<body>
	방명록에 메시지를 남겼습니다.<br>
	<a href="food-details.jsp">[목록 보기]</a>
</body>

</html>