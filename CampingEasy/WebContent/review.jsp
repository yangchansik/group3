<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">



<!------ Include the above in your HEAD tag ---------->


<style type="text/css">
			.timeline {
			  list-style: none;
			  padding: 20px 0 20px;
			  position: relative;
			}
			.timeline:before {
			  top: 0;
			  bottom: 0;
			  position: absolute;
			  content: " ";
			  width: 3px;
			  background-color: #eeeeee;
			  left: 50%;
			  margin-left: -1.5px;
			}
			.timeline > li {
			  margin-bottom: 20px;
			  position: relative;
			}
			.timeline > li:before,
			.timeline > li:after {
			  content: " ";
			  display: table;
			}
			.timeline > li:after {
			  clear: both;
			}
			.timeline > li:before,
			.timeline > li:after {
			  content: " ";
			  display: table;
			}
			.timeline > li:after {
			  clear: both;
			}
			.timeline > li > .timeline-panel {
			  width: 46%;
			  float: left;
			  border: 1px solid #d4d4d4;
			  /*border-radius: 2px;*/
			  /*padding: 20px;*/
			  position: relative;
			  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
			  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
			}
			
			.timeline > li > .timeline-panel:before {
			  position: absolute;
			  top: 26px;
			  right: -15px;
			  display: inline-block;
			  border-top: 15px solid transparent;
			  border-left: 15px solid #ccc;
			  border-right: 0 solid #ccc;
			  border-bottom: 15px solid transparent;
			  content: " ";
			}
			.timeline > li > .timeline-panel:after {
			  position: absolute;
			  top: 27px;
			  right: -14px;
			  display: inline-block;
			  border-top: 14px solid transparent;
			  border-left: 14px solid #fff;
			  border-right: 0 solid #fff;
			  border-bottom: 14px solid transparent;
			  content: " ";
			}
			.timeline > li > .timeline-badge {
			  color: #fff;
			  width: 24px;
			  height: 24px;
			  line-height: 50px;
			  font-size: 1.4em;
			  text-align: center;
			  position: absolute;
			  top: 16px;
			  left: 50%;
			  margin-left: -12px;
			  /*background-color: #999999;*/
			  z-index: 100;
			  /*
			  border-top-right-radius: 50%;
			  border-top-left-radius: 50%;
			  border-bottom-right-radius: 50%;
			  border-bottom-left-radius: 50%;
			  */
			}
			.timeline > li.timeline-inverted > .timeline-panel {
			  float: right;
			}
			.timeline > li.timeline-inverted > .timeline-panel:before {
			  border-left-width: 0;
			  border-right-width: 15px;
			  left: -15px;
			  right: auto;
			}
			.timeline > li.timeline-inverted > .timeline-panel:after {
			  border-left-width: 0;
			  border-right-width: 14px;
			  left: -14px;
			  right: auto;
			}
			.timeline-badge > a {
			  color: #C5C7C5 !important;
			}
			.timeline-badge a:hover {
			  color: #FF531F !important;
			}
			.timeline-title {
			  margin-top: 0;
			  color: inherit;
			}
			.timeline-body > p,
			.timeline-body > ul {
			    padding:20px;
			    margin-bottom: 0;
			}
			.timeline-body > p + p {
			  margin-top: 5px;
			}
			.timeline-footer{
			    padding:20px;
			    background-color:#f4f4f4;
			}
			.timeline-footer > a{
			    cursor: pointer;
			    text-decoration: none;
			}
			.tooltip{
			
			    position:absolute;
			    z-index:1020;
			    display:block;
			    visibility:visible;
			    padding:5px;
			    font-size:11px;
			    opacity:0;
			    filter:alpha(opacity=0);
			    
			}
			.tooltip.in{
			    /*opacity:0;
			    filter:alpha(opacity=80);*/
			    
			}
			.tooltip.top{
			    margin-top:-2px;
			}
			.tooltip.right{
			    margin-left:2px;
			}
			.tooltip.bottom{
			    margin-top:2px;
			}
			.tooltip.left{
			    margin-left:-2px;
			}
			.tooltip.top .tooltip-arrow{
			    bottom:0;
			    left:0;
			    margin-left:0;
			    border-left:0 solid transparent;
			    border-right:5px solid transparent;
			    border-top:0 solid #000;
			}
			.tooltip.left .tooltip-arrow{
			    bottom:0;
			    left:0;
			    margin-left:0;
			    border-left:0 solid transparent;
			    border-right:5px solid transparent;
			    border-top:0 solid #000;
			}
			.tooltip.bottom .tooltip-arrow{
			    bottom:0;
			    left:0;
			    margin-left:0;
			    border-left:0 solid transparent;
			    border-right:5px solid transparent;
			    border-top:0 solid #000;
			}
			.tooltip.right .tooltip-arrow{
			    bottom:0;
			    left:0;
			    margin-left:0;
			    border-left:0 solid transparent;
			    border-right:5px solid transparent;
			    border-top:0 solid #000;
			}
			.tooltip-inner{
			    width:200px;
			    padding:3px 8px;
			    color:#fff;
			    text-align:center;
			    text-decoration:none;
			    background-color:#FF531F;
			    -webkit-border-radius:0px;
			    -moz-border-radius:0px;
			    border-radius:0px;
			}
			.tooltip-arrow{
			    position:absolute;
			    width:0;
			    height:0;
			}
			
	
			
</style>


<script>
$(document).ready(function(){
    var my_posts = $("[rel=tooltip]");
    for(i=0;i<my_posts.length;i++){
        the_post = $(my_posts[i]);
        if(the_post.hasClass('invert')){
            the_post.tooltip({ placement: 'left'});
            the_post.css("cursor","pointer");
        }else{
            the_post.tooltip({ placement: 'rigt'});
            the_post.css("cursor","pointer");
        }
    }
});
</script>
<jsp:include page="/common/top.jsp"></jsp:include>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dorneNav" aria-controls="dorneNav" aria-expanded="false" aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
<body>
 <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)"> 
<div class="container" style="padding-top:100px;">
    <div class="page-header text-center">
        <h1 id="timeline">Review</h1>
    </div>
    <ul class="timeline">
        <li>
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel" >
            <div class="timeline-heading">
            <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
            </div>
            <div class="timeline-body">
              <p>좋습니다</p>
              
            </div>
            
            <div class="timeline-footer">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
        
        <li  class="timeline-inverted">
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record invert" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel" >
            <div class="timeline-heading">
              <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
              
            </div>
            <div class="timeline-body">
              <p>nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
             
            </div>
            
            <div class="timeline-footer">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
              
            </div>
            <div class="timeline-body">
              <p>Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
              
            </div>
            
            <div class="timeline-footer">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
        
        <li  class="timeline-inverted">
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record invert" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
              
            </div>
            <div class="timeline-body">
              <p>nteressantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
              
            </div>
            
            <div class="timeline-footer">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel" >
            <div class="timeline-heading">
              <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
              
            </div>
            <div class="timeline-body">
              <p>eressantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
              
            </div>
            
            <div class="timeline-footer">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
        
        <li  class="timeline-inverted">
          <div class="timeline-badge primary"><a><i class="glyphicon glyphicon-record invert" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
          <div class="timeline-panel" >
            <div class="timeline-heading">
              <img class="img-responsive" src="http://lorempixel.com/1600/500/sports/2" />
              
            </div>
            <div class="timeline-body">
              <p>teressantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
              
            </div>
            
            <div class="timeline-footer primary">
                <a><i class="glyphicon glyphicon-thumbs-up"></i></a>
                <a><i class="glyphicon glyphicon-share"></i></a>
                <a class="pull-right">Continuar Lendo</a>
            </div>
          </div>
        </li>
   
        
    </ul>
</div>
</body>
<jsp:include page="/common/bottom.jsp"></jsp:include>
</html>