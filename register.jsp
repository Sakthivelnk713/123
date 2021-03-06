<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
footer {
      background-color: #282828;
      color: white;
      padding: 20px;
    }
    .carousel-indicators.right {
    
    top: auto;
    bottom: 15px;
    text-align: right;
}
</style>

<title>Musicaa</title>
</head>

<body>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<nav role="navigation" class="navbar navbar-inverse"
		style="box-shadow: 3px 3px 1px #B0B0B0 ">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" data-target="#navbarCollapse"
			data-toggle="collapse" class="navbar-toggle">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a href="#" class="navbar-brand"
			style="font-family: Brush script MT, cursive; font-size: 30px; font-color: #FFFFFF; text-shadow: 10px 10px 0px #303030;">Musicaa</a>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	
	<div id="navbarCollapse" class="collapse navbar-collapse">
	
			<ul class="nav navbar-nav">
				<li class="action"><a href="home"><span
						class="glyphicon glyphicon-home"> Home</span></a></li>
			
	
	</ul>
	
		<!--ul class="nav navbar-nav">
			<li class=" active"><a href="#">Home</a></li>
		
			
			<!-- li class="action"><a href="hotdeals.jsp">Hot deals</a></li>
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#">Musical Instruments <b
					class="caret"></b></a>
				<ul role="menu" class="dropdown-menu"
					style="background-color: black; box-shadow: 2px 2px 4px 4px #707070;">
					<li><a href="guitars.jsp">guitars</a></li>
					<li><a href="violin.jsp">violin</a></li>
					<li><a href="piano.jsp">Piano</a></li>
					<li class="divider"></li>
					<li><a href="classicalinstruments.jsp">Classical
							Instruments</a></li>
				</ul></li-->
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span> Signin</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span
					class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

		</ul>
	</div>
	</nav>

	
		<div class="col-sm-2 sidenav">
		<div class="page-header">
				<h1>				
					MENU
				</h1>
				</div>
			   	<c:forEach items="${categoryList}" var="category">
		<ul class="dropdown"><a class="drop-toggle"
					data-toggle="dropdown" href="${category.name}" style="color:black">${category.name}</a>
				<ul class="dropdown-menu">
						
					<c:forEach items="${category.products}" var="product">

						<ul><a href="<c:url value='product/get/${product.name}' />" style="color:black">${product.name}</a></ul>

					</c:forEach>

				</ul></ul>
		</c:forEach>
			   
				</div>	
			
		</div>
	
	<div id="home">
	<c:if test="${clickedHome==true}">
</c:if>


		<!-- Wrapper for slides -->
	
		<div class="col-sm-7">

				<div id="myCarousel" class="carousel slide">
				<div class="carousel-inner">
				  <div class="item active">
					<img src="<c:url value="/resources/images/car1.png"/>" alt=""/>
					

				  </div>
				  <div class="item">
					<img src="<c:url value="/resources/images/car2.png"/>" alt=""/>
					
				  </div>

				  <div class="item">
					<img src="<c:url value="/resources/images/car3.png"/>" alt=""/>
				  </div>
				</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			</div>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ul class="carousel-indicators right">
			<li data-target="#Mycarousel" data-slide-to="0" class="active"></li>
			<li data-target="#Mycarousel" data-slide-to="1"></li>
			<li data-target="#Mycarousel" data-slide-to="2"></li>

</ul>
</div>
			
		
	<div class="container-fluid text-center">
			<center>
				<h1>
					<font face="TIMES NEW ROMAN" color=#000000>Compose your own
						music</font>
				</h1>
				<h3>
					<font face="TIMES NEW ROMAN" color=#484848>MUSICAL
						INSTRUMENTS</font>
				</h3>
			</center>

		<br>
		<div class="container-fluid text-center">    
  <h3><font color=#000000>HOT SALE</font></h3><br>
  </div>

 <div class="col-sm-12">
  <div class="row">
    <div class="col-sm-4">
   <a href="productView"><img src=<c:url value="/resources/images/gt2.jpg"/> class="img-responsive" style="height:200px; width:100%; box-shadow:8px 8px 0px 0px #000000;" alt="Image"></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>GUITARS</font></p>
    </div>
  
 <div class="col-sm-4">
 
   <a href="#" ><img src=<c:url value="/resources/images/pn1.png"/> class="img-responsive" style="height:200px;width:100%;box-shadow:8px 8px 0px 0px #000000; " alt="Image"></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>PIANO</font></h4>
    </div>
    <div class="col-sm-4">
   <a href="#"></a>  <img src=<c:url value="/resources/images/y1.jpg"/> class="img-responsive" style="height:200px;width:100%;box-shadow:8px 8px 0px 0px #000000" alt="Image">
      <h4><font face="TIMES NEW ROMAN" color=#101010>VIOLIN</font></h4>
      </div>
     
    

     
  <div class="row">
    <div class="col-sm-4">
   <a href="#"><img src=<c:url value="/resources/images/ky1.jpg"/> class="img-responsive" style="height:200px; width:100%; box-shadow:8px 8px 0px 0px #000000;" alt="Image"></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>KEYBOARD</font></p>
    </div>
  
 <div class="col-sm-4">
 
   <a href="#" ><img src=<c:url value="/resources/images/d3.png"/> class="img-responsive" style="height:200px;width:100%;box-shadow:8px 8px 0px 0px #000000; " alt="Image"></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>DRUMS</font></h4>
    </div><div class="col-sm-4">
   <a href="#"></a>  <img src=<c:url value="/resources/images/tp2.png"/> class="img-responsive" style="height:200px;width:100%;box-shadow:8px 8px 0px 0px #000000" alt="Image">
      <h4><font face="TIMES NEW ROMAN" color=#101010>TRUMPET</font></h4>
 
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      <div class="col-sm-3">
      <%@ include file="signup.jsp" %>
      
	
	
	
      </div>
      
     
      
    
  
  
            
<div class="col-sm-12">
<div class="row">
<footer class="container-fluid text-right">
	
		<h4><a href="#" style="color:grey">contact us</a>       <span> | </span>       <span><a href="#" style="color:grey">follow us</a></span>        <span> | </span>           <span><a href="#" style="color:grey">about us</a></span></h4>		
		</div>
		</div>
				</footer>
				
		
			
		
    


	
	<div id="product/get/${product.id}">
		<c:if test="${clickedProductViews==true}">
			<%@include file="singleProductView.jsp"%>
		</c:if>
	</div>

	
	
      
</body>
</html>

            
      
      
		
	




						
		



		