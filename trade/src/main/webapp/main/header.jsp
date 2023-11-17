<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap">
<link href="../css/header.css?afterr" rel="stylesheet" />
<link href="./img/16px.ico" rel="shortcut icon" type="image/x-icon">
<title>헤더</title>
</head>
<body>

   <header>   
        
<!--         <script src="../product/listJS.js"></script> -->
<!-- 이거 그거임 상품목록 카테고리별로 바꾸는 자스 근데 아직 
구현 못해서 냅둘게요 -->

   <nav id="navbar">
      <div class="rgt">
      <span class="logo">
         <a href="../main/Main.com"><img alt="로고" src="./img/logo(MTM).png" id="logo"> </a>
      </span>   
      <div id="search">
         <div class="rgt1">
            <form action="../product/ProductList.com" method="get" class="search">
               <input type="text" name="search" placeholder="검색어 입력">
               <button type="submit" value="search">검색</button>
            </form>
         </div>

      </div>
      <div id="user-menu">
         <span class="user-menu">
            <c:if test="${empty user_id }">
                  <a href="../main/login.member" id="loginLink">로그인</a>
            </c:if>
            <c:if test="${!empty user_id }">
                  ${user_id }님   |   
                  <a href="../main/MemberLogout.member" id="logoutLink">로그아웃</a>
               </c:if>
               
               <!-- 아이디x 글등록 => 로그인창 --> 
               <c:if test="${empty user_id }">
                  <a href="../main/login.member" id="loginLink">글등록</a>
               </c:if>
               <c:if test="${!empty user_id }">
                  <a href="../product/ProductUpload.com">글등록</a>
               </c:if>
               
               <a href="../member/MemberInfo.member">마이페이지</a>
               <a href="../member/Member112.member">고객센터</a>
           </span>   
      </div>
      </div>
        
        <div id="category">
           <span class="category-a" id="category-aa"> <a href="../product/ProductList.com?category=삽니다">삽니다</a> <a href="../product/ProductList.com?category=팝니다">팝니다</a>
         </span>
   
           <span class="category-b">
               <a href="../product/ProductList.com?category=휴대폰%26태블릿">휴대폰&태블릿</a>
               <a href="../product/ProductList.com?category=데스크탑">데스크탑</a>
               <a href="../product/ProductList.com?category=노트북">노트북</a>
               <a href="../product/ProductList.com?category=게임기기">게임기기</a>
               <a href="../product/ProductList.com?category=가전제품">가전제품</a>
               <a href="../product/ProductList.com?category=카메라">카메라</a>
               <a href="../product/ProductList.com?category=음향기기">음향기기</a>
               <a href="../product/ProductList.com?category=기타">기타</a>
           </span>
        </div>
        
      <!-- <span class="user-menu">
            <a href="../main/login.member">로그인</a>
            <a href="../product/ProductUpload.com">글등록</a>
            <a href="#">찜</a>
            <a href="#">마이페이지</a>
        </span> -->
     </nav>
    </header>
    <!-- 나머지 콘텐츠 -->
</body>
</html>