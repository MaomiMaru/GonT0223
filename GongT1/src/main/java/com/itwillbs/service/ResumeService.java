package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ResumeDAO;

import com.itwillbs.domain.FieldDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.RegionDTO;
import com.itwillbs.domain.ResumeDTO;
import com.itwillbs.domain.Scrap_resumeDTO;



@Service
public class ResumeService {

	@Inject
	private ResumeDAO resumeDAO;
	
	public int getResumeCount() {
		System.out.println("ResumeService getResumeCount()");
		
		return resumeDAO.getResumeCount();
	}//getResumeCount()
	
	
	public MemberDTO getMember(int r_num) {
		System.out.println("ResumeService getMember()");
		return resumeDAO.getMember(r_num);
	}//getMember()

	
	public ResumeDTO getResume(int r_num) {
		System.out.println("ResumeService getResume()");
		return resumeDAO.getResume(r_num);
	}//getResume()


	public List<ResumeDTO> getResumeBoardList(PageDTO pageDTO) {
		System.out.println("ResumeService getResumeBoardList()");
		// 시작하는 행번호 구하기
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		
		int startRow = (currentPage - 1) * pageSize + 1;
		
		// 끝나는 행번호 구하기
		int endRow = startRow + pageSize - 1;
		
		// pageDTO에 저장
		// boardMapper => limit 시작행-1,개수
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return resumeDAO.getResumeBoardList(pageDTO);
	}//getResumeBoardList()
	
	public int getResumeBoardCount(PageDTO pageDTO) {
		System.out.println("ResumeService getResumeBoardCount()");
		return resumeDAO.getResumeBoardCount(pageDTO);
	}//getResumeBoardCount()
	
	public ResumeDTO getResumeBoard(ResumeDTO resumeDTO) {
		System.out.println("ResumeService getResumeBoard()");
		return resumeDAO.getResumeBoard(resumeDTO);
	}//getResumeBoard()


	public Scrap_resumeDTO scrap(Scrap_resumeDTO scrap_resumeDTO) {
		System.out.println("ResumeService scrap()");
		return resumeDAO.scrap(scrap_resumeDTO);
	}


	public void insertScrap(Scrap_resumeDTO scrap_resumeDTO) {
		System.out.println("ResumeService insertScrap()");
		resumeDAO.insertScrap(scrap_resumeDTO);
	}


	
	

	
	
}