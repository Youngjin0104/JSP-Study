package day06;

public class Member {		// 이름은 단순하게 Member라고 하고
	private String userid;	// 아이디
	private String userpw;	// 비밀번호
	private String username;// 사용자 이름 만들고
	
	
	public Member() {}		// 자바 빈즈니까 기본 생성자 있어야 되고 (배경 지식)
	
							// 내가 만들기 편해야 하니까 생성자 오버로딩 하고
	public Member(String userid, String userpw, String username) {
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
	}
	
	// getter / setter 는 이클립스 기능으로 자동으로 만들어야지
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
