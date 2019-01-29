package kr.or.ddit.user.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVo {
	private String 	userId;		// 사용자 아이디
	private String 	userNm;		// 사용자 이름
	private String 	pass;		// 사용자 비밀번호
	private Date 	reg_dt;		// 등록일시
	// Ctrl+3 -> Quick Access에 getter입력. toString()도 만들기.
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	
	// reg_dt 값을 yyyy-MM-dd로 포맷팅
	public String getReg_dt_fmt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(reg_dt);
	}
	
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	
	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", userNm=" + userNm + ", pass="
				+ pass + ", reg_dt=" + reg_dt + "]";
	}


	
	
}
