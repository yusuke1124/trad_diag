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
		<form method="post">
			あなたは&nbsp;&nbsp;${comprehensiveType.typeName}&nbsp;&nbsp;です！<br />
			北海道でのおすすめ職業は...<br />
				${reccomendJob01}<br />
				${reccomendJob02}<br />
				${reccomendJob03}<br />
				${reccomendJob04}<br />
			<input type="submit" name="index" value="もう一度診断だ！！！" />
			
			<%-- 保持しておく情報たち --%>
			<input type="hidden" name="comprehensiveType" value="${comprehensiveType}" />
			<%-- <input type="hidden" name="sociability" value="${sociability}" />
			<input type="hidden" name="particular" value="${particular}" /> --%>
		</form>
	</body>
</html>