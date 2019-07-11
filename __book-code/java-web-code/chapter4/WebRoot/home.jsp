<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" import="java.util.*,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="视频教程,在线教程,教程,程序开发,数据库,网站建设,网页设计,建模,贴图,灯光,渲染,动画" />
<meta name="description" content=" 免费视频教程，轻松学习程序开发，动态网站建设，三维动画设计，学习之余，还可以结识志同道合的朋友！"/>
<title>窗内网 - 视频教程</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="mainbg">
  <P id=header><A class=logo title="窗内网" href="http://www.itzcn.com/"><SPAN>窗内网</SPAN></A> 
  <SPAN class=login>
  <%if(session.getAttribute("userid")!=null){
   %>
  您好, [<%=session.getAttribute("userid")%>]用户  | <a href="logout.jsp">注销</a>	 
  <%}else {%>
  <A href="register.html">注册</A> | <A href="login.html">登录</A>
  <%}%> 
  | <A href="help.html" target=_blank>帮助中心</A> | <A  href="#">设为首页</A> | <A href="javascript:window.external.addfavorite('','窗内网 - 视频教程')">加入收藏</A></SPAN> </P>
  <div id=nav_index>
    <div id="menu">
      <ul>
        <li class="header_menu_selected"><a href="./index.html" >学院首页</a></li>
        <li class="header_menu_noselected"><a href="teacher.html" >讲师风采</a></li>
        <li class="header_menu_noselected"><a href="book.html" >图书推荐</a></li>
        <li class="header_menu_noselected"><a href="./vspacecp.html" >个人中心</a></li>
        <li class="header_menu_noselected"><a href="http://bbs.itzcn.com" >窗内论坛</a></li>
        <li class="header_menu_noselected"><a href="http://blog.itzcn.com" >窗内博客</a></li>
        <li class="header_menu_noselected"><a href="http://home.itzcn.com" >我的空间</a></li>
        <li><span></span></li>
      </ul>
    </div>
    <ul>
      <li><span></span></li>
    </ul>
    <div class="search">
      <form name="searchform_header" method="post" action="./search.html">
        <input name="keywords" onfocus="searchinit()" type="text" class="search_text" id="keywords" value="找好友聊聊" />
        <input type="hidden" name="stype" value="1" />
        <input name="button" type="button" class="sub" id="button" onclick="searchform_header.submit();" />
      </form>
    </div>
  </div>
</div>
	<%
		if(session.getAttribute("userid")!=null){
	%>
	<h2>欢迎登录窗内网：<%=session.getAttribute("userid") %></h2>
	您登录的时间是：<%=new Date(session.getCreationTime()) %><br>
	是否是新创建的session：<%=session.isNew() %><br>
	<a href="logout.jsp">注销</a>						
	<%
		}else{
	%>
	<center style="margin-top: 20px">
  	对不起，您还没有登录， 请先<a href="login.jsp">登录</a>！<br>
    </center>
	<%} %>

<div class="clear"></div>
<div id="mainfoot">
  <DIV id=foot>
    <P class=foot><A href="aboutus.html">关于我们</A> | <A 
href="etrs.html">免责声明</A> | <A 
href="adver.html">广告合作</A> | <A 
href="knowledge.html">知识产权</A> | <A 
href="payment.html">支付方式</A> | <A 
href="contactus.html">联系方式</A> | <A 
href="zhaopin.html">加入我们</A> </P>
    <P><EM>Copyrights Reserved 2005-2010</EM> 窗内网(<EM>www.itzcn.com</EM>) <br>
      豫 <EM>ICP08104500</EM>号&nbsp;&nbsp;&nbsp;在线客服QQ群：<EM>33925615</EM><br/>
</br>
</P>
</DIV>
</div>
</body>
</html>