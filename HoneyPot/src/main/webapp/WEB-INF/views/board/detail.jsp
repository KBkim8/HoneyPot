<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.title}</title>
<style>

	/* 배경 구역 */
	.board-detail-area {
		padding: 25px;
		/* text-align: center; */
	}

	.bg, .reply-bg {
		background: white;
		border-radius: 20px;
	}


	/* 제목 */
	table {
		border-collapse: collapse;
		width: 1450px;
		font-size: 20px;
	}

	.detail-title-area {
		display: flex;
		justify-content: center;
		align-items: center;
	}

	#detail-title td {
		padding: 20px 50px 10px;
		border-bottom: 5px solid #FAD355;
	}

	#detail-title td[id=title] {
		width: 700px;
		max-width: 700px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		text-align: left;
	}

	#detail-title td:not(:first-of-type) { text-align: right;}


	/* 본문 */
	/* #detail-content {
		width: 100%;
		resize: none;
		padding: 50px;
		border: none;
		outline: none;
		overflow-y: hidden;
	} */
	#detail-content {
		margin: 100px;
		padding-bottom: 100px;
	}


	/* 좋아요 버튼 */
	.like-btn-area {
		padding: 10px 40px 40px;
		text-align: center;
	}

	#like-btn, #disabled-like-btn {
		width: 75px;
		height: 75px;
		background-color: #FAD355;
		color: black;
		border-radius: 45px;
		border: none;
		text-align: center;
		font-size: 18px;
		font-weight: bold;
	}

	.fa-heart { color: red; }


	/* 버튼 */
	.btn-area {
		display: flex;
		justify-content: right;
		align-items: center;
		padding: 0px 30px 20px;
	}

	#btn-box > button , #reply-insert-btn, #reply-edit-insert-btn {
		width: 100px;
		height: 40px;
		background-color: #FAD355;
		color: black;
		border-radius: 10px;
		border: none;
		text-align: center;
		font-size: 18px;
		font-weight: bold;
	}

	#btn-box > button { margin-right: 20px; }

	#reply-insert-btn, #reply-edit-insert-btn { height: 50px; }

	#like-btn:hover, #btn-box > button:hover, #reply-insert-btn:hover {
		color: white;
		cursor: pointer;
	}


	/* 댓글 */
	.hidden {
		display: none;
	}

	.reply-area { padding: 25px; }

	.user-reply {
		display: flex;
		padding: 15px;
		border-bottom: 3px solid #FAD355;
	}
	
	#profile > img {
		width: 60px;
		height: 60px;
		border-radius: 45px;
	}

	.user-reply > div:first-of-type { margin-right: 15px; }

	#reply-body > div:not(:last-of-type) { margin-bottom: 2px;}

	#reply-writer { font-weight: bold; }

	/* .reply-content {
		white-space: pre-wrap;
    	word-break: break-word;
	} */

	#reply-footer { display: flex; }

	#reply-footer > div:not(:last-of-type) { margin-right: 15px; }

	#reply-footer > div:hover:not(:first-of-type) {
		cursor: pointer;
		color: rgb(155, 155, 155);
	}


	/* 대댓글 */
	.user-re-reply {
		display: flex;
		padding: 15px 15px 15px 80px;
		border-bottom: 3px solid #FAD355;
	}

	.user-re-reply > div:first-of-type { margin-right: 15px; }


	/* 댓글작성란 */
	.reply-submit-area {
		display: flex;
		align-items: center;
		padding: 20px 35px;
	}
	
	.reply-write-area, .reply-edit-area {
		display: flex;
		align-items: center;
	}

	#reply-write, .reply-edit {
		border-radius: 10px;
		width: 1000px;
		height: 50px;
		border: 1px solid rgb(155, 155, 155);
		font-size: 18px;
		resize: none;
		padding: 10px;
		font-family: 'Noto Sans KR';
	}

	#reply-insert-btn, #reply-edit-insert-btn { margin: 0px 25px; }

	/* div {border: 1px solid red;} */

</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<nav>
		<%@ include file="/WEB-INF/views/common/first-nav.jsp"%>
	</nav>

	<main>

		<div class="board-detail-area">
			<div class="bg">

				<!-- 제목 -->
				<div class="detail-title-area">
					<table id="detail-title">
						<tr>
							<td id="title">${vo.title}</td>
							<c:choose>
								<c:when test="${vo.boardCno == 3}">
									<td id="writer">익명</td>
								</c:when>
								<c:otherwise>
									<td id="writer">${vo.writerName}</td>
								</c:otherwise>
							</c:choose>
							<td>${vo.enrollDate}</td>
							<td><i class="fa-solid fa-eye"></i> &nbsp; ${vo.hit}</td>
						</tr>
					</table>
				</div>
				
				<!-- 본문 -->
				<div class="detail-content-area">
					<div id="detail-content">
						${vo.content}
					</div>
				</div>

				<!-- 좋아요 버튼 -->
				<div class="like-btn-area">
					<c:choose>
						<c:when test="${loginMember != null}">
							<button type="button" id="like-btn" onclick="clickLove();"><i class="fa-solid fa-heart"></i>&nbsp; ${vo.loveCnt}</button>
						</c:when>
						<c:otherwise>
							<button type="button" id="disabled-like-btn" disabled><i class="fa-solid fa-heart"></i>&nbsp; ${vo.loveCnt}</button>
						</c:otherwise>
					</c:choose>
				</div>

			</div>
		</div>

		<!-- 버튼 -->
		<div class="btn-area">
			<div id="btn-box">

				<c:choose>
					<c:when test="${vo.boardCno == '2'}">
						<button type="button" id="post-report-btn" onclick="location.href='/app/board/market'">목록으로</button>
					</c:when>
					<c:when test="${vo.boardCno == '3'}">
						<button type="button" id="post-report-btn" onclick="location.href='/app/board/noname'">목록으로</button>
					</c:when>
					<c:when test="${vo.boardCno == '4'}">
						<button type="button" id="post-report-btn" onclick="location.href='/app/board/praise'">목록으로</button>
					</c:when>
					<c:otherwise>
						<button type="button" id="post-report-btn" onclick="location.href='/app/board/free'">목록으로</button>
					</c:otherwise>
				</c:choose>

				<c:if test="${loginMember.no == vo.writerNo}">
					<button type="button" id="post-edit-btn" onclick="location.href='/app/board/edit?no=${vo.no}'">수정</button>
				</c:if>
				<c:if test="${loginAdmin.grade == 'M' || loginMember.no == vo.writerNo}">
					<button type="button" id="post-del-btn" onclick="location.href='/app/board/delete?no=${vo.no}'">삭제</button>
				</c:if>
			</div>
		</div>
		
		<div class="reply-area">
			<div class="reply-bg">
				
				<!-- 댓글 -->
				<div class="reply-wrapper">

					<!-- <div class="user-reply">
						<input type="hidden" name="boardNo" value="${vo.no}">
	
						<input type="hidden" name="replyNo" value="${rvo.no}">
						<div id="profile">
							<img src="/app/resources/profile/profile04cheese.jpg" alt="프로필사진">
						</div>
	
						<div id="reply-body">
							<div id="reply-writer">
								댓쓴이
							</div>
	
							<div id="reply-content">
								댓글내용ㅇㅇㅇㅇㅇㅇㅇ
							</div>

							<div class="reply-edit-area hidden">
								<textarea name="" id="reply-edit"></textarea>
								<div><button type="button" id="reply-edit-insert-btn" onclick="editReply();">댓글수정</button></div>
							</div>
	
							<div id="reply-footer">
								<div id="reply-date">
									2023.08.10 15:49
								</div>
								<div id="re-reply-btn" onclick="">답글쓰기</div>
									<div id="reply-edit-btn" onclick="showEditInput();">수정</div>
									<div id="reply-del-btn" onclick="">삭제</div>
								<div id="reply-report-btn" onclick="">신고</div>
							</div>
						</div>
					</div> -->

				</div>

				<!-- 댓글 작성란 -->
				<c:if test="${loginMember != null}">
					<div class="reply-submit-area">
						<div class="reply-write-area">
							<textarea name="" id="reply-write" placeholder="내용을 입력하세요."></textarea>
						</div>
	
						<div><button type="button" id="reply-insert-btn" onclick="writeReply();">댓글쓰기</button></div>
						
						<!-- <div id="secret-check">
							<label><input type="checkbox" id="secret" value="y">&nbsp;비밀댓글</label>
						</div> -->
					</div>
				</c:if>
				
			</div>
		</div>

	</main>

</body>
</html>

<script>
	basicSetting(); // 기본 셋팅
	headerName('게시판'); // 현재 페이지 이름
	firstNav(['공지 게시판', '자유 게시판', '장터 게시판', '익명 게시판', '칭찬 게시판'], ''); // 1st param : 메인 메뉴 목록, 2st param : 현재 메인 메뉴
	firstNavLink(['/app/notice/list', '/app/board/free', '/app/board/market', '/app/board/noname', '/app/board/praise',]);


	//좋아요
	function clickLove(){
		const likeBtn = document.querySelector('#like-btn');

		$.ajax({
			url : '/app/love',
			type : 'post',
			data : {
				boardNo : '${vo.no}',
				memberNo : '${loginMember.no}',
			},
			success : function (loveCnt) {
				console.log(loveCnt);
				likeBtn.innerHTML = '<i class="fa-solid fa-heart"></i>&nbsp; ' + loveCnt;
			},
			error : function (error) {
				console.log(error);
			},
		})
	}

	
	//댓글 작성
	function writeReply(){
		const replyWriteTag = document.querySelector('#reply-write');
		const replyWriteContent = replyWriteTag.value;
		const replyWriteContentTrim = replyWriteTag.value.trim();
		console.log(replyWriteTag);
		console.log(replyWriteContent);
		console.log(replyWriteContentTrim);

		if(!replyWriteContentTrim) {
			return;
		}

		$.ajax({
			url : '/app/reply/write' ,
			type : 'post' ,
			data : {
				boardNo : '${vo.no}' ,
				writerNo : '${loginMember.no}' ,
				content : replyWriteContent ,
			} ,
			success :function(result) {

				console.log(result);

				if (result == 'success') {
					alert("댓글이 등록되었습니다.");
					replyWriteTag.value = '';
					loadReply();
				}else{
					alert("댓글 작성 실패...");
				}
			},
			error : function(fail) {
				console.log(fail);
			},
		})
	}


	//댓글 목록
	function loadReply() {

		console.log("댓글 불러옴");
		const replyWrapper = document.querySelector('.reply-wrapper');

		$.ajax({
			url : '/app/reply/list',
			type : 'get',
			data : {
				boardNo : '${vo.no}',
			},
			success : function(replyList){
				replyWrapper.innerHTML = "";
				let str = "";
				for (let i=0 ; i < replyList.length ; i++) {
					str += '<div class="user-reply" id="user-reply' + replyList[i].no + '">';
					str += '<input type="hidden" name="replyNo" value="' + replyList[i].no + '">';
					str += '<c:if test="${vo.boardCno != 3}">';
					str += '<div id="profile">';
					str += '<img src="/app/resources/member/profile/' + replyList[i].profile +'" alt="프사">';
					str += '</div>';
					str += '</c:if>';
					str += '<div id="reply-body">';
					str += '<div id="reply-writer">';
					str += '<input type="hidden" name="replyWriterNo' + replyList[i].no + '" value="' + replyList[i].writerNo + '">';
					str += '<c:choose><c:when test="${vo.boardCno == 3}">익명</c:when><c:otherwise>' + replyList[i].writerName + '</c:otherwise></c:choose>';
					str += '</div>';
					str += '<div class="reply-content" id="reply-content' + replyList[i].no + '">';
					str += '<pre>' + replyList[i].content + '</pre>';
					str += '</div>';
					
					//댓글수정란
					str += '<div class="reply-edit-area hidden" id="reply-edit-area' + replyList[i].no + '">';
					str += '<textarea name="" class="reply-edit" id="reply-edit' + replyList[i].no + '">';
					str += replyList[i].content;
					str += '</textarea>';
					str += '<button type="button" id="reply-insert-btn" onclick="editReply(' + replyList[i].no + ');">댓글수정</button>';
					str += '</div>';

					str += '<div id="reply-footer">';
					str += '<div id="reply-date">';
					str += replyList[i].enrollDate;
					str += '</div>';
					// str += '<div id="re-reply-btn" onclick="">답글쓰기</div>';
					
					if ('${loginMember.no}' == replyList[i].writerNo) {
						str += '<div id="reply-edit-btn" onclick="showEditInput(' + replyList[i].no + ');">수정</div>';
					}
					if ('${loginMember.no}' == replyList[i].writerNo || '${loginAdmin.grade}' == "M") {
						str += '<div id="reply-del-btn" onclick="deleteReply(' + replyList[i].no + ');">삭제</div>';
					}
					
					// str += '<div id="reply-report-btn" onclick="">신고</div>';
					str += '</div>';
					str += '</div>';
					str += '</div>';
				}
				replyWrapper.innerHTML += str;
			},
			error: function(e){
				console.log(e);
			},
		})
	}


	//댓글 수정 버튼
	function showEditInput(no) {
		const replyContent = document.querySelector('#reply-content' + no);
		const replyEditArea = document.querySelector('#reply-edit-area' + no);

		replyContent.classList.toggle('hidden');
		replyEditArea.classList.toggle('hidden');
	}

	//댓글 수정
	function editReply(no){
		const replyWriterNo = document.querySelector('input[name=replyWriterNo' + no + ']');
		console.log(replyWriterNo);

		const replyEditTag = document.querySelector('#reply-edit' + no);
		const replyEditContent = replyEditTag.value;
		const replyEditContentTrim = replyEditContent.trim();
		console.log(replyEditTag);
		console.log(replyEditContent);
		console.log(replyEditContentTrim);

		if(!replyEditContentTrim) {
			return;
		}

		$.ajax({
			url : '/app/reply/edit' ,
			type : 'post' ,
			data : {
				no : no,
				boardNo : '${vo.no}' ,
				writerNo : replyWriterNo.value ,
				content : replyEditContent ,
			} ,
			success :function(result) {

				console.log(result);

				if (result == 'success') {
					alert("댓글이 수정되었습니다.");
					loadReply();
				}else{
					alert("댓글 수정 실패...");
				}
			},
			error : function(fail) {
				console.log(fail);
			},
		})
	}


	//댓글 삭제
	function deleteReply(no){
		const replyWriterNo = document.querySelector('input[name=replyWriterNo' + no + ']');
		console.log(replyWriterNo);

		$.ajax({
			url : '/app/reply/delete' ,
			type : 'post' ,
			data : {
				no : no,
				boardNo : '${vo.no}' ,
				writerNo : replyWriterNo.value ,
				adminGrade : '${loginAdmin.grade}',
			} ,
			success :function(result) {

				console.log(result);

				if (result == 'success') {
					alert("댓글이 삭제되었습니다.");
					loadReply();
				}else{
					alert("댓글 삭제 실패...");
				}
			},
			error : function(fail) {
				console.log(fail);
			},
		})
	}


	loadReply();



</script>