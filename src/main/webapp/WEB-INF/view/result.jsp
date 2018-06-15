<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Result</title>
	</head>
	<body>
		<h2>結果ページだよ</h2>
		<form>
			あなたの社交度は&nbsp;&nbsp;${sociability}&nbsp;ポイント&nbsp;&nbsp;です！<br />
			あなたのこだわり度は&nbsp;&nbsp;${particular}&nbsp;ポイント&nbsp;&nbsp;です！<br />
			<input type="submit" name="detail" value="詳細ページへ" />
			<input type="submit" name="index" value="TOPページへ" />
			
			<%-- 保持しておく情報たち --%>
			<input type="hidden" name="name" value="${name}" />
			<input type="hidden" name="sociability" value="${sociability}" />
			<input type="hidden" name="particular" value="${particular}" />
		</form>
	</body>
</html>