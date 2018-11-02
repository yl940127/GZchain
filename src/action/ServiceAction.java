package action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.JsonUtil;

import com.alibaba.fastjson.JSON;

import constant.PlaceEnum;
import dao.CityDao;
import dao.CityDaoImp;
import dao.ServiceDao;
import dao.ServiceDaoImp;
import entity.CityDTO;
import entity.CityExample;
import entity.ServiceDTO;
import entity.ServiceExample;
import entity.ServiceJson;
import entity.ServiceVO;

public class ServiceAction extends HttpServlet {

	
	public ServiceAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceDTO serviceDTO = new ServiceDTO();
		ServiceDao serviceDao = new ServiceDaoImp();
		ServiceExample serviceExample = new ServiceExample();
		
		String status = req.getParameter("status");
		String room = req.getParameter("room");
		String type = req.getParameter("type");
		String city = req.getParameter("city");
		
		if (city != null && !city.equals("noLimit")) {
			String id = PlaceEnum.getValue(city);
			
			if (id.length() == 1 && id.compareTo("0") > 0) {
				serviceExample.setCountryId(id);
			}
			
			if (id.length() > 1 && id.length() <= 2) {
				serviceExample.setProvinceId(id);
			}
			
			if (id.length() > 2) {
				serviceExample.setCountryId(id);
			}
		}
		
		if (status != null && !status.equals("noLimit")) {
			serviceExample.setStatus(status);
		}
		
		
		
		List<ServiceVO> serviceVOs = null;
		
		try {
			serviceVOs = serviceDao.list(serviceExample);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		Iterator<ServiceVO> iterator = serviceVOs.iterator();
		
		while(iterator.hasNext()) {
			ServiceVO serviceVO = iterator.next();
			String requireText = serviceVO.getRequireText();
			
			if (room != null) {
				String serviceJson = serviceVO.getServicejson();
			
				ServiceJson parseObject = JSON.parseObject(serviceJson, ServiceJson.class);
				
				if (!parseObject.isRoom() && room.equals("1")) {
					iterator.remove();
				}
				
				if (parseObject.isRoom() && room.equals("3")) {
					iterator.remove();
				}
			}
			
			if (type != null && type.equals("net") && requireText == null) {
				iterator.remove();
			}
			
		}
		
		
		
		String json = JSON.toJSONString(serviceVOs);
		
		JsonUtil.returnJson(resp, json);
		return;
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}
	
	
}
