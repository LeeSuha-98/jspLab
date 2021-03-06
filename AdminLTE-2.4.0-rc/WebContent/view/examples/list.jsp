<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="guestbook.model.Message"
		 import="guestbook.model.MessageListView"
		 import="guestbook.service.GetMessageListViewService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jspf" %>

<%
	GetMessageListViewService viewService = GetMessageListViewService.getInstance();
	String pageStr = request.getParameter("page");
	int pageNum = pageStr == null ? 1 : Integer.parseInt(pageStr);
    MessageListView view = viewService.getMessageListView(pageNum);
%>
<c:set var="view" value="<%= view %>" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Blank page <small>it all starts here</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Examples</a></li>
			<li class="active">Blank page</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">방명록</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool"
						data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<form method="post" id="writeForm">   // form에 ID 지정
					<p>이름: <input type="text" name="guestName"></p>
					<p>암호: <input type="password" name="password"></p>
					<p>메시지: <textarea name="message" cols="30" rows="3"></textarea></p>
					<p><input type="submit" value="메시지 남기기" /></p>
				</form>
				<hr>
				<div id="list">    // <c:if> 태그로 생성되는 글목록을 감싸는 wrapper 요소
					<c:if test="${view.isEmpty()}">
						<p>등록된 메시지가 없습니다.</p>
					</c:if>
					<c:if test="${!view.isEmpty()}">
						<table border="1">
							<c:forEach var="message" items="${view.messageList}">
								<tr>
									<td>
										<p>메시지 번호: ${message.id}</p>
										<p>손님 이름: ${message.guestName}</p>
										<p>메시지: ${message.message}</p>
										<p><a href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a></p>
									</td>
								</tr>
							</c:forEach>
						</table>
				
						<div>
							<c:forEach var="pageNum" begin="1" end="${view.totalPages}">
								<span><a href="messageList.jsp?page=${pageNum}">[${pageNum}]</a></span>
							</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
			<!-- /.box-body -->
			<div class="box-footer">Footer</div>
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="../include/footer.jspf" %>

<script>    // 제이쿼리로 form submit 이벤트 처리
	$(function() {
		$("#writeForm").submit(function() {
			var formData = {    // Plain Object 변수에 form의 data 저장
				guestName: this.guestName.value,
				password: this.password.value,
				message: this.message.value
			};
			
			$.ajax({
				url: "writeMessage.jsp",
				method: "POST",
				data: formData,
				success: function() {    // 요청 성공 시 (HTTP 200 OK)
					$("#writeForm [name=guestName]").val("").focus();
					$("#writeForm [name=password]").val("");
					$("#writeForm [name=message]").val("");    // 입력했던 정보 비우기
					$("#list").load(window.location.href + " #list");    // 글목록만 새로고침
				}
			});
			
			event.preventDefault();    // submit 시 페이지 이동하지 않게
		});
	});
</script>