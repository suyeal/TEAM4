package model.domain;

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

	public PuppyBean() {
		super();
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
