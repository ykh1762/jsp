package kr.or.ddit.user.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVo {
	private String userId; // 사용자 아이디
	private String userNm; // 사용자 이름
	private String alias; // 별명
	private String addr1; // 주소
	private String addr2; // 상세주소
	private String zipcode; // 우편번호
	private String pass; // 사용자 비밀번호
	private Date reg_dt; // 등록일시

	// Ctrl+3 -> Quick Access에 getter입력. toString()도 만들기.

	// reg_dt 값을 yyyy-MM-dd로 포맷팅
	public String getReg_dt_fmt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(reg_dt);
	}

	public UserVo(String userId, String userNm, String alias, String addr1,
			String addr2, String zipcode, String pass, Date reg_dt) {
		super();
		this.userId = userId;
		this.userNm = userNm;
		this.alias = alias;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.pass = pass;
		this.reg_dt = reg_dt;
	}
	public UserVo(String userId, String userNm, String alias, String addr1,
			String addr2, String zipcode, String pass) {
		super();
		this.userId = userId;
		this.userNm = userNm;
		this.alias = alias;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.pass = pass;
	}
	
	public UserVo() {
		
	}

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

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getAddr1() {
		return addr1;
	}

	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", userNm=" + userNm + ", alias="
				+ alias + ", addr1=" + addr1 + ", addr2=" + addr2
				+ ", zipcode=" + zipcode + ", pass=" + pass + ", reg_dt="
				+ reg_dt + "]";
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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

	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}

}
