package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GuideDao;
import dao.GuideDaoImpl;
import entity.GuidesDTO;
import entity.GuidesExample;
import entity.UsersDTO;

public class RegistGuideAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegistGuideAction() {
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

		String introduce = request.getParameter("introduce");
		String countryid = request.getParameter("countryId");
		String provinceid = request.getParameter("provinceId");
		String cityid = request.getParameter("cityId");
		String address = request.getParameter("address");
		String userid = ((UsersDTO) request.getSession().getAttribute("user")).getUserid();
		
		GuideDaoImpl guideDaoImpl = new  GuideDaoImpl();
		GuidesExample example = new GuidesExample();
		example.setUserid(userid);
		List<GuidesDTO> list = guideDaoImpl.selectBySituation(example);
		if(list.size() != 0) {
			request.setAttribute("message", "你已经注册了游豆，请选择游豆登录！");
			request.getRequestDispatcher("registguide.jsp").forward(request, response);
			return;
		}
		
		GuidesDTO guide = new GuidesDTO();
		guide.setIntroduce(introduce);
		guide.setCountryid(countryid);
		guide.setProvinceid(provinceid);
		guide.setCityid(cityid);
		guide.setAddress(address);
		guide.setUserid(userid);
		
		guideDaoImpl.insert(guide);
		
		response.sendRedirect("index.jsp");
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
