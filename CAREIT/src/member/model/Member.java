package member.model;

import java.util.Date;

public class Member {

	private int userno;
	private String userid;
	private String password;
	private String username;
	private String nickname;
	private Date birth;
	private String email;
	private String gender;
	private String administer;
	
	public Member(int userno, String userid, String password, String username, String nickname, Date birth,
			String email, String gender, String administer) {
		super();
		this.userno = userno;
		this.userid = userid;
		this.password = password;
		this.username = username;
		this.nickname = nickname;
		this.birth = birth;
		this.email = email;
		this.gender = gender;
		this.administer = administer;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAdminister() {
		return administer;
	}

	public void setAdminister(String administer) {
		this.administer = administer;
	}
	
	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}

	public void changePassword(String newPwd) {
		this.password = newPwd;
	}

	

}
