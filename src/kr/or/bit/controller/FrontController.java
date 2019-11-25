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
import kr.or.bit.service.ReviewListService;
import kr.or.bit.service.ReviewWriteService;



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
          forward.setPath("/Test.jsp");
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
       }else if(url_Command.equals("/ReviewAdd.do")) {  //@function : 후기글쓰기  @Date : 2019-11-24 @Author : 배인영
           //UI처리 + 로직처리
    	   System.out.println("여기오나요?");
           action = new ReviewWriteService();
           forward = action.execute(request, response);   
       }else if(url_Command.equals("/ReviewList.do")) {  //@function : 후기리스트  @Date : 2019-11-24 @Author : 배인영
           //UI처리 + 로직처리
    	   action = new ReviewListService();
    	   forward = action.execute(request, response);
       }else if(url_Command.equals("/ShowReviewWrite.do")) { //@function : 후기 글쓰기 페이지 view단  @Date : 2019-11-24 @Author : 배인영
           //UI처리
    	   forward = new ActionForward();
           forward.setPath("/review_write.jsp");
       }else if(url_Command.equals("/ShowrReviewDetail.do")) {//@function : 후기 글쓰기 페이지 view단  @Date : 2019-11-24 @Author : 배인영
           //UI처리 + 로직처리
    	   action = new ReviewListService();
    	   forward = action.execute(request, response);
       }
       
       
       
       
       	if(forward != null) {
    			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath()); // 경로를 지정하겠다. 
    			dis.forward(request, response); // 지정한 경로로 제어권 넘김. 
    		
    	}
       
   }
   
    

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

}