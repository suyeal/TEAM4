package model.domain;

import java.sql.Date;

public class McPuppyBean {
	private int mcNum;
	private String mcValiddate;
	private String mcEnrolldate;
	private String mcMatched;
	private int puppyNum;
	private String mcMessage;
	
	public McPuppyBean(int mcNum, String mcValiddate, String mcEnrolldate,
			String mcMatched, int puppyNum, String mcMessage) {
		super();
		this.mcNum = mcNum;
		this.mcValiddate = mcValiddate;
		this.mcEnrolldate = mcEnrolldate;
		this.mcMatched = mcMatched;
		this.puppyNum = puppyNum;
		this.mcMessage = mcMessage;
	}

	public McPuppyBean() {
		super();
	}

	public int getMcNum() {
		return mcNum;
	}

	public void setMcNum(int mcNum) {
		this.mcNum = mcNum;
	}

	public String getMcValiddate() {
		return mcValiddate;
	}

	public void setMcValiddate(String mcValiddate) {
		this.mcValiddate = mcValiddate;
	}

	public String getMcEnrolldate() {
		return mcEnrolldate;
	}

	public void setMcEnrolldate(String mcEnrolldate) {
		this.mcEnrolldate = mcEnrolldate;
	}

	public String getMcMatched() {
		return mcMatched;
	}

	public void setMcMatched(String mcMatched) {
		this.mcMatched = mcMatched;
	}

	public int getPuppyNum() {
		return puppyNum;
	}

	public void setPuppyNum(int puppyNum) {
		this.puppyNum = puppyNum;
	}

	public String getMcMessage() {
		return mcMessage;
	}

	public void setMcMessage(String mcMessage) {
		this.mcMessage = mcMessage;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("mcPuppyBean [mcNum=");
		builder.append(mcNum);
		builder.append(", mcValiddate=");
		builder.append(mcValiddate);
		builder.append(", mcEnrolldate=");
		builder.append(mcEnrolldate);
		builder.append(", mcMatched=");
		builder.append(mcMatched);
		builder.append(", puppyNum=");
		builder.append(puppyNum);
		builder.append(", mcMessage=");
		builder.append(mcMessage);
		builder.append("]");
		return builder.toString();
	}
}
