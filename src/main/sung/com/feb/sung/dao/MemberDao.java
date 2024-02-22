package com.feb.sung.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDao {
	public int join(HashMap<String, String> params);
	// 회원 가입 정보를 저장하는 메서드

	public int Emailcheck(String email);

}
