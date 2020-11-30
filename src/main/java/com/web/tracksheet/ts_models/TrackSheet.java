package com.web.tracksheet.ts_models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tracksheet")
public class TrackSheet {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name="user_id")
	private Long userId;
	
	private String date;
	
	private String tsName;
	
	private String location;
	
	private String eventName;
	
	private String talentName;
	
	private String notes;
	
	@OneToMany(mappedBy="tracksheet_id", cascade=CascadeType.ALL)
	private List<Inputs> inputs;
	
	@OneToMany(mappedBy="tracksheet_id", cascade=CascadeType.ALL)
	private List<FohOutputs> fohOutputs;
	
	@OneToMany(mappedBy="tracksheet_id", cascade=CascadeType.ALL)
	private List<MonOutputs> monOutputs;
	
	@OneToMany(mappedBy="tracksheet_id", cascade=CascadeType.ALL)
	private List<WirelessInputs> wirelessInputs;
	
	@OneToMany(mappedBy="tracksheet_id", cascade=CascadeType.ALL)
	private List<WirelessOutputs> wirelessOutputs;
	

	public TrackSheet() {
		super();
	}
	

	public TrackSheet(Long id, Long userId, String date, String tsName, String location, String eventName,
			String talentName, String notes, List<Inputs> inputs, List<FohOutputs> fohOutputs,
			List<MonOutputs> monOutputs, List<WirelessInputs> wirelessInputs, List<WirelessOutputs> wirelessOutputs) {
		super();
		this.id = id;
		this.userId = userId;
		this.date = date;
		this.tsName = tsName;
		this.location = location;
		this.eventName = eventName;
		this.talentName = talentName;
		this.notes = notes;
		this.inputs = inputs;
		this.fohOutputs = fohOutputs;
		this.monOutputs = monOutputs;
		this.wirelessInputs = wirelessInputs;
		this.wirelessOutputs = wirelessOutputs;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}

	public String getTsName() {
		return tsName;
	}

	public void setTsName(String tsName) {
		this.tsName = tsName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getTalentName() {
		return talentName;
	}

	public void setTalentName(String talentName) {
		this.talentName = talentName;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}


	public List<Inputs> getInputs() {
		return inputs;
	}


	public void setInputs(List<Inputs> inputs) {
		this.inputs = inputs;
	}


	public List<FohOutputs> getFohOutputs() {
		return fohOutputs;
	}


	public void setFohOutputs(List<FohOutputs> fohOutputs) {
		this.fohOutputs = fohOutputs;
	}


	public List<MonOutputs> getMonOutputs() {
		return monOutputs;
	}


	public void setMonOutputs(List<MonOutputs> monOutputs) {
		this.monOutputs = monOutputs;
	}


	public List<WirelessInputs> getWirelessInputs() {
		return wirelessInputs;
	}


	public void setWirelessInputs(List<WirelessInputs> wirelessInputs) {
		this.wirelessInputs = wirelessInputs;
	}


	public List<WirelessOutputs> getWirelessOutputs() {
		return wirelessOutputs;
	}


	public void setWirelessOutputs(List<WirelessOutputs> wirelessOutputs) {
		this.wirelessOutputs = wirelessOutputs;
	}


	@Override
	public String toString() {
		return "TrackSheet [id=" + id + ", userId=" + userId + ", date=" + date + ", tsName=" + tsName + ", location="
				+ location + ", eventName=" + eventName + ", talentName=" + talentName + ", notes=" + notes
				+ ", inputs=" + inputs + ", fohOutputs=" + fohOutputs + ", monOutputs=" + monOutputs
				+ ", wirelessInputs=" + wirelessInputs + ", wirelessOutputs=" + wirelessOutputs + "]";
	}
	
	
	
	
	
	
	

}
