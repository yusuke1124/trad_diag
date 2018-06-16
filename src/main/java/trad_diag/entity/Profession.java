package trad_diag.entity;

/**
 * Profession.java
 * 
 * @author 2018/06/17 New GOTO
 */
public enum Profession {

	// リーダー型に紐付いた職業
	JOB_LEADER_01("スキーインストラクター", "leader_01"),
	JOB_LEADER_02("スキーインストラクター", "leader_02"),

	// エンジニア型に紐付いた職業
	JOB_ENGINEER_01("クオリ", "engineer_01"),
	JOB_ENGINEER_02("クオリ", "engineer_02"),

	// エンターテイナー型に紐付いた職業
	JOB_ENTERTAINER_01("ばんえい競馬", "entertainer_01"),
	JOB_ENTERTAINER_02("ばんえい競馬", "entertainer_02"),

	// クリエイター型に紐付いた職業
	JOB_CREATOR_01("小樽でガラス職人", "creator_01"),
	JOB_CREATOR_02("木彫りの熊職人", "creator_02")
	;

	// フィールド変数
	private String jobName;
	private String fileName;

	// コンストラクタ
	private Profession(String jobName, String fileName) {
		this.jobName = jobName;
		this.fileName = fileName;
	}

	// ゲッタ
	public String getJobName() {
		return this.jobName;
	}
	public String getFileName() {
		return this.fileName;
	}
}
