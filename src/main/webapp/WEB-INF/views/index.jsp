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
 <div class="entire">
	<header class="header">
		<div class="header_first_div">
			<h1 class="logo">JJAL</h1>
			<button class="header_button">짤 업로드</button>
		</div>
	</header>
	
	<div>
		<div class="searachBody">
			<div class="searachBody_inDiv">
				<h2>JJAL Collection</h2>
				<form action="" class="search_form">
					<input class="search_input" type="text" placeholder="짤 검색">
				</form>
				<div class="input_under">
					<div class="input_text">전체</div>
					<div class="input_text">솔로</div>
					<div class="input_text">빡침</div>
					<div class="input_text">분노</div>
					<div class="input_text">놀람</div>
					<div class="input_text">눈물</div>
					<div class="input_text">표정</div>
					<div class="input_text">병맛</div>
					<div class="input_text">섭섭</div>
				</div>
			</div>
		</div>
	</div>
 </div>
 <div><!-- 모달 창 만들기 -->
	<div>
		<div class="uploadModalBigDiv">
			<div class="uploadModalMidDiv" style="width: 500px; height: 550px;">
				<div class="uploadModalSmallDiv" style="background-color: white;">
					<span style="font-size: 20pt;">짤 업로드</span>
						<label class="pictureUplode"> <!-- photo upload -->
						+
						<input class="fileUpload" type="file">
						</label>
						<div class="tagDiv"> <!-- 태그 입력 하는 Div -->
							<form class="tagForm" action="">
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