<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- css -->
    <link rel="stylesheet" href="/app/resources/css/csc/admin/faq.css">

</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <nav>
            <%@ include file="/WEB-INF/views/common/first-nav.jsp" %>
            <!-- <%@ include file="/WEB-INF/views/common/second-nav.jsp" %> -->
        </nav>

        <main>
            <form action="/app/admin/csc/faq" method="GET">
                <div class="faq-search-area">
                    <div class="faq-search">
                        <div class="faq-search-box-area">
                            <select name="searchType" id="" class="faq-search-category">
                                <option value="TITLE">제목</option>
                            </select>
                            <input name="searchValue" type="text" class="faq-serach-input">
                        </div>
                        <div class="faq-search-btn-area">
                            <button type="submit">검색</button>
                        </div>
                    </div>
                </div>
            </form>

            
            <div class="faq-main-area">
                <div class="faq-content-area">
                    <div class="faq-list-category-area">
                        <a href="/app/admin/csc/faq?searchType=${searchVo.searchType}&searchValue=${searchVo.searchValue}" class="faq-list-category" id="faq-list-category">
                            <div class="faq-list-category-text">전체</div>
                        </a>
                        <c:forEach items="${cList}" var="vo">
	                        <a href="/app/admin/csc/faq?faqCno=${vo.no}&searchType=${searchVo.searchType}&searchValue=${searchVo.searchValue}" class="faq-list-category right-border" id="faq-list-category${vo.no}">
	                            <div class="faq-list-category-text">${vo.name}</div>
	                        </a>
                        </c:forEach>
                    </div>
        
                    <div class="faq-list-area">
                        <table>
                            <tr>
                                <th>분류</th>
                                <th>제목</th>
                                <th>조회수</th>
                                <th>작성일자</th>
                            </tr>
							<c:forEach items="${fList}" var="vo">
								<tr onclick="detailFAQ(this);">
                                    <td hidden>${vo.no}</td>
									<td>${vo.faqCname}</td>
									<td>${vo.question}</td>
									<td>${vo.hit}</td>
									<td>${vo.enrollDate}</td>
								</tr>
							</c:forEach>
        
                        </table>
                    </div>
                    <div class="faq-buttom-area">
                        <div class="page-area">
                            <c:if test="${pvo.currentPage > 1}">
                                <a href="/app/admin/csc/faq?page=${pvo.currentPage - 1}&searchType=${searchVo.searchType}&searchValue=${searchVo.searchValue}&faqCno=${searchVo.faqCno}"><</a>
                            </c:if>
                                <c:forEach begin="${pvo.startPage}" end="${pvo.endPage}" step="1" var="i">
                                    <c:if test="${pvo.currentPage != i}">
                                        <a href="/app/admin/csc/faq?page=${i}&searchType=${searchVo.searchType}&searchValue=${searchVo.searchValue}&faqCno=${searchVo.faqCno}">${i}</a>
                                    </c:if>
                                    <c:if test="${pvo.currentPage == i}">
                                        <a id="current-page">${i}</a>
                                    </c:if>
                                </c:forEach>
                            <c:if test="${pvo.currentPage < pvo.maxPage}">
                                <a href="/app/admin/csc/faq?page=${pvo.currentPage + 1}&searchType=${searchVo.searchType}&searchValue=${searchVo.searchValue}&faqCno=${searchVo.faqCno}">></a>
                            </c:if>
                        </div>
                        <button class="faq-write-btn" onclick="FAQWriteshow();">작성하기</button>
                        
                    </div>
    
                </div>

                <div class="faq-category-area">
                	<c:forEach items="${cListCnt}" var="vo">
                		<div class="faq-category-list">
	                        <div class="faq-category-list-text">${vo.name}</div>
	                        <div class="faq-category-list-num">${vo.categorySum}</div>
                    	</div>
                	</c:forEach>
                </div>
            </div>

            
        </main>

        <!-- FAQ 상세보기 모달 -->
        <div class="faq-background">
            <div class="faq-window">
                <div class="faq-popup">
                    <div class="faq-model-header-area">
                        <div class="faq-model-header">
                            <div class="faq-model-header-text">상세보기</div>
                            <span class="material-symbols-outlined" id="faq-close">
                                close
                            </span>
                        </div>
                    </div>
                    <div class="faq-model-body-area">
                        <div class="faq-model-body-first">
                            <div class="faq-model-sanction-date">
                                <div class="faq-model-title-text">FAQ 질문</div>
                                <div class="faq-model-question-text" id="faq-model-question"></div>
                            </div>
                        </div>
                        <div class="faq-model-answer-text-area">
                            <span class="material-symbols-outlined" id="faq-model-answer-icon">
                                subdirectory_arrow_right
                                </span>
                            <div class="faq-model-answer-text" id="faq-model-answer"></div>
                        </div>

                        <div class="faq-model-btn-area">
                            <button class="faq-edit-btn" onclick="faqEditModelShow()">수정</button>
                            <button class="faq-delete-btn" onclick="deleteFaq()">삭제</button>

                        </div>

                    </div>

                </div>
            </div>
            <!-- FAQ 수정 모달 -->
            <div class="faq-edit-background">
                <div class="faq-edit-window">
                    <div class="faq-edit-popup" id="faq-edit-popup">
                        <div class="faq-edit-model-header-area">
                            <div class="faq-edit-model-header">
                                <div class="faq-edit-model-header-text">FAQ 수정</div>
                                <span class="material-symbols-outlined" id="faq-edit-close">
                                    close
                                </span>
                            </div>
                        </div>
                        <div class="faq-edit-model-body-area">
                            <div class="faq-edit-model-body-text">제목</div>
                            <input type="text" id="faq-edit-model-title-box" class="faq-edit-model-title-box">
                            <div class="faq-edit-model-body-text">내용</div>
                            <textarea class="faq-edit-model-content" id="faq-edit-model-content"></textarea>

                            <div class="faq-edit-model-btn-area">
                                <button id="faq-edit-compelet-btn" class="faq-edit-model-check-btn" onclick="faqEdit();">수정완료</button>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- FAQ 작성하기 모달 -->
        <div class="faq-write-background">
            <div class="faq-write-window">
                <div class="faq-write-popup">
                    <div class="faq-write-model-header-area">
                        <div class="faq-write-model-header">
                            <div class="faq-write-model-header-text">FAQ 작성</div>
                            <span class="material-symbols-outlined" id="faq-write-close">
                                close
                            </span>
                        </div>
                    </div>
					<form action="/app/admin/csc/faq/write" method="post">
						<div class="faq-write-model-body-area">
	                        <div class="faq-write-model-body-text">카테고리</div>
	                        <select class="faq-write-model-category-box" name="faqCno">
								<c:forEach items="${cList}" var="vo">
									<option value="${vo.no}">${vo.name}</option>
								</c:forEach>
	                        </select>
	                        <div class="faq-write-model-body-text">제목</div>
	                        <input type="text" name="question" id="faq-write-model-title-box" class="faq-write-model-title-box">
	                        <div class="faq-write-model-body-text">내용</div>
	                        <textarea name="answer" class="faq-write-model-content" id="faq-write-model-content"></textarea>
	
	                        <div class="faq-write-model-btn-area">
	                            <button id="faq-write-compelet-btn" class="faq-write-model-check-btn" type="submit">작성완료</button>
	                        </div>

	                    </div>
					</form>


                </div>
            </div>

            
        </div>

        <script>
            // 답변여부 카테고리 동적 css
            function categoryClick(){
                const answerCheck = '${searchVo.faqCno}'
                const categoryAll = document.querySelector("#faq-list-category");
                const category1 = document.querySelector("#faq-list-category1");
                const category2 = document.querySelector("#faq-list-category2");
                const category3 = document.querySelector("#faq-list-category3");
                const category4 = document.querySelector("#faq-list-category4");

                if(answerCheck == '' || answerCheck == null || answerCheck == undefined){
                    categoryAll.classList.add("focus-category");
                }else if(answerCheck == '1'){
                    category1.classList.add("focus-category");
                }else if(answerCheck == '2'){
                    category2.classList.add("focus-category");
                }else if(answerCheck == '3'){
                    category3.classList.add("focus-category");
                }else if(answerCheck == '4'){
                    category4.classList.add("focus-category");
                }

            }

            categoryClick();

        </script>

</body>

</html>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    basicSetting(); // 기본 셋팅
    headerName('상담센터'); // 현재 페이지 이름
    firstNav(['문의 내역', '신고 내역', 'FAQ 관리'], 'FAQ 관리'); // 1st param : 메인 메뉴 목록, 2st param : 현재 메인 메뉴
    firstNavLink(['/app/admin/csc/inquiry-list', '/app/admin/csc/report-list', '/app/admin/csc/faq',]);
    // secondNav(['시설소개', '예약하기'], '시설소개'); // 1st param : 서브 메뉴 목록, 2st param : 현재 서브 메뉴

    let clickNo = null;
    // FAQ 상세보기 버튼
    function detailFAQ(e) {
        const bno = e.firstElementChild.innerText;
        $.ajax({
			url : "/app/csc/faq/detail",
			method : "GET",
            data : {
                "fno" : bno
            },
            dataType : "json",
			success : function(data) {
                const question = document.querySelector("#faq-model-question");
                const answer = document.querySelector("#faq-model-answer");

                question.innerHTML = "";
                answer.innerHTML = "";

                const answerStr = data.answer;
                const questionStr = data.question;
                clickNo = data.no;

                question.innerHTML = questionStr;
                answer.innerHTML = answerStr;

                FAQshow ();
			},
			error : function() {
                alert("실패");
			},
		})	

        
    }

    // FAQ 상세보기 모달 사용
    function FAQshow () {
        document.querySelector(".faq-background").className = "faq-background show";
    }

    function FAQclose () { 
        document.querySelector(".faq-background").className = "faq-background";
    }

    
    document.querySelector("#faq-close").addEventListener('click', FAQclose);
    // document.querySelector("#faq-check-btn").addEventListener('click', FAQclose);

    // FAQ 삭제
    function deleteFaq(){
        Swal.fire({
            title: '정말로 삭제 하시겠습니까?',
            text: '다시 되돌릴 수 없습니다. 신중하세요.',
            icon: 'warning',
            
            showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
            confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
            cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
            confirmButtonText: '승인', // confirm 버튼 텍스트 지정
            cancelButtonText: '취소', // cancel 버튼 텍스트 지정
            
            // reverseButtons: true, // 버튼 순서 거꾸로
            
            }).then(result => {
            // 만약 Promise리턴을 받으면,
            if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
            
                location.href="/app/admin/csc/faq/delete?fno=" + clickNo;
            }
        });
    }

    // FAQ 작성하기 모달 사용
    function FAQWriteshow () {
        document.querySelector(".faq-write-background").className = "faq-write-background wshow";
    }

    function FAQWriteclose () { 
        document.querySelector(".faq-write-background").className = "faq-write-background";
    }

    
    document.querySelector("#faq-write-close").addEventListener('click', FAQWriteclose);
    // document.querySelector("#faq-write-check-btn").addEventListener('click', FAQWriteclose);

    // FAQ 수정 모달 드래그 사용
    $( function() {
	  //draggable() 함수 	jquery-ul.js 스크립트 파일 안에 선언된 함수
    $("#faq-edit-popup").draggable({
        scroll : false,
        containment : 'parent',
        handle : '.faq-edit-model-header-area'
    });
    } );

    // faq 수정 모달 사용
    function faqEditShow() {
        document.querySelector(".faq-edit-background").className = "faq-edit-background eshow";
    }

    function faqEditClose() { 
        document.querySelector(".faq-edit-background").className = "faq-edit-background";
    }

    // faq 수정 모달 보여주기
    function faqEditModelShow(){
        const titleBox = document.querySelector("#faq-model-question");
        const contentBox = document.querySelector("#faq-model-answer");

        const editTitleBox = document.querySelector("#faq-edit-model-title-box");
        const editcontentBox = document.querySelector("#faq-edit-model-content");

        const titleStr = titleBox.innerHTML;
        const contentStr = contentBox.innerHTML;

        editTitleBox.value =  titleStr;
        editcontentBox.value = contentStr;

        faqEditShow();
    }

    // faq close시에 내용 비우기
    document.querySelector("#faq-edit-close").addEventListener('click', function(){
        const titleBox = document.querySelector("#faq-edit-model-title-box");
        const contentBox = document.querySelector("#faq-edit-model-content");

        faqEditClose();

        titleBox.value = "";
        contentBox.value = "";
    });

    // faq 수정 완료
    function faqEdit(){
        const questionValue = document.querySelector("#faq-edit-model-title-box").value;
        const answerValue = document.querySelector("#faq-edit-model-content").value;
        $.ajax({
            url : "/app/admin/csc/faq/edit",
            method : "POST",
            data : {
                "fno" : clickNo,
                "question" : questionValue,
                "answer" : answerValue
            },
            dataType : "json",
            success : function(data) {
                faqEditClose();
                FAQclose();
                const question = document.querySelector("#faq-model-question");
                const answer = document.querySelector("#faq-model-answer");

                question.innerHTML = "";
                answer.innerHTML = "";

                const questionStr = data.question;
                const answerStr = data.answer;
                clickNo = data.no;

                question.innerHTML = questionStr;
                answer.innerHTML = answerStr;

                FAQshow();

        },
        error : function() {
                alert("실패");
            },
        })
    }
</script>
