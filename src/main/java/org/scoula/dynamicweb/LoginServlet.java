package org.scoula.dynamicweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 요청에서 파라미터 얻기
        String userid = req.getParameter("userid");
        String passwd = req.getParameter("passwd");

        // 응답 내보내기
        resp.setContentType("text/html;charset=UTF-8");

        PrintWriter out = resp.getWriter();

        out.println("<html><body>");
        out.println("아이디 값 : " + userid + "<br>");
        out.println("비밀번호 값 : " + passwd + "<br>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req, resp);
    }
}

/*
    파라미터 값 추출 : request 객체 메소드 이용
    리턴 타입      메소드명                     내용
    String       getParameter(name)       : name에 해당하는 파라미터 값을 리턴. 지정한 name의 파라미터 값이 없으면 null 리턴
    String[]     getParameterValues(name) : checkbox, select 태그와 같이 하나의 name에 여러 값을 가지는 경우에 사용. name에 해당되는 파라미터 값을 배열로 리턴.
    Enumeration  getParameterNames()      : 폼 태그 내에 파라미터 name 목록을 얻고자 하는 경우 사용. 모든 name 값을 Enumeration 타입으로 리턴.
 */