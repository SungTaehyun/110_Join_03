package com.feb.sung.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.feb.sung.dao.MemberDao;
import com.feb.sung.util.Sha512Encoder;

@Service
public class MemberService { // 클래스 정의시, public class MemberService()처럼 ()사용 안한다.
	@Autowired
	private MemberDao memberdao;

	public int join(HashMap<String, String> params, HttpServletRequest request) {// HashMap은 사용자 정보와 관련된 여러 매개변수를 포함,
																					// 입력으로 HashMap인 params받음

		try {
			String passwd = params.get("passwd");// params, HashMap에서 비밀번호를 검색
			Sha512Encoder encoder = Sha512Encoder.getInstance();
			String encodeTxt = Sha512Encoder.getInstance().getSecurePassword(passwd);
			params.put("passwd", encodeTxt); // 매개변수에서 원래의 비밀번호를 인코딩된 비밀번호로 교체

			String email = params.get("email");
			// 이메일 중복 체크
			if (!isMailSecure(email)) { // true면 에러를 던져준다
				throw new IllegalArgumentException("이미 사용 중인 이메일입니다.");
			}
			return memberdao.join(params); // 이메일 값이 중복이 아닐 경우 DB에 저장

		} catch (IllegalArgumentException e) {
			// 이메일이 중복되어 오류가 발생한 경우
			request.setAttribute("errorMessage", e.getMessage());
			return -1; // 에러 발생 시 -1 반환
		}
	}

// 이메일 중복 체크 메서드
	private boolean isMailSecure(String email) {
		// 이미 등록된 이메일 주소 수 조회
		int count = memberdao.Emailcheck(email); // int 반환
		System.out.println("count111111111111111111 : " + count);
		return count == 0; // 이메일이 중복되지 않으면 0 반환, 중복되면 true 반환
	}
}

//	이 메서드는 파라미터 해시맵을 받아와서 비밀번호를 가져오고,
//	해당 비밀번호를 인코딩하고, 인코딩된 비밀번호로 원래의 비밀번호를 해시맵에서 교체한 후,
//	이를 회원가입과 관련된 작업을 수행하는 메서드에 전달하여 호출
