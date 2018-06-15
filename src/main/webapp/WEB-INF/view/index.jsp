<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%-- ModuleID : TdModuleId.TOP --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>TOP</title>
	</head>
	<body>
		<h2>TOPページだよ</h2>
		<form>
			名前を入れてね
			<input type="text" name="name" value="" /><br />
			<input type="submit" name="question01" value="質問ページへ" />
			<%-- 保持しておく情報たち --%>
		</form>
	</body>
</html>