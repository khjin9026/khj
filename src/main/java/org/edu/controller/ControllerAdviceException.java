package org.edu.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ControllerAdviceException {
	private static final Logger logger = LoggerFactory.getLogger(ControllerAdviceException.class);
	@ExceptionHandler(Exception.class)
	public ModelAndView errorModelAndView(Exception ex) {
		//logger.info(ex.toString()); //콘솔에 띄워지는것
		ModelAndView modelAndView = new ModelAndView(); //생성자 메서드는 클래스명과 동일
		//모델앤뷰에서 셋뷰네임은 jsp파일명과 매칭이 됨
		modelAndView.setViewName("admin/error_controller");
		modelAndView.addObject("exception", ex);
		return modelAndView;
	}
}
