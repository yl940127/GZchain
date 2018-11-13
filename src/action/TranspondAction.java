package action;

import dao.FriendDaoImp;
import dao.ShareDaoImp;
import entity.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

		Long userId;
		List<UsersDTO> friendList;
		List <UserWithSharedPro> tracks=new ArrayList<>();

		userId = getUserIdFromSession(request);
		friendList = getFriends(userId);
		tracks = pakageSharedInfo(friendList);
		doTranspondAction(request,userId);
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
		return usersDTO.getUserid();
	}

	// 处理当前用户的转发操作。
	// 在shared表中添加一条记录，并显示转发信息。
	public void doTranspondAction(HttpServletRequest request,long userId){
		long productId = Long.parseLong(request.getParameter("pdt_id"));
		long pre_userid;
		String s_pre_userid = request.getParameter("pre_userid");
		//上一个转发者没有，则默认为自己。
		if (s_pre_userid ==null){
			pre_userid=userId;
		}else {
			pre_userid= Long.parseLong(s_pre_userid);
		}

		System.out.println("pre_userid is"+ pre_userid);
		ShareDaoImp shareDaoImp = new ShareDaoImp();
		try {
			int result = shareDaoImp.insertShare(productId,userId,pre_userid);
			if (result > 0){
				System.out.println("插入数据成功！"+ productId);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// 将 “用户-分享商品列表”组合，封装成一个list
	public List<UserWithSharedPro> pakageSharedInfo(List<UsersDTO> friendList){
		List<UserWithSharedPro> infoList = new ArrayList<>();
		for (int i=0;i<friendList.size();i++){
			UserWithSharedPro uWsp = new UserWithSharedPro();
			List<ProductVO> productVOList = new ArrayList<>();
			UsersDTO user = friendList.get(i);
			productVOList = getOnesSharedProducts(user.getUserid());

			uWsp.setUser(user);
			uWsp.setSharedProList(productVOList);
			infoList.add(uWsp);
			System.out.println("The friends name is : "+user.getUsername()+"  /n and his/her sharedProNum is:"+productVOList.size());

		}
		return infoList;
	}

	public List<UsersDTO> getFriends(Long user_id){

		FriendDaoImp friendDaoImp = new FriendDaoImp();
		List<UsersDTO> friends ;
		friends = friendDaoImp.findFriendsByUserId(user_id);
		return friends;
	}

	public List<ProductVO> getOnesSharedProducts(Long friendId){
		/*
		*根据用户的id,找到当前用户所有的分享商品Id,并将其返回
		* */
		ShareDaoImp shareDaoImp = new ShareDaoImp();
		List<ProductVO> sharedProductList = new ArrayList<>();
		sharedProductList = shareDaoImp.findProductByuserId(friendId);
		return sharedProductList;
	}
}
