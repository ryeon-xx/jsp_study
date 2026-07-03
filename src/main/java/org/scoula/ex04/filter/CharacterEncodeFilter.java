package org.scoula.ex04.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

// @WebFilter을 이용해 등록하는 경우
@WebFilter (urlPatterns = { "/*" })
public class CharacterEncodeFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("필터 init 호출");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        System.out.println("필터 destroy 호출");
    }
}

/*
    CharacterEncodingFilter
     - 모든 요청에 대한 요청 문자셋 설정을 필터에서 하도록 함
       -> Servlet에서 개별적으로 설정할 필요 없어짐
       -> 일반적으로 제일 먼저 해야하는 작업이 됨
 */