package trad_diag.entity;

/**
 * PersonalityTypes.java
 * 
 * @author 2018/06/17 New GOTO
 */
public enum PersonalityTypes {

	// 内向or外向(縦軸)
	INTROVERT("内向的"),
	EXTROVERT("外向的"),

	// 抽象or具体(横軸)
	ABSTRACT("抽象的"),
	CONCRETE("具体的"),

	// 総合結果の4タイプ
	LEADER("リーダー型"),              // 外向×具体
	ENGINEER("エンジニア型"),          // 内向×具体
	ENTERTAINNR("エンターテイナー型"),  // 外向×抽象
	CREATOR("クリエイター型")          // 内向×抽象
	;

	// フィールド変数
	private String typeName;

	// コンストラクタ
	private PersonalityTypes(String typeName) {
		this.typeName = typeName;
	}

	// ゲッタ
	public String getTypeName() {
		return this.typeName;
	}
}
