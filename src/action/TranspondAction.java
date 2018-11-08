package action;

import dao.ProductDaoImp;
import entity.ProductVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

//		TrackDaoImpl trackDaoImpl = new TrackDaoImpl();
//		List<TrackDTO> tracks = trackDaoImpl.selectBySituation(new TrackExample());
//
//		//debug
//		for(TrackDTO t : tracks) {
//			System.out.println(t);
//		}
//		//end

		/*
		*  1、首先，获取转发商品的Id值。
		*  2、在shared表中，
		* */
		String productId = request.getParameter("pdt_id");
		System.out.println("The product id is : "+ productId);

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
