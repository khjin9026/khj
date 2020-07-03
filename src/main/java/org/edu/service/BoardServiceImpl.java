package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.vo.BoardVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements IF_BoardService {

	@Inject
	private IF_BoardDAO boardDAO;
	
	@Transactional //insert가 2개일때 처리해주는 것. 오류날시 다시 rollback해줌
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
		//첨부파일용 서비스추가
		String[] files = boardVO.getFiles();
		if(files == null) { return; }
		for(String fileName : files) {
			boardDAO.insertAttach(fileName);
		}
	}

	@Override
	public List<BoardVO> selectBoard() throws Exception {
		return boardDAO.selectBoard();
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateBoard(boardVO);
	}
	
	//스프링에서 알아서 오류가 날시 rollback(원상복귀)처리해줌 
	@Transactional
	@Override
	public void deleteBoard(Integer bno) throws Exception {
		boardDAO.deleteAttach(bno);
		boardDAO.deleteBoard(bno);
	}

	@Override
	public BoardVO viewBoard(Integer bno) throws Exception {
		return boardDAO.viewBoard(bno);
	}

	@Override
	public List<String> selectAttach(Integer bno) throws Exception {
		return boardDAO.selectAttach(bno);
	}

}