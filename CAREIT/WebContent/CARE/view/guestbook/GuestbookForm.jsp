<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>����</title>
    
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
        // �Է°� üũ
        function checkValue()
        {
            
            
            if(!document.guestbookInfo.guestbook_content.value){
                alert("������ �Է��ϼ���.");
                return false;
            }
        }
   </script>
    
</head>
<body>
 
    <br>
    <b><font size="5" color="gray">����</font></b>
    <hr size="1" width="700">
    <br>
    
<div id="wrap">    
 
    <!-- �� ��� �κ� ����-->
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
            <input type="submit" value="���">
        </form>
    </div>
    <!-- �� ��� �κ� ��-->
 
    <!-- �� ��� �κ� ���� -->
    <div id="listGuestForm">
        <form method="post" name="">
        
            <!-- ���� ���� �κ� -->
            <div id="comment">
                <c:forEach var="guestbook" items="${requestScope.list}">
                    <hr size="1" width="700">
                    <label>${guestbook.reviewno}</label>   
                    <label>${guestbook.reviewdate}</label>    
                    <a href="#">[�亯]</a> 
                    <a href="#">[����]</a> 
                    <a href="#">[����]</a><br>
                     ${reviewinfo.reviewcontents} <br>
                 </c:forEach>    
                     <hr size="1" width="700">
            </div>
                 
            <!-- ������ �κ� -->
             <div id="pageForm">
                <c:if test="${startPage != 1}">
                    <a href='GuestbookListAction.ge?page=${startPage-1}'>[ ���� ]</a>
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
                    <a href='GuestbookListAction.ge?page=${endPage+1 }'>[����]</a>
                </c:if>
            </div> 
        </form>
     </div>
     <!-- �� ��� �κ� �� -->
 
</div>
     
</body>
</html>

