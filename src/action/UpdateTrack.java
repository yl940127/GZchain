package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TrackDaoImpl;
import entity.TrackDTO;
import entity.TrackExample;

public class UpdateTrack extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateTrack() {
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

		String op = request.getParameter("op");
		
		TrackDaoImpl trackDaoImpl = new TrackDaoImpl();
		
		switch (op) {
		case "thumbup":
			String trackid = request.getParameter("trackid");
			TrackDTO track = trackDaoImpl.selectByPrimaryKey(trackid);
			TrackExample example = new TrackExample();
			example.setThumbupcount(track.getThumbupcount()+1);
			
			trackDaoImpl.updateBySituation(track, example);
			break;
		case "detail":
			String trackid2 = request.getParameter("trackid");
			TrackDTO track2 = trackDaoImpl.selectByPrimaryKey(trackid2);
			TrackExample example2 = new TrackExample();
			
			String location = request.getParameter("location");
			String content = request.getParameter("content");
			
			example2.setLocation(location);
			example2.setContent(content);
			
			trackDaoImpl.updateBySituation(track2, example2);
			break;
		}
		response.sendRedirect("mytrack.jsp");
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
