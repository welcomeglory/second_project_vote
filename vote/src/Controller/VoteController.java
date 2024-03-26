package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.VoteDao;


/**
 * Servlet implementation class VoteController
 */
@WebServlet("/vote/*")
public class VoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VoteController() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet() .. ");

		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost() .. ");

		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("actionDo() .. ");

		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
	    Command command = null;
	      
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String commandDo = uri.substring(conPath.length());

		System.out.println("uri : " + uri);
		System.out.println("conPath : " + conPath);
		System.out.println("commandDo : " + commandDo);

System.out.println("command : "+command);
		
		VoteDao vote = new VoteDao();
		
		switch(commandDo) {
		case "/main.do" : 		
			viewPage = "index.jsp";
			break;
		case "/memberList.do" : 			
			viewPage = vote.selectMember(request, response);
			break;
		case "/voteMember.do" : 			
			viewPage = "voteMember.jsp";
			break;
		case "/voteList.do" : 		
			viewPage = vote.selectAll(request, response);
			break;
		case "/voteResult.do" : 			
			viewPage = vote.selectResult(request, response);
			break;
		case "/vote.do" : 
			int result = vote.insertVote(request, response);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			if(result == 1) {
				out.println("<script>");
				out.println("alert('투표하기 정보가 정상적으로 등록 되었습니다!'); location.href='"+conPath+"'; ");
				out.println("</script>");
				out.flush();
			}else {
				out.println("<script>");
				out.println("alert('등록실패!'); location.href='"+conPath+"'; ");
				out.println("</script>");
				out.flush();
			}		
			break;
		}
		/* 결과 */
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
