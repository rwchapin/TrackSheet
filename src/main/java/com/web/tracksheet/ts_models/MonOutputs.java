package com.web.tracksheet.ts_models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MonOutputs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name="tracksheet_id")
	private Long tracksheetId;
	
	private String outputType;
	
	private String outputNumber;
	
	private String outputFormat;
	
	private String outputDestination;

	public MonOutputs() {
		super();
	}

	public MonOutputs(Long id, String outputType, String outputNumber, String outputFormat, String outputDestination) {
		super();
		this.id = id;
		this.outputType = outputType;
		this.outputNumber = outputNumber;
		this.outputFormat = outputFormat;
		this.outputDestination = outputDestination;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOutputType() {
		return outputType;
	}

	public void setOutputType(String outputType) {
		this.outputType = outputType;
	}

	public String getOutputNumber() {
		return outputNumber;
	}

	public void setOutputNumber(String outputNumber) {
		this.outputNumber = outputNumber;
	}

	public String getOutputFormat() {
		return outputFormat;
	}

	public void setOutputFormat(String outputFormat) {
		this.outputFormat = outputFormat;
	}

	public String getOutputDestination() {
		return outputDestination;
	}

	public void setOutputDestination(String outputDestination) {
		this.outputDestination = outputDestination;
	}

	@Override
	public String toString() {
		return "MonOutputs [id=" + id + ", outputType=" + outputType + ", outputNumber=" + outputNumber
				+ ", outputFormat=" + outputFormat + ", outputDestination=" + outputDestination + "]";
	}
	
	
	
	

}
