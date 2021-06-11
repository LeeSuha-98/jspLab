<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>방명록</title>
    
    <style type="text/css">
        #wrap {
            width: 700px;
            margin: 0 auto 0 auto;
        }
        
        #comment{
            text-align :left;
        }
        
        #listGuestForm{
            text-align :center;
            overflow:scroll; 
            overflow-x:hidden; 
            height:220px;
        }
        
        #writeGuestForm, #pageForm{
            text-align :center;
        }
        
   </style>
    
    <script type="text/javascript">
        // 입력값 체크
        function checkValue()
        {
            
            
            if(!document.guestbookInfo.guestbook_content.value){
                alert("내용을 입력하세요.");
                return false;
            }
        }
   </script>
    
</head>
<body>
 
    <br>
    <b><font size="5" color="gray">리뷰</font></b>
    <hr size="1" width="700">
    <br>
    
<div id="wrap">    
 
    <!-- 글 등록 부분 시작-->
    <div id="writeGuestForm">
        <form name="guestbookInfo" method="post" action="GuestbookWriteAction.ge"
            onsubmit="return checkValue()" >
            <table width="700">
               
                <tr><td colspan="4"> </td></tr>
                <tr>
                    <td colspan="4">
                        <textarea rows="7" cols="80" name="guestbook_content"></textarea>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="등록">
        </form>
    </div>
    <!-- 글 등록 부분 끝-->
 
    <!-- 글 목록 부분 시작 -->
    <div id="listGuestForm">
        <form method="post" name="">
        
            <!-- 방명록 내용 부분 -->
            <div id="comment">
                <c:forEach var="guestbook" items="${requestScope.list}">
                    <hr size="1" width="700">
                    <label>${guestbook.reviewno}</label>   
                    <label>${guestbook.reviewdate}</label>    
                    <a href="#">[답변]</a> 
                    <a href="#">[수정]</a> 
                    <a href="#">[삭제]</a><br>
                     ${reviewinfo.reviewcontents} <br>
                 </c:forEach>    
                     <hr size="1" width="700">
            </div>
                 
            <!-- 페이지 부분 -->
             <div id="pageForm">
                <c:if test="${startPage != 1}">
                    <a href='GuestbookListAction.ge?page=${startPage-1}'>[ 이전 ]</a>
                </c:if>
                
                <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
                    <c:if test="${pageNum == spage}">
                        ${pageNum} 
                    </c:if>
                    <c:if test="${pageNum != spage}">
                        <a href='GuestbookListAction.ge?page=${pageNum}'>${pageNum} </a>
                    </c:if>
                </c:forEach>
                
                <c:if test="${endPage != maxPage }">
                    <a href='GuestbookListAction.ge?page=${endPage+1 }'>[다음]</a>
                </c:if>
            </div> 
        </form>
     </div>
     <!-- 글 목록 부분 끝 -->
 
</div>
     
</body>
</html>

