package org.scoula.ex06;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HomeController {
    // view 이름 : index
    //  -> /WEB-INF/views/index.jsp
    public String getIndex(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        return "index";
    }
}

/*
    컨트롤러
     - 실제 요청을 처리하고 흐름을 제어하는 역할
     - 각 메소드는 Command 인터페이스와 일치하게 작성

     - GET 요청
       ▪ 리턴값은 뷰의 이름
         "/WEB-INF/views/" + 뷰 이름 + ".jsp"
             └── prefix     suffix -> FrontController에서 처리
       ▪ 예 : todo/list
         - /WEB-INF/views/todo/list.jsp
       ▪ FrontController에서 forward 처리

     - POST 요청
       ▪ 리턴값은 리다이렉트 할 url
         "redirect:/redirect할 url" 형식
       ▪ FrontController에서 redirect 처리
 */