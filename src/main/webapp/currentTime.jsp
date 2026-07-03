<%--
    속성명 : import, 기본값 : 없음, 설명 : import할 패키지 지정, 예 : import="java.util.ArrayList"
--%>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>currentTime 실습</title>
</head>
<body>
<h1>현재 날짜 출력 실습</h1>
<%--
    스크립틀릿 태그 (Scriptlet tag)
    <%
        자바 코드 문장;
        문장2;
    %>
--%>
<%
    Date d = new Date();
%>

<%--
    표현식 태그 (Expression tag)
    <%= 변수%>
    <%= 리턴 값이 있는 메소드%>
    예 : <%= (new java.ul.Date()).toLocaleString() %>
--%>
현재 날짜 : <%= d%>
</body>
</html>

<%--
    내장 객체
     - request     : HttpServletRequest 객체 참조
     - response    : HttpServletResponse 객체 참조
     - out         : 웹 브라우저 출력에 사용되는 JspWriter 객체 참조
     - session     : HttpSession 객체 참조 (session="true"인 경우에만 사용 가능)
     - application : ServletContext 객체 참조
     - page        : 자바 클래스의 this와 동일
     - config      : ServletConfig 객체 참조
     - exception   : 발생되는 예외의 Throwable 객체에 대한 참조
                     (isErrorPage="true"인 경우에만 사용 가능)
--%>