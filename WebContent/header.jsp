<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<nav class="navbar navbar-expand-lg navbar-light bg-warning" >
	  <a class="navbar-brand" href="index.jsp">Baskinrobbins</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">FLAVOR OF MONTH<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">회사소개</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
				MENU
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">아이스크림</a>
	          <a class="dropdown-item" href="#">아이스크림케이크</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">음료</a>
	          <a class="dropdown-item" href="#">커피</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">디저트</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
	          	영양성분 및 알레르기
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">아이스크림</a>
	          <a class="dropdown-item" href="#">음료</a>
	          <a class="dropdown-item" href="#">커피</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
	          	ABOUT
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="GetBoardListCtrl">공지사항</a>
	          <a class="dropdown-item" href="#">QnA</a>
	          <a class="dropdown-item" href="#"></a>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>