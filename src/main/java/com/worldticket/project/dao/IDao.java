package com.worldticket.project.dao;

import java.util.ArrayList;
import java.util.List;

import com.worldticket.project.dto.BoardDto;
import com.worldticket.project.dto.ConcertDto;
import com.worldticket.project.dto.MemberDto;
import com.worldticket.project.dto.ReserveDto;


public interface IDao {
	
	//Member 테이블 조작 dao
		public void joinDao(String mid, String mpw, String mname, String memail, String mphone); // 회원가입
		public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
		public int checkIdDao(String mid); // 아이디 존재 여부 체크
		public int checkPwDao(String mid, String mpw); // 아이디와 비밀번호 일치여부 확인
		public int findIdDao(String mname, String memail);// 이름과 이메일 일치여부 확인
		public int findPwDao(String mid, String mname, String memail); //아이디,이름,이메일 일치여부 확인
		public MemberDto findPwOkDao(String mid, String mname, String memail);
		public MemberDto findIdOkDao(String mname, String memail);
		public void memberInfoModifyOkDao(String mpw, String mname, String memail, String mphone, String mid); // 회원정보 수정
		
		//cic_board 조작 dao
		public ArrayList<BoardDto> listDao(); // 리스트 가져오기
		public void writeDao(String bid, String btitle, String bcontent);// 글쓰기
		public BoardDto viewDao(String bnum);// 게시판 글 보기
		public void deleteDao(String bnum);//글 지우기
		public void modifyDao(String bid, String btitle, String bcontent, String bnum);//글 수정
		public void boardhit(String bnum);//게시판 조회수
		//public void replyDao();//덧글쓰기
		
		//index 공연정보 테이블
		public ArrayList<ConcertDto> indexDao();//인덱스 공연리스트
		public ConcertDto detailDao(String cnum);//예매상세페이지
		
		//reserve 공연예약 테이블
		//public ArrayList<ReserveDto> reservelistDao(String bid, String btitle, String bplace, String btime, int bprice, int bcount);//예약정보 list
		public void reserveDao(String bid, String btitle, String bplace, String btime, int bprice, int bcount, String bpic);//예약정보 저장
		public ArrayList<ReserveDto> reservelistDao(String bid);
		public void refundDao(String bstate, String bnum);
		public List<ConcertDto> searchresultDao(String btitle);

}

