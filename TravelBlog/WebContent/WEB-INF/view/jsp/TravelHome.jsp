<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="description" content="Twitter botstrap tab" />
<script src="https://code.jquery.com/jquery.min.js"></script>
<link href="https://getbootstrap.com/2.3.2/assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://getbootstrap.com/2.3.2/assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<script src="https://getbootstrap.com/2.3.2/assets/js/bootstrap.js"></script>
<script>
  $(document).ready(function(){
  $("a[data-toggle='tab']").click(function(e){
    $(".tab-content").css("border-color",$(this).css('backgroundColor'));
  });
});
  </script>
  <style>
    body{
  font-family:Georgia;
}
a{
  color:black;
}
.nav .nav-tab{
  box-shadow: 0 1px 3px rgba(0,0,0,.25);
}
.tab-content{
  padding:3px 0px 0px 8px;
  
  border: 5px solid green;
  box-shadow: 0 1px 3px rgba(0,0,0,.25);
  margin-left:1px;
}
.box-shadow(@shadow: 0 1px 3px rgba(0,0,0,.25)) {
  -webkit-box-shadow: @shadow;
     -moz-box-shadow: @shadow;
          box-shadow: @shadow;
}
.w3-myfont {
  font-family: "Comic Sans MS", cursive, sans-serif;
}
  </style>
  </head>
<body>
<div class="w3-bar w3-teal">
  <div class="w3-bar-item  w3-myfont"><h4>TravelBlog<h4></div>
</div>
<div class="w3-sidebar w3-bar-block w3-blue-grey" style="width:15%">
  <h5 class="w3-bar-item">Menu</h5>
  <button class="w3-bar-item w3-button w3-hover-green tablink" onclick="OpenService(event, 'India')">India</button>
  <button class="w3-bar-item w3-button tablink" onclick="OpenService(event, 'Japan')">Japan</button>
  <button class="w3-bar-item w3-button tablink" onclick="OpenService(event, 'NA')">North America</button>
  <button class="w3-bar-item w3-button tablink" onclick="OpenService(event, 'Switzerland')">Switzerland</button>
  

</div>
<div class="container">
<div style="margin-left:130px">
  <div class="w3-padding">Select the service from left Nav bar to see the result</div>

  <div id="India" class="w3-container service" style="display:none">
    <ul class="nav nav-tabs" id="myTab" style="margin-bottom:0px">
              <li class="active"><a data-toggle="tab" href="#India1" style="background-color:BurlyWood; font-weight:bold;color:black"> Tab1 </a></li>
              <li><a data-toggle="tab" href="#India2" style="background-color:BurlyWood; font-weight:bold;color:black"></i> Tab 2</a></li>
              
            </ul>
			<div class="tab-content box-shadow" id="myTabContent" >
              <div id="India1" class="tab-pane fade in active">
				<p>${empName}</p>
              </div>
              <div id="India2" class="tab-pane fade">
            <p>${empAdr}</p>
			</div>
			  </div>
  </div>
  <div id="Japan" class="w3-container service" style="display:none">
    <h2>Japan</h2>
    <p>This is Japan</p>
  </div>
  <div id="NA" class="w3-container service" style="display:none">
    <h2>NA</h2>
    <p>This is NA</p>
  </div>
  <div id="Switzerland" class="w3-container service" style="display:none">
    <h2>Switzerland</h2>
    <p>This is Switzerland</p>
  </div>
  

  
  
</div>

</div>
<script>
function OpenService(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("service");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" w3-red", ""); 
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}
</script>

</body>
</html>
