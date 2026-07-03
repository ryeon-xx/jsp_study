<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include 액션 태그 실습</title>
</head>
<body>
<h1>include 액션 태그 실습</h1>
현재 시간을 구하는 예제입니다. 다음 줄에 삽입이 됩니다. <br>

<jsp:include page="header2.jsp" flush="true">
    <jsp:param name="nickName" value="Mr Hong"/>
</jsp:include>
</body>
</html>

<%--
     <jsp:include /> 액션 태그
       - <jsp:include page="삽입될 페이지" flush="true"/>

       - 동적으로 삽입이 이루어짐.
       - 내용물이 소스 차원에 포함되는 것이 아니고 지정한 페이지의 실행 결과가 포함됨 (메소드 호출과 유사)
--%>

<%--
    포함될 페이지에 임의의 파라미터 값을 지정하여 요청 가능
    <jsp:include page="삽입될 페이지" flush="true">
        <jsp:param name="파라미터 명" value="값" />
        <jsp:param name="파라미터 명" value="값" />
    </jsp:include>
--%>