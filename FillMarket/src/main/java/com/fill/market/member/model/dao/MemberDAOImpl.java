package com.fill.market.member.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fill.market.admin.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member member) {
		
		return sqlSession.insert("memberSQL.insertMember", member);
	}

	@Override
	public Member selectOneMember(String userId) {
		return sqlSession.selectOne("memberSQL.selectOne", userId);
		
	}

	@Override
	public int updateMember(Member member) {
		
		return sqlSession.update("memberSQL.updateMember", member);
	}

	@Override
	public int deleteMember(String userId) {
		
		return sqlSession.delete("memberSQL.deleteMember", userId);
	}

	@Override
	public Member memberFindId(Member m) {
		System.out.println("==> Mybatis로 findId() 기능 처리");		
		
		return sqlSession.selectOne("memberSQL.memberFindId", m);
	
	}
	

}
