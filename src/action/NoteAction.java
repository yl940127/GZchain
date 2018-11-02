package action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.JsonUtil;

import com.alibaba.fastjson.JSON;

import dao.ServiceDao;
import dao.ServiceDaoImp;
import entity.ServiceExample;
import entity.ServiceVO;

public class NoteAction extends HttpServlet {

	public NoteAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceExample serviceExample = new ServiceExample();
		serviceExample.setUserId("123");
		ServiceDao serviceDao = new ServiceDaoImp();
		List<ServiceVO> serviceVOs = null;
 		try {
			serviceVOs = serviceDao.list(serviceExample);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
 		String json = JSON.toJSONString(serviceVOs);
 		
 		JsonUtil.returnJson(resp, json);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}
	
}
