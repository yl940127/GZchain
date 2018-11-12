package action;

import dao.FriendDaoImp;
import dao.ProductDaoImp;
import dao.userDaoImpl;
import entity.*;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TranspondAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public TranspondAction() {
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
	 * 获取商品信息
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

		/*
		*  1、首先，获取转发商品的Shared_Id值。
		*  2、在shared表中,根据shared_id,找到该商品的上一个分享者user_id
		*  3.新建一条数据，将查找到的user_id,作为新数据的preUser_id,而将用户id，作为user_id.
		*  4.经过以上三个步骤，即可以将分享的路径存入数据库。
		*
		* */

		getUserIdFromSession(request);

		ProductDaoImp productDaoImp = new ProductDaoImp();
		List <ProductVO> tracks = new ArrayList<>();
		try{
			 tracks = productDaoImp.findAll();
		}catch (Exception e){
			e.printStackTrace();
		}
		System.out.println(tracks);
		request.setAttribute("tracks", tracks);

		request.getRequestDispatcher("myTransponds.jsp").forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}


	public void init() throws ServletException {
		// Put your code here
	}


	//获取当前登录用户的信息
	public Long getUserIdFromSession(HttpServletRequest request){
		HttpSession session= request.getSession();
		UsersDTO usersDTO = (UsersDTO) session.getAttribute("user");
		System.out.print("User info:");
		System.out.println(usersDTO.getUsername()+usersDTO.getEmail());
		return usersDTO.getUserid();
	}

	// 处理当前用户的转发操作。在shared表中添加一条记录，并显示转发信息。
	public void handleTranspondAction(HttpServletRequest request){
		String productId = request.getParameter("pdt_id");
		System.out.println("The product id is : "+ productId);
	}

	public UserSharedProducts pakageInfo(UsersDTO user, List<ProductVO> productVOS){
		UserSharedProducts uSp = new UserSharedProducts();
		uSp.setUserDTO(user);
		uSp.setProductVOList(productVOS);
		return uSp;
	}

	public List<Long> getFriendsIds(Long user_id){
		/*
		* 首先，从friend表中，找出当前用户的朋友表。
		* 再根据朋友表的id,
		* 从shared表中，找出朋友的分享动态。
		* 最后，以“转发者-商品信息”的形式，展示自己的朋友圈动态。
		* */
		FriendDaoImp friendDaoImp = new FriendDaoImp();
		List<Long> friendsIds = new ArrayList<>();
		friendsIds = friendDaoImp.findAllFriendsIdByPrimaryKey(user_id);
		System.out.println("The friends id is : ");
		return friendsIds;


	}

	public List<Long> getOnesSharedProductsId(){
		/*
		*根据用户的id,找到当前用户所有的分享商品Id,并将其返回
		* */
		FriendDaoImp friendDaoImp = new FriendDaoImp();
		List<Long> sharedProductIds = new ArrayList<>();
		sharedProductIds = friendDaoImp.findAllFriendsIdByPrimaryKey((long) 1);
		System.out.println("The friends id is : ");
		return sharedProductIds;
	}

	public List<ProductVO> getOnesSharedProducts(List<Long> pIds){
		/*
		*根据商品的id,在product表中，找到product相关信息,并将其返回
		* */
		List<ProductVO> list = new ArrayList<>();
		ProductDaoImp daoImp = new ProductDaoImp();
		for (int i=0; i< list.size();i++){
			ProductVO productVO= null;
			try {
				productVO = daoImp.findProductById(pIds.get(i));
				list.add(productVO);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public UsersDTO getFriendEntity(Long user_id){
		/*
		*根据用户的id,找到用户名及其相关信息,并将其返回
		* */
		userDaoImpl daoImpl = new userDaoImpl();
		UsersDTO user = null;
		user = daoImpl.selectByPrimartyKey(user_id);
		return user;
	}


}
