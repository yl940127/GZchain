package entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class UsersExample {

    private String username = null;

    private String password = null;

    private String realname = null;

    private String email = null;

    private String telnum = null;

    private String idcard = null;

    private Date birthday = null;

    private String education = null;

    private Integer sex = null;

    private String headimgurl = null;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelnum() {
		return telnum;
	}

	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getHeadimgurl() {
		return headimgurl;
	}

	public void setHeadimgurl(String headimgurl) {
		this.headimgurl = headimgurl;
	}
	
	public Map<String, Object> getExample() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("username", username);
		map.put("password", password);
		map.put("realname", realname);
		map.put("email", email);
		map.put("telnum", telnum);
		map.put("idcard", idcard);
		map.put("birthday", birthday);
		map.put("education", education);
		map.put("sex", sex);
		map.put("headimgurl", headimgurl);
	    
		return map;
	}
    
}
