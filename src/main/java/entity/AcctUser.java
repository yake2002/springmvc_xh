package entity;
// Generated 2018-2-2 15:31:19 by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * AcctUser generated by hbm2java
 */
@Entity
@Table(name = "acct_user", catalog = "sshdb")
public class AcctUser implements java.io.Serializable {

	private String id;
	private String nickName;
	private String telephone;
	private Date registerTime;

	public AcctUser() {
	}

	public AcctUser(String id) {
		this.id = id;
	}

	public AcctUser(String id, String nickName, String telephone, Date registerTime) {
		this.id = id;
		this.nickName = nickName;
		this.telephone = telephone;
		this.registerTime = registerTime;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "nick_name")
	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Column(name = "telephone", length = 20)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "register_time", length = 19)
	public Date getRegisterTime() {
		return this.registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

}
