<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='resources/indexCss.css' rel="stylesheet" type="text/css">
</head>
<body>
<div><!-- 모달 창 만들기 -->
	<div>
		<div class="uploadModalBigDiv">
			<div class="uploadModalMidDiv" style="width: 500px; height: 550px;">
				<div class="uploadModalSmallDiv">
					<span style="font-size: 20pt;">짤 업로드</span>
						<label class="pictureUplode"> <!-- photo upload -->
						+
						<input class="fileUpload" type="file">
						</label>
						<div class="tagDiv"> <!-- 태그 입력 하는 Div -->
							<form class="tagForm">
								<input class="tagInput" type="text" placeholder="태그 입력">
							</form>
						</div>
						<div class="uploadButton_div">
							<button class="uploadButton">등록</button>
						</div>
				</div>
			</div>
		</div>
	</div> 
 </div>
</body>
</html>