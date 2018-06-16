<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Question</title>
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

	<%-- bodyタグの出し分け --%>
	<c:if test="${tdModuleId == 'QUESTION_01'}" var="isQestion01">
	<c:if test="${isQestion01}">
		<body background="/trad_diag/img/background/question1.png">
	</c:if>
	</c:if>
	<c:if test="${tdModuleId == 'QUESTION_02'}" var="isQestion02">
	<c:if test="${isQestion02}">
		<body background="/trad_diag/img/background/question2.png">
	</c:if>
	</c:if>
		<br /><br /><br /><br />
		<h2>Question</h2>
		<br /><br />
		<form method="post">
			<%-- 質問ページ1 --%>
			<c:if test="${tdModuleId == 'QUESTION_01'}" var="isQestion01">
			<c:if test="${isQestion01}">
				<br />
				人を紹介するより、紹介されるほうが好き<br />
				そう思う
				<input type="radio" name="answer01" value="2">
				<input type="radio" name="answer01" value="1">
				<input type="radio" name="answer01" value="0" checked>
				<input type="radio" name="answer01" value="-1">
				<input type="radio" name="answer01" value="-2">
				そう思わない
				<br /><br />
				前もって考えなくても、話したり行動したりできる<br />
				そう思う
				<input type="radio" name="answer02" value="2">
				<input type="radio" name="answer02" value="1">
				<input type="radio" name="answer02" value="0" checked>
				<input type="radio" name="answer02" value="-1">
				<input type="radio" name="answer02" value="-2">
				そう思わない
				<br /><br />
				きちんとした形になっていなくても、自分の作品やアイデアを積極的に他人に披露したいと思う<br />
				そう思う
				<input type="radio" name="answer03" value="2">
				<input type="radio" name="answer03" value="1">
				<input type="radio" name="answer03" value="0" checked>
				<input type="radio" name="answer03" value="-1">
				<input type="radio" name="answer03" value="-2">
				そう思わない
				<br /><br />
				ひとりでじっくり考えるよりも、人に話しながら考える<br />
				そう思う
				<input type="radio" name="answer04" value="2">
				<input type="radio" name="answer04" value="1">
				<input type="radio" name="answer04" value="0" checked>
				<input type="radio" name="answer04" value="-1">
				<input type="radio" name="answer04" value="-2">
				そう思わない
				<br /><br />
				メールよりも電話派である<br />
				そう思う
				<input type="radio" name="answer05" value="2">
				<input type="radio" name="answer05" value="1">
				<input type="radio" name="answer05" value="0" checked>
				<input type="radio" name="answer05" value="-1">
				<input type="radio" name="answer05" value="-2">
				そう思わない
				<br /><br />
				<input type="submit" name="question02" value="質問ページ2へ" />
			</c:if>
			</c:if>

			<%-- 質問ページ2 --%>
			<c:if test="${tdModuleId == 'QUESTION_02'}" var="isQestion02">
			<c:if test="${isQestion02}">
				<br />
				質問6<br />
				そう思う
				<input type="radio" name="answer06" value="2">
				<input type="radio" name="answer06" value="1">
				<input type="radio" name="answer06" value="0" checked>
				<input type="radio" name="answer06" value="-1">
				<input type="radio" name="answer06" value="-2">
				そう思わない
				<br /><br />
				質問7<br />
				そう思う
				<input type="radio" name="answer07" value="2">
				<input type="radio" name="answer07" value="1">
				<input type="radio" name="answer07" value="0" checked>
				<input type="radio" name="answer07" value="-1">
				<input type="radio" name="answer07" value="-2">
				そう思わない
				<br /><br />
				質問8<br />
				そう思う
				<input type="radio" name="answer08" value="2">
				<input type="radio" name="answer08" value="1">
				<input type="radio" name="answer08" value="0" checked>
				<input type="radio" name="answer08" value="-1">
				<input type="radio" name="answer08" value="-2">
				そう思わない
				<br /><br />
				質問9<br />
				そう思う
				<input type="radio" name="answer09" value="2">
				<input type="radio" name="answer09" value="1">
				<input type="radio" name="answer09" value="0" checked>
				<input type="radio" name="answer09" value="-1">
				<input type="radio" name="answer09" value="-2">
				そう思わない
				<br /><br />
				質問10<br />
				そう思う
				<input type="radio" name="answer10" value="2">
				<input type="radio" name="answer10" value="1">
				<input type="radio" name="answer10" value="0" checked>
				<input type="radio" name="answer10" value="-1">
				<input type="radio" name="answer10" value="-2">
				そう思わない
				<br /><br />
				<input type="submit" name="result" value="結果ページへ" />
			</c:if>
			</c:if>
	
			<%-- 保持しておく情報たち --%>
			<input type="hidden" name="answer01" value="${answer01}" />
			<input type="hidden" name="answer02" value="${answer02}" />
			<input type="hidden" name="answer03" value="${answer03}" />
			<input type="hidden" name="answer04" value="${answer04}" />
			<input type="hidden" name="answer05" value="${answer05}" />
			<input type="hidden" name="answer06" value="${answer06}" />
			<input type="hidden" name="answer07" value="${answer07}" />
			<input type="hidden" name="answer08" value="${answer08}" />
			<input type="hidden" name="answer09" value="${answer09}" />
			<input type="hidden" name="answer10" value="${answer10}" />
		</form>
	</body>
</html>