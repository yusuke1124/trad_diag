<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Question</title>
	</head>
	<body>
		<h2>質問ページだよ</h2>
		<form>
			<%-- 質問ページ1 --%>
			<c:if test="${tdModuleId == 'QUESTION_01'}" var="isQestion01">
			<c:if test="${isQestion01}">
				１つめの質問ページだよ<br />
				${name}さん診断中...<br />
				<br />
				質問1&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer01" value="1">
				<input type="radio" name="answer01" value="2">
				<input type="radio" name="answer01" value="3">
				<input type="radio" name="answer01" value="4">
				<input type="radio" name="answer01" value="5">
				そう思う
				<br />
				質問2&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer02" value="1">
				<input type="radio" name="answer02" value="2">
				<input type="radio" name="answer02" value="3">
				<input type="radio" name="answer02" value="4">
				<input type="radio" name="answer02" value="5">
				そう思う
				<br />
				質問3&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer03" value="1">
				<input type="radio" name="answer03" value="2">
				<input type="radio" name="answer03" value="3">
				<input type="radio" name="answer03" value="4">
				<input type="radio" name="answer03" value="5">
				そう思う
				<br />
				質問4&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer04" value="1">
				<input type="radio" name="answer04" value="2">
				<input type="radio" name="answer04" value="3">
				<input type="radio" name="answer04" value="4">
				<input type="radio" name="answer04" value="5">
				そう思う
				<br />
				質問5&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer05" value="1">
				<input type="radio" name="answer05" value="2">
				<input type="radio" name="answer05" value="3">
				<input type="radio" name="answer05" value="4">
				<input type="radio" name="answer05" value="5">
				そう思う
				<br />
				<input type="submit" name="question02" value="質問ページ2へ" />
			</c:if>
			</c:if>

			<%-- 質問ページ2 --%>
			<c:if test="${tdModuleId == 'QUESTION_02'}" var="isQestion02">
			<c:if test="${isQestion02}">
				２つめの質問ページだよ<br />
				${name}さん診断中...<br />
				<br />
				質問6&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer06" value="1">
				<input type="radio" name="answer06" value="2">
				<input type="radio" name="answer06" value="3">
				<input type="radio" name="answer06" value="4">
				<input type="radio" name="answer06" value="5">
				そう思う
				<br />
				質問7&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer07" value="1">
				<input type="radio" name="answer07" value="2">
				<input type="radio" name="answer07" value="3">
				<input type="radio" name="answer07" value="4">
				<input type="radio" name="answer07" value="5">
				そう思う
				<br />
				質問8&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer08" value="2">
				<input type="radio" name="answer08" value="1">
				<input type="radio" name="answer08" value="3">
				<input type="radio" name="answer08" value="4">
				<input type="radio" name="answer08" value="5">
				そう思う
				<br />
				質問9&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer09" value="1">
				<input type="radio" name="answer09" value="2">
				<input type="radio" name="answer09" value="3">
				<input type="radio" name="answer09" value="4">
				<input type="radio" name="answer09" value="5">
				そう思う
				<br />
				質問10&nbsp;&nbsp;
				そう思わない
				<input type="radio" name="answer10" value="1">
				<input type="radio" name="answer10" value="2">
				<input type="radio" name="answer10" value="3">
				<input type="radio" name="answer10" value="4">
				<input type="radio" name="answer10" value="5">
				そう思う
				<br />
				<input type="submit" name="result" value="結果ページへ" />
			</c:if>
			</c:if>
	
			<%-- 保持しておく情報たち --%>
			<input type="hidden" name="name" value="${name}" />
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