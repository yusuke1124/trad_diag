<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Result</title>
		<style type="text/css">
		<!--
			BODY {
				background-size:contain;
				background-repeat:no-repeat;
				text-align: center;
			}
		-->
		</style>
	</head>
	<body background="/trad_diag/img/background/result.png">
		<h2>結果ページだよ</h2>
		<form method="post">
			あなたは&nbsp;&nbsp;${comprehensiveType.typeName}&nbsp;&nbsp;です！<br />
			北海道でのおすすめ職業は...<br />
				${reccomendJob01}&nbsp;&nbsp;&nbsp;&nbsp;${reccomendJob02}<br />
				${reccomendJobPicLink01}&nbsp;&nbsp;&nbsp;&nbsp;${reccomendJobPicLink02}<br />
			<input type="submit" name="index" value="もう一度診断だ！！！" />
			<%-- 保持しておく情報たち --%>
			<input type="hidden" name="comprehensiveType" value="${comprehensiveType}" />
		</form>
	</body>
</html>