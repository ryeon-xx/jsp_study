<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Scope</h1>
<fieldset>
  <legend>Scope 실습</legend>
  <ul style="list-style: none;">
    <li>
      <h4>PageScope의 속성값은 : ${pageScope.scopeName} </h4><br>
       - 한 페이지 (servlet 또는 jsp 파일) 내에서만 가능 <br>
       - 일종의 지역 변수 <br>
       - EL(jsp) : pageScope <br>
       - Servlet : 지역변수 <br>
    </li>
    <hr>
    <li>
      <h4>RequestScope의 속성값은 : ${requestScope.scopeName}</h4> <br>
       - request 객체에 저장되는 속성 <br>
       - 접속이 끊길 때까지 유지 <br>
       - EL(jsp) : requestScope <br>
       - Servlet : HttpServletRequest <br>
    </li>
    <hr>
    <li>
      <h4>SessionScope의 속성값은 : ${sessionScope.scopeName}</h4> <br>
       - session 객체에 저장되는 속성 <br>
       - 세션이 만기 되기 전 까지 유지 <br>
       - EL(jsp) : sessionScope <br>
       - Servlet : HttpSession <br>
    </li>
    <hr>
    <li>
      <h4>ApplicationScope의 속성값은 : ${applicationScope.scopeName}</h4> <br>
       - application context에 저장되는 속성 <br>
       - 어플리케이션이 종료할 때까지 유지 <br>
       - EL(jsp) : applicationScope <br>
       - Servlet : ServletContext <br>
    </li>
    <hr>
    <li>
      <h4>EL에서 스코프 객체를 지정하지 않은 경우 속성 찾는 순서</h4><br>
       - page -> request -> session -> application <br>
        (특정 스코프에서 속성이 발견되면 그 값을 출력) <br>
      <br>
      scopeName 자동 찾기 : ${scopeName} <br>
      member의 이름(아이디) 형태 : ${member.name}(${member.userid}) <br>
    </li>
  </ul>
</fieldset>
</body>
</html>
