package cc.mrbird.system.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Table;

import cc.mrbird.common.annotation.ExportConfig;

@Table(name = "T_LOG")
public class SysLog implements Serializable {

	private static final long serialVersionUID = -8878596941954995444L;

	public static final String SEQ = "seq_log";

	@Column(name = "ID")
	private Long id;

	@Column(name = "USERNAME")
	@ExportConfig(value = "操作用户")
	private String username;

	@Column(name = "OPERATION")
	@ExportConfig(value = "描述")
	private String operation;

	@Column(name = "TIME")
	@ExportConfig(value = "耗时（毫秒）")
	private Long time;

	@Column(name = "METHOD")
	@ExportConfig(value = "操作方法")
	private String method;

	@Column(name = "PARAMS")
	@ExportConfig(value = "参数")
	private String params;

	@Column(name = "IP")
	@ExportConfig(value = "IP地址")
	private String ip;

	@Column(name = "CREATE_TIME")
	@ExportConfig(value = "操作时间", convert = "c:cc.mrbird.common.util.poi.convert.TimeConvert")
	private Date createTime;

	/**
	 * @return ID
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return USERNAME
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 */
	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	/**
	 * @return OPERATION
	 */
	public String getOperation() {
		return operation;
	}

	/**
	 * @param operation
	 */
	public void setOperation(String operation) {
		this.operation = operation == null ? null : operation.trim();
	}

	/**
	 * @return TIME
	 */
	public Long getTime() {
		return time;
	}

	/**
	 * @param time
	 */
	public void setTime(Long time) {
		this.time = time;
	}

	/**
	 * @return METHOD
	 */
	public String getMethod() {
		return method;
	}

	/**
	 * @param method
	 */
	public void setMethod(String method) {
		this.method = method == null ? null : method.trim();
	}

	/**
	 * @return PARAMS
	 */
	public String getParams() {
		return params;
	}

	/**
	 * @param params
	 */
	public void setParams(String params) {
		this.params = params == null ? null : params.trim();
	}

	/**
	 * @return IP
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip
	 */
	public void setIp(String ip) {
		this.ip = ip == null ? null : ip.trim();
	}

	/**
	 * @return CREATE_TIME
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @param createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}