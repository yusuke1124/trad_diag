<%@ page pageEncoding = "UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%-- ModuleID : TdModuleId.TOP --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>TOP</title>
		<style type="text/css">
			<!--
			BODY {
				background-size:contain;
				background-repeat:no-repeat;
			}
			.bottun_position {
				float:right;
			}
			input#submit_button {
				width:150px;
				height:50px;
				border: 1px solid #99FF66;
				background-color: #009933;
				background-image: -webkit-linear-gradient(top, #99FF66, #99FF66);
				background-image: linear-gradient(to bottom, #99FF66, #99FF66);
				border-radius: 4px;
				line-height: 50px;
				-webkit-transition: none;
				transition: none;
				text-shadow: 0 1px 1px rgba(0, 0, 0, .3);
			}
			input#submit_button:hover {
				border:1px solid #66FF66;
				background-color: #1ab0ec;
				background-image: -webkit-linear-gradient(top, #66FF66, #66FF66);
				background-image: linear-gradient(to bottom, #66FF66, #66FF66);
			}
			-->
		</style>
	</head>
	<body background="/trad_diag/img/background/index.png">
		<form method="post">
			<div class="bottun_position">
				<br/>
				<input id="submit_button" type="submit" name="question01" value="質問ページへ" /><br/>
			</div>
		</form>
	</body>
</html>