<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
    <title>리뷰 상세보기</title>
    
    <style type="text/css">
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;    
        }
    
        #detailBoard{
            text-align :center;
        }
        
        #title{
            height : 16;
            font-family :'돋움';
            font-size : 12;
            text-align :center;
            background-color: #F7F7F7;
        }
        
        #btn{
            font-family :'돋움';
            font-size : 14;
            text-align :center;
        }
 
    </style>
    
    <script type="text/javascript">
        function changeView(value)
        {
            if(value == 0)    
                location.href='BoardListAction.bo?page=${pageNum}';
            else if(value == 1)
                location.href='BoardReplyFormAction.bo?num=${board.board_num}&page=${pageNum}';
        }
        
        function doAction(value)
        {
            if(value == 0) // 수정
                location.href="BoardUpdateFormAction.bo?num=${board.board_num}&page=${pageNum}";
            else if(value == 1) // 삭제
                location.href="BoardDeleteAction.bo?num=${board.board_num}";
        }
        
 
        var httpRequest = null;
        
        // httpRequest 객체 생성
        function getXMLHttpRequest(){
            var httpRequest = null;
        
            if(window.ActiveXObject){
                try{
                    httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
                } catch(e) {
                    try{
                        httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e2) { httpRequest = null; }
                }
            }
            else if(window.XMLHttpRequest){
                httpRequest = new window.XMLHttpRequest();
            }
            return httpRequest;    
        }
        
        // 댓글 등록
        function writeCmt()
        {
            var form = document.getElementById("writeCommentForm");
            
            var board = form.reviewinfo.value
            var id = form.userno.value
            var content = form.reviewcontents.value;
            
            if(!content)
            {
                alert("내용을 입력하세요.");
                return false;
            }
            else
            {    
                var param="reviewinfo="+board+"&userno="+id+"&reviewcontents="+content;
                    
                httpRequest = getXMLHttpRequest();
                httpRequest.onreadystatechange = checkFunc;
                httpRequest.open("POST", "CommentWriteAction.co", true);    
                httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=EUC-KR'); 
                httpRequest.send(param);
            }
        }
        
        function checkFunc(){
            if(httpRequest.readyState == 4){
                // 결과값을 가져온다.
                var resultText = httpRequest.responseText;
                if(resultText == 1){ 
                    document.location.reload(); // 상세보기 창 새로고침
                }
            }
        }
    
    </script>
</head>
<body>
 
<div id="wrap">
    <br><br>
    <div id="board">
        <table id="detailBoard" width="800" border="3" bordercolor="lightgray">
        
            <tr>
                <td id="title">작성일</td>
                <td>${board.board_date}</td>
            </tr>
            <tr>
                <td id="title">작성자</td>
                <td>${board.board_id}</td>
            </tr>
           
            <tr>
                <td id="title">
                    내 용
                </td>
                <td>
                    ${board.board_content}
                </td>        
            </tr>
            <tr>
                <td id="title">
                    첨부파일
                </td>
                <td>
                    <a href='FileDownloadAction.bo?file_name=${board.board_file}'>${board.board_file}</a>
                </td>    
            </tr>
    
            <tr align="center" valign="middle">
                <td colspan="5">
                <c:if test="${sessionScope.sessionID !=null}">
                    <c:if test="${sessionScope.sessionID == board.board_id}">
                        <input type="button" value="수정" onclick="doAction(0)">
                        <input type="button" value="삭제" onclick="doAction(1)">
                    </c:if>
                        <input type="button" value="답글" onclick="changeView(1)" >
                </c:if>        
                    <input type="button" value="목록" onclick="changeView(0)">            
                </td> <!-- javascript:location.href='BoardListAction.bo?page=${pageNum}' -->
            </tr>
        </table>
    </div>
    <br><br>
    
    <!-- 댓글 부분 -->
    <div id="comment">
        <table border="1" bordercolor="lightgray">
    <!-- 댓글 목록 -->    
    <c:if test="${requestScope.commentList != null}">
        <c:forEach var="comment" items="${requestScope.commentList}">
        
            <tr>
                <!-- 아이디, 작성날짜 -->
                <td width="150">
                    <div>
                        ${comment.userno}<br>
                        <font size="2" color="lightgray">${comment.reviewdate}</font>
                    </div>
                </td>
                <!-- 본문내용 -->
                <td width="550">
                    <div class="text_wrapper">
                        ${comment.reviewcontents}
                    </div>
                </td>
                <!-- 버튼 -->
                <td width="100">
                    <div id="btn" style="text-align:center;">
                        <a href="#">[답변]</a><br>
                    <!-- 댓글 작성자만 수정, 삭제 가능하도록 -->    
                    <c:if test="${comment.userno == sessionScope.sessionID}">
                        <a href="#">[수정]</a><br>    
                        <a href="#">[삭제]</a>
                    </c:if>        
                    </div>
                </td>
            </tr>
            
        </c:forEach>
    </c:if>
            
            <!-- 로그인 했을 경우만 댓글 작성가능 -->
            <c:if test="${sessionScope.sessionID !=null}">
            <tr bgcolor="#F5F5F5">
            <form id="writeCommentForm">
                <input type="hidden" name="reviewinfo" value="${board.reviewno}">
                <input type="hidden" name="userno" value="${sessionScope.sessionID}">
                <!-- 아이디-->
                <td width="150">
                    <div>
                        ${sessionScope.sessionID}
                    </div>
                </td>
                <!-- 본문 작성-->
                <td width="550">
                    <div>
                        <textarea name="reviewcontent" rows="4" cols="70" ></textarea>
                    </div>
                </td>
                <!-- 댓글 등록 버튼 -->
                <td width="100">
                    <div id="btn" style="text-align:center;">
                        <p><a href="#" onclick="writeCmt()">[댓글등록]</a></p>    
                    </div>
                </td>
            </form>
            </tr>
            </c:if>
    
        </table>
    </div>
</div>    
 
</body>
</html>
