<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSTL 테스트</h1>

<c:if test="${role == 'ADMIN'}">관리자</c:if>
<c:if test="${role != 'ADMIN'}">일반회원</c:if>
<%--
    <c:if> 태그
     - 조건 처리를 할 때 사용하는 태그
     - 자바의 if문과 동일

    <c:if test = "조건식" var = "변수명" scope = "scope값" >
        문장
    </c:if>
     - 조건식이 참인 경우 출력
     - var가 지정되어 있다면 조건식 검사 결과를 변수에 저장
     - else 는 없음 -> 부정표현으로 if문 추가
--%>

<table>
<%--
     <c:forEach> 태그
      - 반복 처리 시 사용하는 태그, for문과 비슷

     <c:forEach var="변수명" items="객체명" begin="시작인덱스" end="끝인덱스" step="증가값" varStatus="other변수">
         문장
     </c:forEach>
      ▪ items 속성 : 배열이나 List 형태의 반복할 객체 지정
      ▪ var : 반복문에서 사용할 아이템 변수
        for(PhoneInfo pi : list)의 형태와 동일
      ▪ varStatus : 반복문의 상태에 대한 참조 변수

     - varStatus 속성은 루프 정보를 담는 LoopTagStatus 객체를 이용
       ▪ index - 루프 실행에서 현재 인덱스
       ▪ count - 루프 실행 횟수
       ▪ begin - begin 속성의 값
       ▪ end - end 속성의 값
       ▪ step - step 속성의 값
       ▪ first - 현재 실행이 첫 번째 실행인 경우 true
       ▪ last - 현재 실행이 루프의 마지막 실행인 경우 true
       ▪ current - 콜렉션 중 현재 루프에서 사용할 객체

     - 현재 사용 항목의 인덱스 값은 varStatus 속성을 이용
       <c:forEach var = "item" items = "<%= someItemList %>" vatStatus = "status">
            ${status.index + 1} 번째 항목 : ${item.name}
       </c:forEach>
--%>
  <c:forEach var="member" items="${members}" varStatus="state">
    <tr>
      <td>${state.index}</td>
      <td>${member.name}</td>
      <td>${member.userid}</td>
    </tr>
  </c:forEach>
</table>

<br>
<hr>
<br>

<fieldset>
  <legend><h2>JSTL formatDate 실습</h2></legend>
  <ul>
    <li>${today}</li>
    <li><fmt:formatDate value="${today}" type="date"/></li>
    <li><fmt:formatDate value="${today}" type="time"/></li>
    <li><fmt:formatDate value="${today}" type="both"/></li>
    <li><fmt:formatDate value="${today}" type="both" timeStyle="long"/></li>
    <li><fmt:formatDate value="${today}" type="both" timeStyle="short"/></li>
    <li><fmt:formatDate value="${today}" pattern="YYYY-MM-dd HH:mm:ss"/></li>
    <li><fmt:formatDate value="${today}" pattern="YYYY-MM-dd a hh:mm:ss" /></li>
  </ul>
</fieldset>

<%--
     <fmt:formatDate> 태그
      - 날짜 데이터를 특정 포맷으로 설정 시 사용

     <fmt:formatDate value="값" type="타입" var="값" scope="값" dateStyle="날짜 스타일" timeStyle="시간스타일" />
       ▪ value : 실제 날짜와 시간을 설정
       ▪ type : time, date, both 중 하나
       ▪ dateStyle : 미리 정의된 날짜 스타일 형식
       ▪ timeStyle : 미리 정의된 시간 스타일 형식
       ▪ pattern : 사용자가 지정한 형식 스타일
         - "YYYY-MM-dd HH:mm:ss"  HH : 24시간제
         - "YYYY-MM-dd a hh:mm:ss" a : 오전/오후, hh : 12시간제
--%>

</body>
</html>
