package trad_diag.entity;

/**
 * Profession.java
 * 
 * @author 2018/06/17 New GOTO
 */
public enum Profession {

	// 司令型に紐付いた職業
	JOB_COMMANDER_01("司令型職業1"),
	JOB_COMMANDER_02("司令型職業2"),
	JOB_COMMANDER_03("司令型職業3"),
	JOB_COMMANDER_04("司令型職業4"),

	// 法則型に紐付いた職業
	JOB_LAW_01("法則型職業1"),
	JOB_LAW_02("法則型職業2"),
	JOB_LAW_03("法則型職業3"),
	JOB_LAW_04("法則型職業4"),

	// 注目型に紐付いた職業
	JOB_ATTENTION_01("注目型職業1"),
	JOB_ATTENTION_02("注目型職業2"),
	JOB_ATTENTION_03("注目型職業3"),
	JOB_ATTENTION_04("注目型職業4"),

	// 理想型に紐付いた職業
	JOB_IDEAL_01("理想型職業1"),
	JOB_IDEAL_02("理想型職業2"),
	JOB_IDEAL_03("理想型職業3"),
	JOB_IDEAL_04("理想型職業4")
	;

	// フィールド変数
	private String jobName;

	// コンストラクタ
	private Profession(String jobName) {
		this.jobName = jobName;
	}

	// ゲッタ
	public String getJobName() {
		return this.jobName;
	}

}
