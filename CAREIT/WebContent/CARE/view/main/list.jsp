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

<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		
		
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
			

				<div class="box-tools pull-right">
					
					
				</div>
			</div>
		
						</table>
				<div class="review-list">
				<c:if test="${!view.isEmpty()}">
				<table border="1">
				<c:forEach var="message" items="${view.messageList}">
													<div class="clearfix">
														<div class="float-left">
															<h6><i class="fa fa-calendar"></i> ${message.reviewdate}</h6>
															<h6>By ${message.userno}</h6>
															
															
															<ul class="list-unstyled list-inline rating-star-list">
																<li class="list-inline-item"><i class="fa fa-star"></i></li>
																<li class="list-inline-item"><i class="fa fa-star"></i></li>
																<li class="list-inline-item"><i class="fa fa-star"></i></li>
																
																
																<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
																<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
															</ul>
															
														</div>
														<img src="images/coffee-image1.jpg" alt="Image" class="img-fluid float-right">
													</div>
													<div class="review-list-content">
													<p>????????????: ${message.reviewcontents}</p>
													<p>??????: ${message.avgscore}</p>
													<p>????????? ??????: ${message.reviewno}</p>
													</div>
												</div>
												</c:forEach>
												<tr>
									<td>
										
										<p><a href="confirmDeletion.jsp?messageId=${message.reviewno}">[????????????]</a></p>
									</td>
								</tr>
								
						<div>
							<c:forEach var="pageNum" begin="1" end="${view.totalPages}">
								<span><a href="list.jsp?page=${pageNum}">[${pageNum}]</a></span>
							</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
			<!-- /.box-body -->
			
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->
</div>




<script>    // ??????????????? form submit ????????? ??????
	$(function() {
		$("#writeForm").submit(function() {
			var formData = {    // Plain Object ????????? form??? data ??????
				reviewcontents: this.reviewcontents.value
			};
			
			$.ajax({
				url: "/CAREIT/CARE/view/guestbook/writeMessage.jsp",
				method: "POST",
				data: formData,
				success: function() {    // ?????? ?????? ??? (HTTP 200 OK)
					$("#writeForm [name=reviewcontents]").val("");    // ???????????? ?????? ?????????
					$("#list").load(window.location.href + " #list");    // ???????????? ????????????
				}
			});
			
			event.preventDefault();    // submit ??? ????????? ???????????? ??????
		});
	});
</script>
</table>
</div>
</div>
</section>
</div>
