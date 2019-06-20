<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Pokemon</title>
<style>
.background1 {
	background-image: url(/static/imgs/background1.jpg);
}
</style>
<meta charset="UTF-8">
<body class="background1">
	    <input type="button" value="change" style="play:none; position:absolute; color:black; right :60px;top:20px" />
		<input type="button" value="stop" style="play:none; position:absolute; color:black; right :10px;top:20px" />
		<script>
		var aBtn = document.getElementsByTagName('input');
		var arrUrl = [ '/static/imgs/background1.jpg','/static/imgs/background2.jpg', '/static/imgs/background3.jpg' ];
		var num = 0;
		var timer = null;
		var oBody = document.body;
		aBtn[0].onclick = function (){
		    clearInterval( timer );            // null、未定义
		    timer = setInterval(function(){
		        oBody.style.background  = 'url('+ arrUrl[num] +')';
		        num++;
		        num%=arrUrl.length;
		    }, 3000);
		};
		aBtn[1].onclick = function (){
		    clearInterval( timer );
		};
</script>
<script>
	function run1(clickedObj) {
		//$("#Firstline").fadeOut('slow');
		//$("#Secondline").fadeOut('slow');
		$("#Thirdline").fadeOut('slow');
		$('#music')[0].pause();
		$('#introduction-txt').fadeTo('slow',0.7);
		//$(clickedObj).animate({
			//width : '10px',
			//opacity : '0.2',
			//left : '900px',
			//top : '100px'
		//}, 12000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#pokemon")[0].play();
	}
	function onVideoEnd(){
		$("#moviebox").fadeOut('slow');
		$("#Firstline").fadeIn('slow');
		$("#Secondline").fadeIn('slow');
		$('#introduction-txt').animate({
			//bottom : '100px',
			right : '100px'
		}, 18000);
		$('#music')[0].play();
		//$('#waiting')[0].play();
	}
	(function()
			{
			  var bgCounter = 0,
			    backgrounds = [
			      "pic001.jpg",
			      "pic002.jpg",
			      "pic003.jpg"
			    ];
			  function changeBackground()
			  {
			    bgCounter = (bgCounter+1) % backgrounds.length;
			    $('body').css('backgrounds', '#000 url('+backgrounds[bgCounter]+') no-repeat');
			    setTimeout(changeBackground, 100);
			  }
			  changeBackground();
			})();
</script>
<script src="/static/jquery.min.js"></script>
</head>
    <audio id="music" controls="controls"
		src="/static/audio/first.mp3" ></audio>
	<div id="introduction-txt"
		style="display: none; font-size: 22px; color: black; position:absolute; right :10px;top:80px" >
		宝可梦剑盾PV <br /> <span style="font-size: 18px; color: black">
			——2019年冬季发售 </span><br />
	</div>
	<span id="Firstline" style="display: none; font-size: 30px; color: white;">click the corner!</span> 
	<span id="Secondline" style="display: none; font-size: 30px; color: white;">replay the video!</span>
	<span id="Thirdline" style="font-size: 30px; position:absolute; left :10px; top:620px; color: orange;">click me~</span>
	<img src="/static/imgs/girl.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 100px"
		onclick="run1(this);return false" />
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="pokemon" height="500px" controls="controls"
			src="/static/video/pokemon.mp4" onended="onVideoEnd();">
			</video>
	</div>
</body>
</html>