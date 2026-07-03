package org.scoula.ex05;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/request_redirect")
public class ResponseRedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // 속성 설정
//        req.setAttribute("username", "홍길동");
//        req.setAttribute("useraddress", "서울");
//
//        // redirect
//        resp.sendRedirect("response_redirect");

        String username = (String) req.getAttribute("username");
        String useraddress = (String) req.getAttribute("useraddress");

        //속성 설정
        req.setAttribute("username", username);
        req.setAttribute("useraddress", useraddress);

        //forward
        RequestDispatcher dis = req.getRequestDispatcher("/redirect_res.jsp");
        dis.forward(req, resp);
    }
}

/*
    HttpServletResponse 클래스를 이용한 redirect 방법
    res.sendRedirect(target);
     ▪ target : 이동할 페이지
     ▪ 첫 번째 요청에 대해 응답하고 브라우저가 바로 redirect
     ▪ 동일 HttpServletRequest가 아닌 새로운 request가 사용됨
       -> Request scope가 다름
 */