<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
  <title>exception 실습</title>
</head>
<body>
<h1>divide.jsp 발생된 예외를 처리하는 페이지</h1>
<%
    out.print("발생된 예외는 : " + exception.getMessage());
%>
</body>
</html>

<%--
     exception 객체
      - JSP 페이지 내에서 발생된 예외 클래스인 java.lang.Throwable 객체를 참조하는 변수
      - 예외 발생 시 예외를 처리하는 JSP 페이지를 따로 구현할 목적으로 사용
      - 반드시 page 지시어에서 isErrorPage="true"인 경우에만 사용 가능
        ▪ 기본값은 false
--%>