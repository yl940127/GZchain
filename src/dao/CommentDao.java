package dao;

import java.util.List;

import entity.CommentDTO;
import entity.CommentExample;

public interface CommentDao {
	//int countBySituation(TrackExample example);
	//int deleteComment(CommentDTO );
	
	
	//TrackDTO selectByPrimaryKey(String trackid);
	//int updateBySituation(TrackDTO trackDTO, TrackExample example);
	int deleteComment(CommentDTO commentDTO);
	int insert(CommentDTO commentDTO);
	List<CommentDTO> selectBySituation(CommentExample example);
}
