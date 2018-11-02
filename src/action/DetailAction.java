package action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;

import dao.RequireDao;
import dao.RequireDaoImp;
import dao.ServiceDao;
import dao.ServiceDaoImp;
import entity.RequireServiceDTO;
import entity.ServiceExample;
import entity.ServiceVO;

public class DetailAction extends HttpServlet {

	public DetailAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		
		ServiceExample serviceExample = new ServiceExample();
		serviceExample.setServiceId(id);
		
		
		ServiceDao serviceDao = new ServiceDaoImp();
		List<ServiceVO> list = null;
				try {
					list = serviceDao.list(serviceExample);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		HttpSession session = req.getSession();
		
		session.setAttribute("detail", list.get(0));
		resp.sendRedirect("detail.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		ServiceVO detail = (ServiceVO) session.getAttribute("detail");
		
		RequireServiceDTO requireServiceDTO = new RequireServiceDTO();
		requireServiceDTO.setRequireId(RandomStringUtils.randomNumeric(16));
		requireServiceDTO.setUserId("123");		
		requireServiceDTO.setServiceId(detail.getServiceid());
		requireServiceDTO.setStatus("0");
		
		RequireDao requireDao = new RequireDaoImp();
		
		requireDao.insert(requireServiceDTO);
		
		return;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}

	
	
}
