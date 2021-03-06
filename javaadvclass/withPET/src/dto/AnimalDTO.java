package dto;

import java.sql.Date;

public class AnimalDTO {
	private int id;
	private String name;
	private String type;
	private Date birthday;
	private String sex;
	private int userId;
	
	//********************************* getter
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getType() {
		return type;
	}
	public Date getBirthday() {
		return birthday;
	}
	public String getSex() {
		return sex;
	}
	public int getUserId() {
		return userId;
	}
	
	//********************************* setter
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public AnimalDTO(int id, String name, String type, Date birthday, String sex, int userId) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.birthday = birthday;
		this.sex = sex;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "AnimalDTO [id=" + id + ", name=" + name + ", type=" + type + ", birthday=" + birthday + ", sex=" + sex
				+ ", userId=" + userId + "]";
	}
}