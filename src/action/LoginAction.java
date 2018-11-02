package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.UserDTO;
import net.sf.json.JSONArray;
import dao.userDaoImpl;
import entity.UsersDTO;
import entity.UsersExample;

public class LoginAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginAction() {
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
		String password = request.getParameter("password");
		String company = request.getParameter("company");

		userDaoImpl userDaoImpl = new userDaoImpl();
		UsersExample usersExample = new UsersExample();
//		UserDTO userDTO = new UserDTO();
		usersExample.setUsername(username);
		usersExample.setPassword(password);
//		usersExample.setCompany("on".equals(company));
		List<UsersDTO> list = userDaoImpl.selectBySituation(usersExample);
		
		if(list.size() == 0) {
			request.setAttribute("message", "用户名或密码错误！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("user", list.get(0));

		if("on".equals(company)){
			System.out.println(list.get(0));

			response.sendRedirect("index.jsp");
		}
		else{


			response.sendRedirect("findService1.jsp");
		}
		
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
