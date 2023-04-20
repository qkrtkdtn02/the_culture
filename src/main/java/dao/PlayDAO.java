package dao;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UserInfoVO;
import vo.PlayVO;

@Repository
public class PlayDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public PlayDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		System.out.println(this.sqlSession);
	}
	
	public List<PlayVO> selectList() {
		List<PlayVO> list = sqlSession.selectList("p.rank_list");
		return list;
	}
	
	public List<PlayVO> selectgenre( String genre ) {
		List<PlayVO> list = sqlSession.selectList("p.genre_list",genre);
		return list;
	}
	
	
	
}
