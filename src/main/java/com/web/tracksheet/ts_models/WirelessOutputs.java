package com.web.tracksheet.ts_models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WirelessOutputs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name="tracksheet_id")
	private Long tracksheetId;
	
	private String mixNumber;
	
	private String persinstName;
	
	private String packNumber;
	
	private String wirelessTransMake;
	
	private String wirelessTransModel;
	
	private String freq;
	
	private String wirelessRecModel;
	
	private String iemModel;

	public WirelessOutputs() {
		super();
	}

	public WirelessOutputs(Long id, String mixNumber, String persinstName, String packNumber, String wirelessTransMake,
			String wirelessTransModel, String freq, String wirelessRecModel, String iemModel) {
		super();
		this.id = id;
		this.mixNumber = mixNumber;
		this.persinstName = persinstName;
		this.packNumber = packNumber;
		this.wirelessTransMake = wirelessTransMake;
		this.wirelessTransModel = wirelessTransModel;
		this.freq = freq;
		this.wirelessRecModel = wirelessRecModel;
		this.iemModel = iemModel;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMixNumber() {
		return mixNumber;
	}

	public void setMixNumber(String mixNumber) {
		this.mixNumber = mixNumber;
	}

	public String getPersinstName() {
		return persinstName;
	}

	public void setPersinstName(String persinstName) {
		this.persinstName = persinstName;
	}

	public String getPackNumber() {
		return packNumber;
	}

	public void setPackNumber(String packNumber) {
		this.packNumber = packNumber;
	}

	public String getWirelessTransMake() {
		return wirelessTransMake;
	}

	public void setWirelessTransMake(String wirelessTransMake) {
		this.wirelessTransMake = wirelessTransMake;
	}

	public String getWirelessTransModel() {
		return wirelessTransModel;
	}

	public void setWirelessTransModel(String wirelessTransModel) {
		this.wirelessTransModel = wirelessTransModel;
	}

	public String getFreq() {
		return freq;
	}

	public void setFreq(String freq) {
		this.freq = freq;
	}

	public String getWirelessRecModel() {
		return wirelessRecModel;
	}

	public void setWirelessRecModel(String wirelessRecModel) {
		this.wirelessRecModel = wirelessRecModel;
	}

	public String getIemModel() {
		return iemModel;
	}

	public void setIemModel(String iemModel) {
		this.iemModel = iemModel;
	}

	@Override
	public String toString() {
		return "WirelessOutputs [id=" + id + ", mixNumber=" + mixNumber + ", persinstName=" + persinstName
				+ ", packNumber=" + packNumber + ", wirelessTransMake=" + wirelessTransMake + ", wirelessTransModel="
				+ wirelessTransModel + ", freq=" + freq + ", wirelessRecModel=" + wirelessRecModel + ", iemModel="
				+ iemModel + "]";
	}
	
	
	
	

}
