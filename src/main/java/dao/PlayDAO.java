package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public PlayDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	
	
}
