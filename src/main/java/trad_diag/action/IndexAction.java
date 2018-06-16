package trad_diag.action;

import javax.annotation.Resource;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trad_diag.entity.PersonalityTypes;
import trad_diag.entity.Profession;
import trad_diag.entity.TdModuleId;
import trad_diag.form.IndexForm;

/**
 * IndexAction.java
 *   プロトタイプだから1つのアクションで設計。。
 *
 * @author 2018/06/17 New GOTO
 */
public class IndexAction {

	//------------------------------------------
	// DI
	//------------------------------------------
	/** IndexForm */
	@ActionForm
	@Resource
	public IndexForm indexForm;

	//------------------------------------------
	// 実行メソッド
	//------------------------------------------
	/**
	 * TOPページを表示
	 * @return TOP
	 */
	@Execute(validator = false)
	public String index() {
		// 初期設定
		initialize(TdModuleId.TOP);
		return "index.jsp";
	}

	/**
	 * 質問ページ1
	 * @return 質問ページ
	 */
	@Execute(validator = false)
	public String question01() {
		// 初期設定
		initialize(TdModuleId.QUESTION_01);
		return "question.jsp";
	}

	/**
	 * 質問ページ2
	 * @return 質問ページ
	 */
	@Execute(validator = false)
	public String question02() {
		// 初期設定
		initialize(TdModuleId.QUESTION_02);
		return "question.jsp";
	}

	/**
	 * 結果ページを表示
	 * @return 結果ページ
	 */
	@Execute(validator = false)
	public String result() {
		
		//---------------------------------------------
		// 総合タイプを分析する
		//---------------------------------------------
		// 縦軸判定
		setSociability(indexForm.answer01,
						indexForm.answer02,
						indexForm.answer03,
						indexForm.answer04,
						indexForm.answer05
						);

		// 横軸判定
		setParticular(indexForm.answer06,
						indexForm.answer07,
						indexForm.answer08,
						indexForm.answer09,
						indexForm.answer10
						);

		// 総合タイプをセット！
		setPersonality();

		//---------------------------------------------
		// タイプ別おすすめ職業をセット！
		//---------------------------------------------
		setReccomendJobs();

		return "result.jsp";
	}

	/**
	 * 詳細ページを表示
	 * @return 詳細ページ
	 */
	@Execute(validator = false)
	public String detail() {
		return "detail.jsp";
	}

	/**
	 * モジュールIDの初期化
	 */
	public void initialize(TdModuleId tdModuleId) {
		indexForm.tdModuleId = tdModuleId;
	}

	/**
	 * 外向度をセットする
	 */
	private void setSociability(String ans1, String ans2, String ans3, String ans4, String ans5) {
		int sociability = Integer.parseInt(ans1)
							+ Integer.parseInt(ans2)
							+ Integer.parseInt(ans3)
							+ Integer.parseInt(ans4)
							+ Integer.parseInt(ans5);

		// スコアから縦軸の傾向を判定
		indexForm.sociability = PersonalityTypes.INTROVERT;
		if (sociability >= 0) {
			indexForm.sociability = PersonalityTypes.EXTROVERT;
		}
	}

	/**
	 * 具象度をセットする
	 */
	private void setParticular(String ans1, String ans2, String ans3, String ans4, String ans5) {
		int particular = Integer.parseInt(ans1)
					+ Integer.parseInt(ans2)
					+ Integer.parseInt(ans3)
					+ Integer.parseInt(ans4)
					+ Integer.parseInt(ans5);

		// スコアから横軸の傾向を判定
		indexForm.particular = PersonalityTypes.ABSTRACT;
		if (particular >= 0) {
			indexForm.particular = PersonalityTypes.CONCRETE;
		}
	}

	/**
	 * 縦軸と横軸から、総合タイプをセットする
	 */
	public void setPersonality() {
		indexForm.comprehensiveType = PersonalityTypes.IDEAL;

		//横軸判定
		if (indexForm.particular == PersonalityTypes.CONCRETE) {
			indexForm.comprehensiveType = PersonalityTypes.LAW;

			// 縦軸判定
			if (indexForm.sociability == PersonalityTypes.EXTROVERT) {
				indexForm.comprehensiveType = PersonalityTypes.COMMANDER;
			}
		}

		// 縦軸判定
		if (indexForm.sociability == PersonalityTypes.EXTROVERT) {
			indexForm.comprehensiveType = PersonalityTypes.ATTENTION;
		}
	}

	/**
	 * 表示するおすすめ職業をセットする
	 */
	private void setReccomendJobs() {
		if (indexForm.comprehensiveType == PersonalityTypes.COMMANDER) {
			indexForm.reccomendJob01 = Profession.JOB_COMMANDER_01.getJobName();
			indexForm.reccomendJob02 = Profession.JOB_COMMANDER_02.getJobName();
			indexForm.reccomendJob03 = Profession.JOB_COMMANDER_03.getJobName();
			indexForm.reccomendJob04 = Profession.JOB_COMMANDER_04.getJobName();
		}

		if (indexForm.comprehensiveType == PersonalityTypes.LAW) {
			indexForm.reccomendJob01 = Profession.JOB_LAW_01.getJobName();
			indexForm.reccomendJob02 = Profession.JOB_LAW_02.getJobName();
			indexForm.reccomendJob03 = Profession.JOB_LAW_03.getJobName();
			indexForm.reccomendJob04 = Profession.JOB_LAW_04.getJobName();
		}

		if (indexForm.comprehensiveType == PersonalityTypes.ATTENTION) {
			indexForm.reccomendJob01 = Profession.JOB_ATTENTION_01.getJobName();
			indexForm.reccomendJob02 = Profession.JOB_ATTENTION_02.getJobName();
			indexForm.reccomendJob03 = Profession.JOB_ATTENTION_03.getJobName();
			indexForm.reccomendJob04 = Profession.JOB_ATTENTION_04.getJobName();
		}

		if (indexForm.comprehensiveType == PersonalityTypes.IDEAL) {
			indexForm.reccomendJob01 = Profession.JOB_IDEAL_01.getJobName();
			indexForm.reccomendJob02 = Profession.JOB_IDEAL_02.getJobName();
			indexForm.reccomendJob03 = Profession.JOB_IDEAL_03.getJobName();
			indexForm.reccomendJob04 = Profession.JOB_IDEAL_04.getJobName();
		}
	}
}
