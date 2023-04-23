package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayInfoDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public PlayInfoDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		System.out.println(this.sqlSession);
	}
	
	
	
	
	
}
