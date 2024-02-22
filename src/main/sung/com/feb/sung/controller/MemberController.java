package com.feb.sung.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.feb.sung.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	public MemberController() {
		System.out.println("11111111111");
	}

	@GetMapping("/loginPage.do")
	public ModelAndView loginPage() {
		System.out.println("2222222222222");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@PostMapping("/join.do")
	public ModelAndView join(@RequestParam HashMap<String, String> params, HttpServletRequest request) {
		// memberservice의 join 메서드를 호출하여 params라는 이름의 매개변수를 들고와서 회원등록을 시도
		System.out.println("33333333333333333333333");
		ModelAndView mv = new ModelAndView();

		int result = memberService.join(params, request);
		System.out.println("result : " + result);

		mv.setViewName("login");
		System.out.println("444444444444444444");

		if (result == 1) {
			mv.addObject("resultMsg", "회원가입 성공");// 1이면 성공, addObject()메서드 --> 키-값 쌍을 추가하여 해당 데이터를 ModelAndView로 전달
		} else
			mv.addObject("resultMsg", "회원가입 실패");// 1이 아니면, 회원 등록이 실패

		return mv;
	}

}
