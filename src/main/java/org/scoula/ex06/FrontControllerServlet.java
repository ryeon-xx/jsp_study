package org.scoula.ex06;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "frontControllerServlet", value = "/")
public class FrontControllerServlet extends DispatcherServlet {
//    Map<String, Command> getMap;
//    Map<String, Command> postMap;
//
//    String prefix = "/WEB-INF/views/";
//    String suffix = ".jsp";

    HomeController homeController = new HomeController();
    TodoController todoController = new TodoController();

    @Override
    public void init() throws ServletException {
        System.out.println("init 호출 - 초기화");
//        getMap = new HashMap<>();
//        postMap = new HashMap<>();
//
//        getMap.put("/", homeController::getIndex);
//
//        getMap.put("/todo/list", todoController::getList);
//        getMap.put("/todo/view", todoController::getView);
//        getMap.put("/todo/create", todoController::getCreate);
//        getMap.put("/todo/update", todoController::getUpdate);
//
//        postMap.put("/todo/create", todoController::postCreate);
//        postMap.put("/todo/update", todoController::postUpdate);
//        postMap.put("/todo/delete", todoController::postDelete);
    }

    @Override
    protected void createMap(Map<String, Command> getMap, Map<String, Command> postMap) {
                getMap.put("/", homeController::getIndex);

        getMap.put("/todo/list", todoController::getList);
        getMap.put("/todo/view", todoController::getView);
        getMap.put("/todo/create", todoController::getCreate);
        getMap.put("/todo/update", todoController::getUpdate);

        postMap.put("/todo/create", todoController::postCreate);
        postMap.put("/todo/update", todoController::postUpdate);
        postMap.put("/todo/delete", todoController::postDelete);
    }

    private String getCommandName(HttpServletRequest req) {
        String requestURI = req.getRequestURI();
        String contextPath = req.getContextPath();

        return requestURI.substring(contextPath.length());
    }

    private Command getCommand(HttpServletRequest req) {
        String commandName = getCommandName(req);

        Command command;
        if(req.getMethod().equalsIgnoreCase("GET")) {
            command = getMap.get(commandName);
        } else {
            command = postMap.get(commandName);
        }

        return command;
    }

    public void execute(Command command, HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String viewName = command.execute(req, resp);

        if(viewName.startsWith("redirect:")) {
            // redirect 처리
            resp.sendRedirect(viewName.substring("redirect:".length()));
        } else {
            // forward 처리
            String view = prefix + viewName + suffix;
            RequestDispatcher dis = req.getRequestDispatcher(view);
            dis.forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Command command = getCommand(req);
        if(command != null) {
            execute(command, req, resp);
        } else {
            // 404 에러 처리
            System.out.println("404 에러 처리");
            String view = prefix + "404" + suffix;
            req.getRequestDispatcher(view)
                    .forward(req, resp);
        }
    }

    @Override
    public void destroy() {
        System.out.println("destroy 호출 - 종료");
    }
}

/*
    FrontController
     - 모든 요청을 받고, 요청의 종류에 따라 작업을 분기하는 Dispatcher Servlet
     - MVC 패턴에서 제일 앞 단에 위치

    - 사용자 요청 식별 방법
      ▪ url의 구성
        - http://서버IP번호:포트번호/context명/경로(식별값)
          경로(식별값) : 수행해야 할 명령에 해당

    - 식별값 추출하기
                           | getRequestURI() |
      http://localhost:8080/context명/식별값
                               └── getContextPath()
      private String getCommandName(HttpServletRequest request) {
            String requestURI = req.getRequestURI();
            String contextPath = req.getContextPath();

            return requestURI.substring(contextPath.length());
      }

     - 요청별 처리 코드 찾기
       ▪ Command 패턴 적용
       ▪ Map<String, Command>
         - 키 : 요청 식별값
         - 값 : Command 인터페이스 구현체(메소드 참조)

         /create -> CreateCommand
         /get -> GetCommand
       ▪ Map에 없다면 404 에러
 */