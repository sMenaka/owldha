package edu.owl.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user")
public class User{
	@Column(name="fName")
	private String firstName;
	@Column(name="lName")
	private String lastName;
	@Column(name="userName")
	private String userName;
	@Column(name="password")
	private String password;
	@Column(name="email")
	private String email;
	@Id
	@Column(name="userId")
	private String studentId;

	public String getFirstName(){
		return firstName;
	}
	public void setFirstName(String firstName){
		this.firstName = firstName;
	}

  	public String getLastName(){
		return lastName;
	}
	public void setLastName(String lastName){
		this.lastName =lastName;
	}
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}

    public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}

     public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email = email;
	}

    public String getStudentId(){
		return studentId;
	}
	public void setStudentId (String studentId){
		this.studentId = studentId;
	}

}