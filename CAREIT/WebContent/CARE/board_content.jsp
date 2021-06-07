<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
	<script type="text/javascript">
	var mem_id = "${sessionScope.mem_id}"; // 로그인 확인
$(document).ready(function(){
	var isLike = "";
	$.get("is-like.ajax", {"board_num" : "${boardVo.board_num}"}, function(rData){
			var data = rData.trim(); //공백 제거
			if(data == "like"){
				$("#heartDiv").addClass("red");
			}else{
				$("#heartDiv").addClass("gray");
			}
			isLike = data;
	});
	
	
	$("#heartDiv > span:first").click(function(){ // 하트 변화
		var url = "board-like.ajax";
		var sData = {
					"board_num" : "${boardVo.board_num}"	
		};
		$.get(url, sData, function(rData){
			var data = rData.trim();
		});
		var hasRed = $("#heartDiv").hasClass("red");
		if(hasRed){
			$("#heartDiv").removeClass("red").addClass("gray");
		}else{
			$("#heartDiv").removeClass("gray").addClass("red");

		}
		var likeCountElem = $("#heartDiv > span:last");  // 좋아요 수 변화
		var strCount = likeCountElem.text();
		var iCount = parseInt(strCount);
		if(isLike == "like"){
			--iCount;
			isLike = "unlike";
		}else{
			++iCount;
			isLike = "like";
		}
		likeCountElem.text(iCount);	
	});	



<div id="heartDiv"><span>♥</span> <span>0</span></div>


	</script>