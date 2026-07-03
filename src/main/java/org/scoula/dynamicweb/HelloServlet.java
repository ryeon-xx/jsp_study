package org.scoula.dynamicweb;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

// 서블릿 맵핑 - 첫 번째 방법
// @WebServlet(name = "helloServlet", value = "/hello-servlet")

/*
    서블릿 맵핑 설정
    @WebServlet("/맵핑명")
    public class MyServlet extends HttpServlet { ... }

    서블릿 별명과 urlPatterns 속성으로 여러 개의 맵핑명 지정
    @WebServlet(name = "서블릿별명", urlPatterns = { "/맵핑명", "맵핑명2" })
    public class MyServlet extends HttpServlet { ... }

    OR

    @Webservlet(name = "서블릿별명", value = { "/맵핑명", "/맵핑명2" })
    public class MyServlet extends HttpServlet { ... }
 */
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}