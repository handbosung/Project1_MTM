<%-- <%@page import="com.itwillbs.product.db.ProductDTO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.itwillbs.product.db.ProductDAO"%>
<%@page import="com.itwillbs.product.db.ProductDTO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap">
<link href="../css/header.css" rel="stylesheet" />
<link href="../css/main_styles.css" rel="stylesheet" />
<link href="../css/jquery.bxslider.css" rel="stylesheet" />
<title>쇼핑몰 메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script>
    $(document).ready(function(){
      $(".slider").bxSlider({
    	  infiniteLoop: false,
    	  hideControlOnEnd: true,
    	  slideWidth: 1000
      });
    });
  </script>
</head>
<body>
<div id="all">
   <%@ include file="../main/header.jsp"%>
   <!-- 이벤트 슬라이더 -->
   <div class="slider-container">
      <div class="slider">
         <img src="event1.png" alt="이미지 1">
         <img src="event2.png" alt="이미지 2">
         <img src="event3.png" alt="이미지 3">
      </div>
   </div>
<!--    <script src="maineventScript.js"></script> -->

<!-- 추천상품 -->
   <div class="title">추천 상품</div>
   <div class="container">
      <c:forEach var="product" items="${dto}">
      <c:set var="fileNameArr" value="${fn:split(product.file_name, ',')}" />
         <div class="product  
         <c:if test="${product.deal_status == 0 }">
            disabled
         </c:if>"
         onclick="toProductContent('../product/ProductContent.com?bno=${product.bno}')" >            
         <img src="<%=request.getContextPath() %>/upload/${fileNameArr[0] }"
               alt="${product.title}" >
            <div class="product-info">
               <h3>[${product.deal_way }]${product.title }</h3>
            </div>
            <div class="product-price">
               <p>
                  <fmt:formatNumber value="${product.price }" />
                  원
               </p>
            </div>
         </div>
      </c:forEach>
   </div>
   
<!-- 최신상품 -->
   <div class="title">최신 상품</div>
   <div class="container">
   
      <c:forEach var="product" items="${dto2}">
      <c:set var="fileNameArr" value="${fn:split(product.file_name, ',')}" />
         <div class="product
         <c:if test="${product.deal_status == 0 }">
            disabled
         </c:if>"
         onclick="toProductContent('../product/ProductContent.com?bno=${product.bno}')">            
         <img src="<%=request.getContextPath() %>/upload/${fileNameArr[0]}"
               alt="${product.title}" >
            <div class="product-info">
               <h3>[${product.deal_way }]${product.title }</h3>
            </div>
            <div class="product-price">
               <p>
                  <fmt:formatNumber value="${product.price }" />
                  원
               </p>
            </div>
         </div>
      </c:forEach>
   </div>
   
<script>
  function toProductContent(url) {
      window.location.href = url;
  }
</script>
   
   <footer>
      <p>&copy; 1조 전자기기 중고거래</p>
   </footer>
   </div>
</body>
</html>