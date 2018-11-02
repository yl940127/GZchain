package dao;

import java.util.List;
import java.util.Map;

import entity.GuidesDTO;
import entity.GuidesExample;

public interface GuideDao {
	int countBySituation(GuidesExample example);
	int deleteGuide(GuidesDTO guidesDTO);
	int insert(GuidesDTO guidesDTO);
	List<GuidesDTO> selectBySituation(GuidesExample example);
	GuidesDTO selectByPrimaryKey(String guideid);
	Map<String, Object> getGuideDetail(String guideid);
	int updateBySituation(GuidesDTO guidesDTO, GuidesExample example);
}
