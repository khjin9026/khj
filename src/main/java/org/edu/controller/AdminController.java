package org.edu.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.edu.service.IF_BoardService;
import org.edu.service.IF_MemberService;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//절대경로 -> 어느 위치에 있든 진입가능, /(루트)로 시작,  ex)url주소 - /admin/member/list
//상대경로 -> . 혹은 아예 없이 시작  ex)파일 위치 - admin/member/member_list

//자바프로그램에선 진입점 main이 필요(java application으로 실행)하지만 스프링에선 필요x
@Controller
public class AdminController {
	
	@Inject
	private IF_BoardService boardService;
	
	@Inject
	private IF_MemberService memberService;
	
	/**
	 * 게시물관리 리스트 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/list", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) throws Exception {
							//local -> 다국어 지원  model -> 데이터베이스 연동
		List<BoardVO> list = boardService.selectBoard();
		//모델클래스로 jsp화면에 boardService에서 셀렉트한 list값을 boardList변수명으로 보냄
	    //model { list -> boardList -> jsp }
		model.addAttribute("boardList", list);
		return "admin/board/board_list"; //(.jsp)가 생략된 것
	}
	/**
	 * 게시물관리 상세보기 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/view", method = RequestMethod.GET)
	public String boardView(@RequestParam("bno") Integer bno,Locale locale, Model model) throws Exception {
		BoardVO boardVO = boardService.viewBoard(bno);
		model.addAttribute("boardVO", boardVO);
		return "admin/board/board_view";
	}
	
	/**
	 * 게시물 관리 > 등록 입니다.
	 * @throws Exception 
	 */
	//get용 -> VO값을 받아 업데이트 폼을 보여줌
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) throws Exception {
		
		return "admin/board/board_write";
	}
	//post용 -> 실제 값을...보여줌..?
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.POST)
	public String boardWrite(BoardVO boardVO,Locale locale, Model model) throws Exception {
		boardService.insertBoard(boardVO);
		return "redirect:/admin/board/list";
	}
	
	/**
	 * 게시물 관리 > 수정 입니다.
	 * @throws Exception 
	 */
	//get용 -> VO값을 받아 업데이트 폼을 보여줌(기존값)
	@RequestMapping(value = "/admin/board/update", method = RequestMethod.GET)
	public String boardUpdate(@RequestParam("bno") Integer bno, Locale locale, Model model) throws Exception {
		BoardVO boardVO = boardService.viewBoard(bno);
		model.addAttribute("boardVO", boardVO);
		return "admin/board/board_update";
	}
	//post용 -> 실제 값을...보여줌..?
	@RequestMapping(value = "/admin/board/update", method = RequestMethod.POST)
	public String boardUpdate(BoardVO boardVO,Locale locale, RedirectAttributes rdat) throws Exception {
		boardService.updateBoard(boardVO);
		rdat.addFlashAttribute("msg", "success");
		return "redirect:/admin/board/view?bno=" + boardVO.getBno();
	}
	
	/**
	 * 회원관리 리스트 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/list", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) throws Exception {
		List<MemberVO> list = memberService.selectMember();
		//모델클래스로 jsp화면에 boardService에서 셀렉트한 list값을 boardList변수명으로 보냄
	    //model { list -> boardList -> jsp }
		model.addAttribute("memberList", list);
		return "admin/member/member_list";
	}
	
	/**
	 * 회원관리 상세보기 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/view", method = RequestMethod.GET)
	public String memberView(@RequestParam("user_id") String user_id, Locale locale, Model model) throws Exception {
		MemberVO memberVO = memberService.viewMember(user_id);
		model.addAttribute("memberVO", memberVO);
		return "admin/member/member_view";
	}
	
	/**
	 * 회원관리 > 등록 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.GET)
	public String memberWrite(Locale locale, Model model) throws Exception {
		
		return "admin/member/member_write";
	}
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.POST)
	public String memberWrite(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
		memberService.insertMember(memberVO);
		return "redirect:/admin/member/list";
	}
	
	/**
	 * 회원관리 > 수정 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/update", method = RequestMethod.GET)
	public String memberUpdate(@RequestParam("user_id") String user_id, Locale locale, Model model) throws Exception {
		MemberVO memberVO = memberService.viewMember(user_id);
		model.addAttribute("memberVO", memberVO);
		return "admin/member/member_update";
	}
	@RequestMapping(value = "/admin/member/update", method = RequestMethod.POST)
	public String memberUpdate(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
		memberService.updateMember(memberVO);
		rdat.addFlashAttribute("msg", "success");
		return "redirect:/admin/member/view?user_id=" + memberVO.getUser_id();
	}
	
	/**
	 * 관리자 홈 입니다.
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/home";
	}
	
}