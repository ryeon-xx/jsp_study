package org.scoula.dynamicweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyServlet", value = { "/xxx", "/yyy" })
public class MyServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("init 호출 - 초기화");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("MyServlet 요청");
        PrintWriter out = resp.getWriter();
        out.println("<h1>My Servlet </h1>");
    }

    @Override
    public void destroy() {
        System.out.println("destroy 호출 - 소멸(종료)");
    }
}

/*
              객체               역할
    HttpServletRequest reg    : 클라이언트가 보낸 요청 정보 (파라미터, 헤더 등)를 읽어오는 용도
    HttpServletResponse resp  : 클라이언트에게 보낼 응답을 작성하는 용도
    resp.getWriter()          : resp에 텍스트를 쓰기 위한 도구(Writer)를 얻는 메소드
 */