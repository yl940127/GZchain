package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TrackDaoImpl;
import entity.TrackDTO;
import entity.TrackExample;
import net.sf.json.JSONObject;

public class SearchTrack extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchTrack() {
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

		String conditionStr = request.getParameter("condition");
		JSONObject conditionObject = JSONObject.fromObject(conditionStr);
		
		TrackExample example = new TrackExample();
		example.setLocation(conditionObject.getString("location"));
		example.setLocation(conditionObject.getString("userId"));
		
		TrackDaoImpl trackDaoImpl = new TrackDaoImpl();
		List<TrackDTO> list = trackDaoImpl.selectBySituation(example);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", list);
		
		System.out.println(jsonObject);
		
		response.setContentType("text/html;charset=utf-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET,POST");
        Writer out = response.getWriter();
        
        out.write(jsonObject.toString());
        out.flush();
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
