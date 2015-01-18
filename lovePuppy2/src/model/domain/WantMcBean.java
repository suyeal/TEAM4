package model.domain;

public class WantMcBean {
	private int wantNum;
	private String wantMsg;
	private int puppyNum;
	private int mcNum;
	
	public WantMcBean(int wantNum, String wantMsg, int puppyNum, int mcNum) {
		super();
		this.wantNum = wantNum;
		this.wantMsg = wantMsg;
		this.puppyNum = puppyNum;
		this.mcNum = mcNum;
	}

	public WantMcBean() {
		super();
	}

	public int getWantNum() {
		return wantNum;
	}

	public void setWantNum(int wantNum) {
		this.wantNum = wantNum;
	}

	public String getWantMsg() {
		return wantMsg;
	}

	public void setWantMsg(String wantMsg) {
		this.wantMsg = wantMsg;
	}

	public int getPuppyNum() {
		return puppyNum;
	}

	public void setPuppyNum(int puppyNum) {
		this.puppyNum = puppyNum;
	}

	public int getMcNum() {
		return mcNum;
	}

	public void setMcNum(int mcNum) {
		this.mcNum = mcNum;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("wantMcBean [wantNum=");
		builder.append(wantNum);
		builder.append(", wantMsg=");
		builder.append(wantMsg);
		builder.append(", puppyNum=");
		builder.append(puppyNum);
		builder.append(", mcNum=");
		builder.append(mcNum);
		builder.append("]");
		return builder.toString();
	}
}
