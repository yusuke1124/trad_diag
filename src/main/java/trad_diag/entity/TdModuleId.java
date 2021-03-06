package trad_diag.entity;

/**
 * TdModuleId.java
 * 
 * @author 2018/06/17 New GOTO
 */
public enum TdModuleId {

	TOP("TOP", "/index"),
	QUESTION_01("QUESTION_01", "/question_01"),
	QUESTION_02("QUESTION_02", "/question_02"),
	RESULT("RESULT", "/result"),
	DETAIL("DETAIL", "/detail")
	;

	// フィールド変数
	private String code;
	private String context;

	// コンストラクタ
	private TdModuleId(String code, String context) {
		this.code = code;
		this.context = context;
	}

	// ゲッタ
	public String getCode() {
		return this.code;
	}
	public String getContext() {
		return this.context;
	}

}
