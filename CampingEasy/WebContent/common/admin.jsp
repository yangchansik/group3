<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") == null){ //값이 없으면
		//강제로 페이지 이동
		//response.sendRedirect("index.jsp");
		out.print("<script>");
			out.print("alert('관리자만 접근 가능합니다.');");	
			out.print("location.href='index.jsp'");	
		out.print("</script>");
	}
%> 