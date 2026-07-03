<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String name = "홍길동";
  out.println("이것은 out 내장 객체로 출력 : " + name + "<br>");
%>
이것은 expression tag로 출력 : <%= name%>
</body>
</html>

<%--
    out 내장 객체
     - 서블릿의 PrintWriter 객체와 동일한 기능의 JspWriter 객체를 참조
     - 데이터 출력 시 사용

     - expression tag 이용
       <%
          String name = "홍길동";
       %>
       <%= name%>

    - out 내장 객체 이용
      <%
         String name = "홍길동";
         out.print(name);
      %>
--%>