package action;

import com.alibaba.fastjson.JSON;
import dao.ServiceDao;
import dao.ServiceDaoImp;
import entity.ServiceDTO;
import entity.ServiceJson;
import org.apache.commons.lang.RandomStringUtils;
import util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//import javax.jms.Session;

public class PublicServiceAction extends HttpServlet {

    public PublicServiceAction() {
        // TODO Auto-generated constructor stub
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        String room = req.getParameter("room");
        String food = req.getParameter("food");
        String car = req.getParameter("car");
        String company = req.getParameter("company");
        String cost = req.getParameter("cost");
        HttpSession session = req.getSession();
        ServiceDao serviceDao = new ServiceDaoImp();

        ServiceDTO dto = new ServiceDTO();

        dto.setCost(Integer.parseInt(cost));

        ServiceJson json = new ServiceJson();

        json.setRoom(room.equals("1"));
        json.setCar(car.equals("1"));
        json.setFood(food.equals("1"));
        json.setCompany(company.equals("1"));

        String jsonString = JSON.toJSONString(json);

        dto.setServicejson(jsonString);

        dto.setGuideid("1");
        dto.setStatus("0");
        dto.setServiceid(RandomStringUtils.randomNumeric(16));

        int result = serviceDao.insert(dto);

        String jsonstring = JSON.toJSONString(dto);

        JsonUtil.returnJson(resp, jsonstring);
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
