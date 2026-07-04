<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSTL 라이브러리</h1>
<fieldset>
  <legend><h2>JSTL 라이브러리 표</h2></legend>
  <table border="1">
    <tr>
      <td> 라이브러리 </td>
      <td> URI </td>
      <td> Prefix </td>
      <td> 예제 </td>
    </tr>
    <tr>
      <td> Core </td>
      <td> http://java.sun.com/jsp/jstl/core </td>
      <td> c </td>
      <td> &lt;c:tag ... &gt; </td>
    </tr>
    <tr>
      <td> I18N formatting </td>
      <td> http://java.sun.com/jsp/jstl/fmt </td>
      <td> fmt </td>
      <td> &lt;fmt:tag ... &gt; </td>
    </tr>
    <tr>
      <td> Functions </td>
      <td> http://java.sun.com/jsp/jstl/functions </td>
      <td> fn </td>
      <td> fn:function(...) </td>
    </tr>
    <tr>
      <td> SQL </td>
      <td> http://java.sun.com/jsp/jstl/sql </td>
      <td> sql </td>
      <td> &lt;sql:tag ... &gt; </td>
    </tr>
    <tr>
      <td> XML processing </td>
      <td> http://java.sun.com/jsp/jstl/xml </td>
      <td> x </td>
      <td> &lt;x:tag ... &gt; </td>
    </tr>
  </table>

    <h3>taglib 지정자로 설정</h3>
    <p>&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;</p>
</fieldset>

<br>
<hr>
<br>

<fieldset>
  <legend><h2>JSTL Core 라이브러리</h2></legend>
  <p>- 기본적이고 핵심정인 기능들을 구현해놓은 라이브러리</p>
  <p>- 문자열 출력, if문, for문과 같은 제어문 기능 포함</p>
  <p>&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;</p>
  <br>
  <h2>JSTL Core 라이브러리에 포함된 태그 목록</h2>
  <table border="1">
    <tr>
      <td>태그</td>
      <td>설명</td>
      <td>사용 예</td>
    </tr>
    <tr>
      <td>out</td>
      <td>지정된 값을 출력할 때 사용</td>
      <td>&lt;c:out ...&gt;</td>
    </tr>
    <tr>
      <td>set</td>
      <td>JSP의 setAttribute(name, key) 기능과 동일. <br>
          scope에 따른 바인딩 처리가 가능
      </td>
      <td>&lt;c:set ...&gt;</td>
    </tr>
    <tr>
      <td>remove</td>
      <td>JSP의 removeAttribute(name) 기능과 동일. <br>
        scope에 따른 속성 제거가 가능
      </td>
      <td>&lt;c:remove ...&gt;</td>
    </tr>
  </table>
</fieldset>

<br>
<hr>
<br>

<fieldset>
  <legend><h2>JSTL Core 라이브러리에 포함된 태그 목록</h2></legend>
  <table border="1">
    <tr>
      <td>태그</td>
      <td>설명</td>
      <td>사용 예</td>
    </tr>
    <tr>
      <td>if</td>
      <td>조건 처리를 사용할 때 사용한다.</td>
      <td>&lt;c:if ...&gt;</td>
    </tr>
    <tr>
      <td>forEach</td>
      <td>반복 처리를 하고자 할 때 사용한다.</td>
      <td>&lt;c:forEach ...&gt;</td>
    </tr>
    <tr>
      <td>choose</td>
      <td>자바의 switch문과 비슷하다.</td>
      <td>&lt;c:choose ...&gt;</td>
    </tr>
    <tr>
      <td>when</td>
      <td>choose의 서브 태그로 사용한다. <br>
          조건을 만족한 경우에 사용된다.
      </td>
      <td>&lt;c:when ...&gt;</td>
    </tr>
    <tr>
      <td>otherwise</td>
      <td>choose의 서브 태그로 사용한다. <br>
          조건을 만족하지 못한 경우에 사용한다.
      </td>
      <td>&lt;c:otherwise&gt;</td>
    </tr>
    <tr>
      <td>url</td>
      <td>URL을 생성하는 기능이다.</td>
      <td>&lt;c:url&gt;</td>
    </tr>
    <tr>
      <td>forTokens</td>
      <td>자바의 StringTokenizer 클래스 기능이다.</td>
      <td>&lt;c:forTokens&gt;</td>
    </tr>
  </table>
</fieldset>

<br>
<hr>
<br>

<br>
<fieldset>
  <h1>JSTL formatting 라이브러리</h1>
  <p>- 국제화/지역화 및 데이터 포맷과 관련된 기능 제공</p>
  <p>- 국제화/지역화 -> 다국어 처리</p>
  <p>- 데이터 포맷 -> 날짜와 숫자와 관련된 기능</p>
  <p>&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %&gt;</p>
  <br>
  <legend><h2>JSTL formatting 라이브러리</h2></legend>
  <table border="1">
    <tr>
      <td>태그</td>
      <td>설명</td>
      <td>사용 예</td>
    </tr>
    <tr>
      <td>requestEncoding</td>
      <td>setCharacterEncoding(enc) 메소드와 동일한 기능</td>
      <td>&lt;fmt:requestEncoding&gt;</td>
    </tr>
    <tr>
      <td>setLocale</td>
      <td>다국어 페이지 사용 시 언어 지정</td>
      <td>&lt;fmt:setLocale ...&gt;</td>
    </tr>
    <tr>
      <td>timeZone</td>
      <td>지정한 지경 값으로 시간을 설정</td>
      <td>&lt;fmt:timeZone ...&gt;</td>
    </tr>
    <tr>
      <td>setBundle</td>
      <td>*.properties 확장자의 리소스 번들 파일 접근 시 사용</td>
      <td>&lt;fmt:setBundle ...&gt;</td>
    </tr>
    <tr>
      <td>message</td>
      <td>번들에서 설정한 값 사용</td>
      <td>&lt;fmt:message ...&gt;</td>
    </tr>
    <tr>
      <td>formatNumber</td>
      <td>숫자 형식의 포맷 지정</td>
      <td>&lt;fmt:formatNumber ...&gt;</td>
    </tr>
    <tr>
      <td>parseNumber</td>
      <td>문자열을 숫자로 변환</td>
      <td>&lt;fmt:parseNumber ...&gt;</td>
    </tr>
    <tr>
      <td>formatDate</td>
      <td>날짜 형식의 포맷 지정</td>
      <td>&lt;fmt:formDate ...&gt;</td>
    </tr>
    <tr>
      <td>parseDate</td>
      <td>문자열을 날짜로 변환</td>
      <td>&lt;fmt:parseDate ...&gt;</td>
    </tr>
  </table>
</fieldset>

</body>
</html>
