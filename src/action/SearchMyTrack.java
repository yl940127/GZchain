package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TrackDaoImpl;
import entity.TrackDTO;
import entity.TrackExample;

public class SearchMyTrack extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchMyTrack() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String condition = request.getParameter("condition");
		System.out.println(condition);
		
		TrackDaoImpl trackDaoImpl = new TrackDaoImpl();
		TrackExample example = new TrackExample();
		example.setContent(condition);
		example.setLocation(condition);
		List<TrackDTO> tracks = trackDaoImpl.likeBySituation(example);
		
		//debug
		for(TrackDTO t : tracks) {
			System.out.println(t);
		}
		//end
		
		request.setAttribute("tracks", tracks);
		request.getRequestDispatcher("myTrack.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
