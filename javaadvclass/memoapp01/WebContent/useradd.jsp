<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.*" %>
<%
request.setCharacterEncoding("utf-8");       //한글처리

String userid = request.getParameter("id");  // 전 페이지에서 입력한 메모 내용 받기
String userpw = request.getParameter("pw");  // 전 페이지에서 입력한 메모 내용 받기
String username = request.getParameter("name");  // 전 페이지에서 입력한 메모 내용 받기

UserDAO dao = new UserDAO();                 // 객체 생성 ?? 매서드를 호출하기위해서

if (dao.exists(userid)) {
    out.print("<script language=javascript> alert('이미 존재하는 아이디입니다. 다시 설정하세요.');");%>
       history.back();         
       <%out.print("</script>");
 }else{
    dao.insert(userid, userpw, username); 
    session.setAttribute("userid", userid);
    response.sendRedirect("main.jsp");
    }

		
/* if (dao.exists(userid)) {
	out.print("<script language=javascript> alert('이미 있는 아이디입니다. 다시 설정하세요'); history.back(); </script>");
	response.sendRedirect("userjoin.jsp");   
}else {
	dao.insert(userid, userpw, username);
	session.setAttribute("userid",userid);
	response.sendRedirect("main.jsp");    
  
} */
// 메모 db에 삽입 후에 다시 main으로 돌아가 메모 목록 보기 
%>