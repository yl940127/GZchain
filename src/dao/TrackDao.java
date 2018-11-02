package dao;

import java.util.List;

import entity.TrackDTO;
import entity.TrackExample;

public interface TrackDao {
	int countBySituation(TrackExample example);
	int deleteTrack(TrackDTO trackDTO);
	int insert(TrackDTO trackDTO);
	List<TrackDTO> selectBySituation(TrackExample example);
	List<TrackDTO> likeBySituation(TrackExample example);
	TrackDTO selectByPrimaryKey(String trackid);
	int updateBySituation(TrackDTO trackDTO, TrackExample example);
}
