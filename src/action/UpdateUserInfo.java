package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.userDaoImpl;
import entity.UsersDTO;
import entity.UsersExample;

public class UpdateUserInfo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateUserInfo() {
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

		String username = request.getParameter("username");
		String realname = request.getParameter("realname");
		String email = request.getParameter("email");
		String telnum = request.getParameter("telnum");
		String birth = request.getParameter("birthday");
		Date birthday = new Date(birth);
		
		HttpSession session = request.getSession();
		UsersDTO user = (UsersDTO) session.getAttribute("user");
		
		userDaoImpl userDaoImpl = new userDaoImpl();
		UsersExample example =  new UsersExample();
		example.setUsername(username);
		example.setRealname(realname);
		example.setEmail(email);
		example.setTelnum(telnum);
		example.setBirthday(birthday);
		userDaoImpl.updateBySituation(user, example);
		
		user = userDaoImpl.selectByPrimartyKey(user.getUserid());
		session.setAttribute("user", user);
		
		response.sendRedirect("showCurrentUser.jsp");
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
