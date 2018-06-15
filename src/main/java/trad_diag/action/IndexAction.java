package trad_diag.action;

import javax.annotation.Resource;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trad_diag.entity.TdModuleId;
import trad_diag.form.IndexForm;

/**
 * IndexAction.java
 *   プロトタイプだから1つのアクションで設計。。
 * 
 * @author 2018/06/17 New GOTO
 */
public class IndexAction {

	/** IndexForm */
	@ActionForm
	@Resource
	public IndexForm indexForm;

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
		// 社交性とこだわり度を計算
		//---------------------------------------------
		indexForm.sociability = 
				calcSociability(indexForm.answer01,
								indexForm.answer02,
								indexForm.answer03,
								indexForm.answer04,
								indexForm.answer05
								);

		indexForm.particular = 
				calcParticular(indexForm.answer06,
								indexForm.answer07,
								indexForm.answer08,
								indexForm.answer09,
								indexForm.answer10
								);
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
	 * 社交度を計算する
	 * @return ret 社交度
	 */
	private int calcSociability(String ans1, String ans2, String ans3, String ans4, String ans5) {
		int ret = Integer.parseInt(ans1)
					+ Integer.parseInt(ans2)
					+ Integer.parseInt(ans3)
					+ Integer.parseInt(ans4)
					+ Integer.parseInt(ans5);
		return ret;
	}

	/**
	 * こだわり度を計算する
	 * @return ret こだわり度
	 */
	private int calcParticular(String ans1, String ans2, String ans3, String ans4, String ans5) {
		int ret = Integer.parseInt(ans1)
					+ Integer.parseInt(ans2)
					+ Integer.parseInt(ans3)
					+ Integer.parseInt(ans4)
					+ Integer.parseInt(ans5);
		return ret;
	}
}
