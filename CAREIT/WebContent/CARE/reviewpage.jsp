<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<link rel="stylesheet" href="style.css />

<!DOCTYPE html PUBLIC "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
<title>리뷰작성하기</title>
</head>
<body>
	<!-- <form action="write.do" method="post">
		<p>별점:
		<div class="starRating">
		<span class="starR1 on" value="1"></span>
		<span class="starR1" value="2"></span>
		<span class="starR1" value="3"></span>
		<span class="starR1" value="4"></span>
		<span class="starR1" value="5"></span>
		
		</div> -->
		별점: <p>
		<div id="commentWrite">
    <p id="star_grade">
        <a href="javascript_:void(0);" value="1">★</a>
        <a href="javascript_:void(0);" value="2">★</a>
        <a href="javascript_:void(0);" value="3">★</a>
        <a href="javascript_:void(0);" value="4">★</a>
        <a href="javascript_:void(0);" value="5">★</a>
    </p>
    내용 : <p>
    <textarea name="content" rows="10" cols="40" id="ccontents">
    ${param.title}</textarea>
    <button id="commentWriteBtn" input type="submit">리뷰 등록</button>
   
</div>

<div id="commentArea">

</div>
		
		
		
		<!-- <div class="starRev">
			<span class="starR on">별1</span> <span class="starR">별2</span> <span
				class="starR">별3</span> <span class="starR">별4</span> <span
				class="starR">별5</span>


			<script type="text/javascript">
				$('.starRev span').click(function() {
					$(this).parent().children('span').removeClass('on');
					$(this).addClass('on').prevAll('span').addClass('on');
					return false;
				});
			</script> -->
		<%-- 	
		</div>



		<p>
			리뷰 내용:<br />
			<textarea name="content" rows="10" cols="40">${param.title}</textarea>
		</p>

		<input type="submit" value="리뷰 등록">

	</form> --%>


</body>
<script src="//code.jquery.com/jquert-3.3.1.min.js"></script>
<script type="text/javascript" src="search001.js"></script>




<script>

    $(document).ready(function(){
        $("#star_grade a").click(function (){
            $(this).parent().children("a").removeClass("on")   ;  /* 별점의 on 클래스 전부 제거 */
            $(this).addClass("on").prevAll("a").addClass("on") ; /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        }) ;

        $("#commentWriteBtn").click(function(){
            let _data = {} ;
            
            _data.ccontents = $("#ccontents").val() ;
            _data.star = $("#star_grade").find(".on").length ;
            _data.cbnumber = "${boardView.bnumber}";


            console.log(_data) ;

            result = [
                {
                    cwriter : _data.cwriter ,
                    ccontents : _data.ccontents ,
                    star : _data.star
                }
            ] ;

            let output = "<table border='1'>" ;
            output += "<tr>" ;
            output += "<th>별점</th>";
            
         
            for(var i in result){
                output += "<tr>";
                output += "<td>" ;

                output += '<p id="star_grade_result">' ;
                output +=  '<a href="javascript_:void(0);" value="1">★</a>'  ;
                output +=  '<a href="javascript_:void(0);" value="2">★</a>'  ;
                output +=  '<a href="javascript_:void(0);" value="3">★</a>'  ;
                output +=  '<a href="javascript_:void(0);" value="4">★</a>'  ;
                output +=  '<a href="javascript_:void(0);" value="5">★</a>'  ;
                output += '</p>' ;

                output += "</td>" ;
                output += "<td>"+result[i].cwriter+"</td>";
                output += "<td>"+result[i].ccontents+"</td>";
                output += "</tr>";
            }
            output += "</table>";



            $("#commentArea").html(output);

            // 별점 표기
            $("#star_grade_result").find("a").filter(function (k,v){
                return $(v).attr("value") <= _data.star ? $(v).addClass("on") : $(v).removeClass("on") ;
            }) ;

            $("#star_grade").find("a").removeClass("on")   ;  /* 별점의 on 클래스 전부 제거 */
         
            $("#ccontents").val("");

            
            $.ajax({
                    url : "./commentwrite",
                     data : _data,
                     dateType : "json",
                     success : function(result){
                
                         var output = "<table border='1'>";
                         output += "<th>내용</th></tr>";
                         for(var i in result){
                             output += "<td>"+result[i].ccontents+"</td>";
                             output += "</tr>";
                         }
                         output += "</table>";
                
                         $("#commentArea").html(output);
                         $("#ccontents").val("");
                     },
                     error : function(){
                         console.log("댓글 등록 실패");
                     }
                 });
            
            
            

        }) ;
    }) ;



</script>





<!-- 
<script type="text/javascript">
$('.starRating span').click(function(){
	$(this).parent().children('span').removeClass('on');
	$(this).addClass('on').prevAll('span').addClass('on');
	var starValue = '별점 : '+$(this).attr("value");
	$('.starRating p').html(starValue);
	return false;
	
});
});
	</script>  -->
</html>
