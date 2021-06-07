<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>게시글 수정</title>
</head>
<body>
<form action="modify.do" method="post">
<input type="hidden" name="no" value="${modReq.articleNumber}">
<p>
	번호:<br/>${modReq.articleNumber}
</p>

<p>
	내용:<br/>
	<textarea name="content" rows="5" cols="30">${modReq.content}</textarea>
</p>
<input type="submit" value="글 수정">
</form>
</body>
</html>