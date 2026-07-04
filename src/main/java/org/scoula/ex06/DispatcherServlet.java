package org.scoula.ex06;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.util.HashMap;
import java.util.Map;

// @WebServlet 어노테이션 붙이지 않음.
// 부모클래스
public class DispatcherServlet extends HttpServlet {
    Map<String, Command> getMap;
    Map<String, Command> postMap;

    String prefix = "/views/";
    String suffix = ".jsp";

    @Override
    public void init() throws ServletException {
        getMap = new HashMap<>();
        postMap = new HashMap<>();
        createMap(getMap, postMap);
    }

    protected void createMap(Map<String, Command> getMap, Map<String, Command> postMap) {

    }
}

/*
    공통 부분은 부모 클래스에 정의
    애플리케이션 특화 부분은 자식 클래스에서 정의
 */