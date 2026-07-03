<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>방문자 수 설정하기 화면</h1>
<%! int count; %>
<%
   count++;

   application.setAttribute("countValue", count);
%>
현재 방문자 수 : <%= count%>
</body>
</html>

<%--
    application 내장 객체
      - ServletContext 객체를 참조하는 변수
      - 로그 및 파일 접근, application scope에 저장되는 속성 설정 등을 구현
--%>

