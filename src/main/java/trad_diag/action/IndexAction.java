package trad_diag.action;

import javax.annotation.Resource;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trad_diag.form.IndexForm;

/**
 * IndexAction.java
 *   プロトタイプだから1つのアクションで設計。。
 * 
 * @author 2018/06/18 New GOTO
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
		return "index.jsp";
	}

	/**
	 * 質問ページを表示
	 * @return 質問ページ
	 */
	@Execute(validator = false)
	public String question() {
		String name = indexForm.name;
		name = "test";
		return "question.jsp";
	}

	/**
	 * 結果ページを表示
	 * @return 結果ページ
	 */
	@Execute(validator = false)
	public String result() {
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
}
