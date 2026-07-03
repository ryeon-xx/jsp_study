<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 표준 액션 태그</title>
</head>
<body>
<%
    Calendar cal = Calendar.getInstance();
    int hour = cal.get(Calendar.HOUR_OF_DAY);
    int minute = cal.get(Calendar.MINUTE);
    int second = cal.get(Calendar.SECOND);
%>
현재 시간은 <%= hour%> 시 <%= minute %> 분 <%= second %> 초 입니다.
</body>
</html>
