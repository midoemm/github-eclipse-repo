<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
  background-image: url(/static/imgs/6807834fly1fgu9ysaybzj20mh0k0gww.jpg);
  background-color: #000000;
  }
</style>
<script>
function run(clickedobj){
    $(clickedobj).animate({width:'10px',opacity:'0.2',left:'1800px',top:'100px'},4000);
}

</script>
<meta charset="UTF-8">
<title>The Wandering Earth </title>
<script src="/js/jquery-3.3.1.min.js"></script>
</head>
<body class="background1">
<h1 style="color:white">啊哈</h1>
<img src="/static/imgs/IMG_1798.JPG" style="position:absolute;left:10px;bottom:10px;width:200px" onclick="run(this);return false"/>
</body>
</html>