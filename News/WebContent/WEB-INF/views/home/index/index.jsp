<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
<div class="content-wrap">
<div class="content">
  <div id="focusslide" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
	  <li data-target="#focusslide" data-slide-to="0" class="active"></li>
	  <li data-target="#focusslide" data-slide-to="1"></li>
		<li data-target="#focusslide" data-slide-to="2"></li>
		<li data-target="#focusslide" data-slide-to="3"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
	  <div class="item active">
	  <a href="https://baike.baidu.com/item/2020%E5%B9%B4/7709224?fromtitle=2020&fromid=371059&fr=aladdin" target="_blank" title="2020" >
	  <img src="../resources/home/images/side1.png" alt="2020" class="img-responsive"></a>
	  </div>
	  <div class="item">
	  <a href="http://news.cctv.com/" target="_blank" title="news" >
	  <img src="../resources/home/images/side2.png" alt="news" class="img-responsive"></a>
	  </div>
		<div class="item">
			<a href="http://www.stdaily.com/" target="_blank" title="earth" >
				<img src="../resources/home/images/side3.jpg" alt="earth" class="img-responsive"></a>
		</div>
		<div class="item">
			<a href="#" target="_blank" title="people" >
				<img src="../resources/home/images/side4.jpg" alt="people" class="img-responsive"></a>
		</div>
	</div>
	<a class="left carousel-control" href="#focusslide" role="button" data-slide="prev" rel="nofollow"> 
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
		<span class="sr-only">上一个</span> 
	</a> 
	<a class="right carousel-control" href="#focusslide" role="button" data-slide="next" rel="nofollow">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
		<span class="sr-only">下一个</span> 
	</a> 
	</div>
  <div class="title">
	<h3>最新发布</h3>
  </div>
  <c:forEach items="${newsList }" var="news">
  <article class="excerpt excerpt-1" style="">
  <a class="focus" href="../news/detail?id=${news.id }" title="${news.title }" target="_blank" ><img class="thumb" data-original="${news.photo }" src="${news.photo }" alt="${news.title }"  style="display: inline;"></a>
		<header><a class="cat" href="../news/category_list?cid=${news.categoryId }" title="${news.newsCategory.name }" >${news.newsCategory.name }<i></i></a>
			<h2><a href="../news/detail?id=${news.id }" title="${news.title }" target="_blank" >${news.title }</a>
			</h2>
		</header>
		<p class="meta">
			<time class="time"><i class="glyphicon glyphicon-time"></i> <fmt:formatDate value="${news.createTime }" pattern="yyyy-MM-dd hh:mm:ss" /></time>
			<span class="views"><i class="glyphicon glyphicon-eye-open"></i> ${news.viewNumber }</span> 
			<a class="comment" href="../news/detail?id=${news.id }#comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i>${news.commentNumber }</a>
		</p>
		<p class="note">${news.abstrs }</p>
	</article>
	</c:forEach>
	<div class="ias_trigger" style="display:none;"><a href="javascript:;">查看更多</a></div>
</div>
</div>
<%@ include file="../common/sidebar.jsp" %>
</section>
<%@ include file="../common/footer.jsp" %>