<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String sid =(String) session.getAttribute("sid");
    String sname=(String) session.getAttribute("sname");
    %>
	<nav class="navbar navbar-expand-lg navbar-light bg-danger" >
	  <a class="navbar-brand" href="index.jsp">Baskinrobbins</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="./product/month.jsp">FLAVOR OF MONTH<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#"></a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
				MENU
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">아이스크림</a>
	          <a class="dropdown-item" href="#">아이스크림케이크</a>
	          <a class="dropdown-item" href="#">음료</a>
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
	          <a class="dropdown-item" href="GetQnACtrl">QnA</a>
	          <a class="dropdown-item" href="#"></a>
	        </div>
	      </li>
	    </ul>
	 	<ul class="nav justify-content-end">
	 	<% if(sid!=null) {%>
		  <li class="nav-item">
		  <span class="nav-link"><%=sname %>님</span>
		    <a class="nav-link active" href="LogOutCtrl">LOGOUT</a> 
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="./custom/membership.jsp">JOIN</a>
		  </li>
		  <% if(sid.equals("admin")) {%>
		  <li class="nav-item">
		  	<a class="nav-link" href="./admin/index.jsp">관리자모드</a>
		  </li>
		  <%} %>
		 <% }else{ %>
		 <li class="nav-item">
		    <a class="nav-link active" href="./custom/login.jsp">LOGIN</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="./custom/membership.jsp">JOIN</a>
		  </li>
		  <%}%>
		</ul>
	  </div>
	</nav>