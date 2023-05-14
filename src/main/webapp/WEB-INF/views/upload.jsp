<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<form action="jjal.upload" method="post" enctype="multipart/form-data">
			<div class="uploadModalBigDiv">
				<div class="uploadModalMidDiv" style="width: 500px; height: 550px;">
					<div class="uploadModalSmallDiv">
						<span style="font-size: 20pt;">짤 업로드</span> &nbsp; ${r}
							<label class="pictureUplode"> <!-- photo upload -->
							<img class="uploadImg" id="image" style="display: none;">
							<span id="spanTag">+</span>
							<input class="fileUpload" type="file" name="img" id="img">
							
							</label>
							<div class="tagDiv"> <!-- 태그 입력 하는 Div -->
								<input class="tagInput" type="text" placeholder="태그 입력" name="tag" id="tag">
							</div>
							<div class="tagDiv">
								<textarea name="explanation" style="width: 800px;height: 80px;"></textarea>
							</div>
							<div class="uploadButton_div">
								<button class="uploadButton_in">등록</button>
								<input type="button" onclick="window.close();" class="uploadButton" value="닫기">
							</div>
					</div>
				</div>
			</div>
		</form>
	</div> 
 </div>
</body>
<script type="text/javascript">
document.getElementById("img").onchange = function () {
    var reader = new FileReader();
    $('#image').css({ 'display' : '' });
    $('#spanTag').css('display', 'none');
    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        
        document.getElementById("image").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
</script>
</html>