package model.domain;
//이진희 코드 수정 20150118
public class PuppyBean {
	private int puppyNum;
	private String puppyName;
	private int puppyAge;
	private String puppyGender;
	private String puppyKind;
	private String puppySize;
	private int memberNum;
	private String smallPic;
	private String bigPic;
	
	public PuppyBean() {}
	
	public PuppyBean(int puppyNum) {
		super();
		this.puppyNum = puppyNum;
	}

	public PuppyBean(String puppyName, int puppyAge, String puppyGender, String puppyKind, String puppySize, int memberNum, String smallPic, String bigPic) {
		this.puppyName = puppyName;
		this.puppyAge = puppyAge;
		this.puppyGender = puppyGender;
		this.puppyKind = puppyKind;
		this.puppySize = puppySize;
		this.memberNum = memberNum;
		this.smallPic = smallPic;
		this.bigPic = bigPic;
	}
	
	public PuppyBean(int puppyNum, String puppyName, int puppyAge, String puppyGender, String puppyKind, String puppySize, int memberNum, String smallPic, String bigPic) {
		super();
		this.puppyNum = puppyNum;
		this.puppyName = puppyName;
		this.puppyAge = puppyAge;
		this.puppyGender = puppyGender;
		this.puppyKind = puppyKind;
		this.puppySize = puppySize;
		this.memberNum = memberNum;
		this.smallPic = smallPic;
		this.bigPic = bigPic;
	}

	public int getPuppyNum() {
		return puppyNum;
	}

	public void setPuppyNum(int puppyNum) {
		this.puppyNum = puppyNum;
	}

	public String getPuppyName() {
		return puppyName;
	}

	public void setPuppyName(String puppyName) {
		this.puppyName = puppyName;
	}

	public int getPuppyAge() {
		return puppyAge;
	}

	public void setPuppyAge(int puppyAge) {
		this.puppyAge = puppyAge;
	}

	public String getPuppyGender() {
		return puppyGender;
	}

	public void setPuppyGender(String puppyGender) {
		this.puppyGender = puppyGender;
	}

	public String getPuppyKind() {
		return puppyKind;
	}

	public void setPuppyKind(String puppyKind) {
		this.puppyKind = puppyKind;
	}

	public String getPuppySize() {
		return puppySize;
	}

	public void setPuppySize(String puppySize) {
		this.puppySize = puppySize;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getSmallPic() {
		return smallPic;
	}

	public void setSmallPic(String smallPic) {
		this.smallPic = smallPic;
	}

	public String getBigPic() {
		return bigPic;
	}

	public void setBigPic(String bigPic) {
		this.bigPic = bigPic;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("puppyBean [puppyNum=");
		builder.append(puppyNum);
		builder.append(", puppyName=");
		builder.append(puppyName);
		builder.append(", puppyAge=");
		builder.append(puppyAge);
		builder.append(", puppyGender=");
		builder.append(puppyGender);
		builder.append(", puppyKind=");
		builder.append(puppyKind);
		builder.append(", puppySize=");
		builder.append(puppySize);
		builder.append(", memberNum=");
		builder.append(memberNum);
		builder.append(", smallPic=");
		builder.append(smallPic);
		builder.append(", bigPic=");
		builder.append(bigPic);
		builder.append("]");
		return builder.toString();
	}
}
