package practice;

public class LoginDTO {
	private String name;
	private String userid;
	private String passwd;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public LoginDTO(String name, String userid, String passwd) {
		super();
		this.name = name;
		this.userid = userid;
		this.passwd = passwd;
	}
	public LoginDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "LoginDTO [name=" + name + ", userid=" + userid + ", passwd=" + passwd + "]";
	}
	
	
}
