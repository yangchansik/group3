package kr.or.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.service.DetailCrossService;
import kr.or.bit.service.ListCrossService;
import kr.or.bit.service.ZzimListService;



@WebServlet("*.do")
public class FrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

    public FrontController() {
        super();

    }

   private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Action action = null;
       ActionForward forward = null;
       
       String requestURI = request.getRequestURI();
       String contextPath = request.getContextPath();
       String url_Command = requestURI.substring(contextPath.length());
       
       
       if(url_Command.equals("/MainCampingview.do")) { // Camping 검색 : main > list 
          //UI처리 
          forward = new ActionForward();
          forward.setPath("/searchresult.jsp");
       }else if(url_Command.equals("/CampinglistCrossCK.do")) { // 캠핑 API list cross체크 처리
          //UI처리 + 로직처리 
         action = new ListCrossService();
          forward = action.execute(request, response);
          System.out.println("캠핑API 서비스 갔다왔어요. 지금은 CONTROLLER ");
       }else if(url_Command.equals("/CampingListview.do")) {
          //UI처리 
          forward = new ActionForward();
          forward.setPath("/Test2.jsp");
       }else if(url_Command.equals("/CampingDetailCrossCK.do")) { // 캠핑 API detail cross체크 처리
          //UI처리 + 로직처리
          action = new DetailCrossService();
          forward = action.execute(request, response);
          System.out.println("캠핑API 서비스 갔다왔어요. 지금은 CONTROLLER ");
       }else if(url_Command.equals("/ZzimListSearch.do")) { // 캠핑 API detail cross체크 처리
           //UI처리 + 로직처리
           action = new ZzimListService();
           forward = action.execute(request, response);
           System.out.println("찜리스트 검색중");
        }
       
       
       
       
       if(forward != null) {

             RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
             dis.forward(request, response);
          
       }
       
   }
   
    

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

}