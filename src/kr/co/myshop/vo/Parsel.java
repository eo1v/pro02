package kr.co.myshop.vo;

public class Parsel {
	private int paeselNo;			//배송코드
	private String parselAddr; 		//배송지
	private String cusTel; 			//고객연락처
	private String parselCompany; 	//배송회사
	private String parselTel; 		//배송기사연락처
	private int parselState;		//배송상태
	public int getPaeselNo() {
		return paeselNo;
	}
	public void setPaeselNo(int paeselNo) {
		this.paeselNo = paeselNo;
	}
	public String getParselAddr() {
		return parselAddr;
	}
	public void setParselAddr(String parselAddr) {
		this.parselAddr = parselAddr;
	}
	public String getCusTel() {
		return cusTel;
	}
	public void setCusTel(String cusTel) {
		this.cusTel = cusTel;
	}
	public String getParselCompany() {
		return parselCompany;
	}
	public void setParselCompany(String parselCompany) {
		this.parselCompany = parselCompany;
	}
	public String getParselTel() {
		return parselTel;
	}
	public void setParselTel(String parselTel) {
		this.parselTel = parselTel;
	}
	public int getParselState() {
		return parselState;
	}
	public void setParselState(int parselState) {
		this.parselState = parselState;
	}
	
}
