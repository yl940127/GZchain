package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDaoImpl;
import entity.UsersDTO;
import entity.UsersExample;

public class RegistAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegistAction() {
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

		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		String email = (String) request.getParameter("email");
		System.out.println(username+password+email);
		
		userDaoImpl userDaoImpl = new userDaoImpl();
		UsersExample example = new UsersExample();
		example.setUsername(username);
		List<UsersDTO> checkUserList = userDaoImpl.selectBySituation(example);
		if(checkUserList.size() != 0) {
			System.out.println("用户名已经被注册");
			request.setAttribute("message", "用户名已经被注册，建议直接登录");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
			return;
		}
		
		UsersDTO user = new UsersDTO();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		
		userDaoImpl.insert(user);
		System.out.println("注册成功");
		
		response.sendRedirect("login.jsp");
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
