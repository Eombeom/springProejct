package kr.ezen.bbs2.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ezen.bbs2.domain.BoardDTO;
import kr.ezen.bbs2.domain.PageDTO;

@Mapper
public interface BoardMapper {
	// 게시글 등록
	public void insert(BoardDTO dto);
	
	// 게시판 리스트
//	public List<BoardDTO> getList();
	public List<BoardDTO> getList(PageDTO pDto);
	
	// 글 상세보기
	BoardDTO view(int bid);
	
	// 글 수정하기
	int update(BoardDTO dto);
	
	// 글 삭제하기
	int delete(int bid);
	
	// 조회수 수정
	void hitAdd(int bid);
	
	// 전체 게시글 수
	int totalCnt();
}
