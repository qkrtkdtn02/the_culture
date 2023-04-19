package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserInfoDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public UserInfoDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		System.out.println(this.sqlSession);
	}
	
	
	
	
	
}
