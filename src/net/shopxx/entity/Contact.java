/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Store;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 联系
 * 
 * @author lj Team
 * @version 3.0
 */
@Entity
@Table(name = "zs_contact")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "zs_contact_sequence")
public class Contact extends BaseEntity {

	private static final long serialVersionUID = -3950317769006303383L;


	/** 内容 */
	private String content;

	/** IP */
	private String ip;

	/** firstname */
	private String firstname;
	
	/** lastname */
	private String lastname;
	
	/** company */
	private String company;
	
	/** phone */
	private String phone;
	
	/** email */
	private String email;
	
	/** 是否查看 */
	private Boolean isLook;
	

	/**
	 * 获取内容
	 * 
	 * @return 内容
	 */
	@NotEmpty
	@Lob
	@Column(nullable = false, updatable = false)
	public String getContent() {
		return content;
	}

	/**
	 * 设置内容
	 * 
	 * @param content
	 *            内容
	 */
	public void setContent(String content) {
		this.content = content;
	}



	/**
	 * 获取IP
	 * 
	 * @return IP
	 */
	@Column(nullable = false, updatable = false)
	public String getIp() {
		return ip;
	}

	/**
	 * 设置IP
	 * 
	 * @param ip
	 *            IP
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	@NotEmpty
	@Length(max = 200)
	@Column(nullable = false, updatable = false)
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	@NotEmpty
	@Length(max = 200)
	@Column(nullable = false, updatable = false)
	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	/**
	 * 获取E-mail
	 * 
	 * @return E-mail
	 */
	@NotEmpty
	@Email
	@Length(max = 200)
	@Column(nullable = false)
	public String getEmail() {
		return email;
	}

	/**
	 * 设置E-mail
	 * 
	 * @param email
	 *            E-mail
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 获取是否置顶
	 * 
	 * @return 是否置顶
	 */
	@Field(store = Store.YES, index = Index.UN_TOKENIZED)
	@NotNull
	@Column(nullable = false)
	public Boolean getIsLook() {
		return isLook;
	}

	/**
	 * 设置是否置顶
	 * 
	 * @param isLook
	 *            是否查看
	 */
	public void setIsLook(Boolean isLook) {
		this.isLook = isLook;
	}
}