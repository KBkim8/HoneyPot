<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>

		<style type="text/css">
			* {
				padding: 0px;
				margin: 0px;
			}

			.custom-context-menu {
				position: absolute;
				z-index: 1000;
				box-sizing: border-box;
				border-radius: 10px;
				background-color: #ffffffc6;
				padding: 20px;
				cursor: pointer;
			}


			#modal {
				position: fixed;
				z-index: 10000;
				/* Map의 중앙에 위치시키기 */

				top: 60px;
				left: 455px;

				/* 모델창의 크기 */
				height: 855px;
				width: 1366px;

				background-color: white;
				border-radius: 10px;

			}

			.visible {
				display: block;
			}

			.hidden {
				display: none;
			}

			.main-box {
				position: fixed;
				top: 0;
				left: 0;
				bottom: 0;
				right: 0;
				background-color: rgba(172, 172, 172, 0.491);
			}

			/* 오른쪽에 나가기버튼 */
			.quit-btn {
				float: right;
				/* border: 1px solid red; */
			}

			.content {
				display: grid;
				grid-template-columns: 0.7fr 1fr;
				/* border: 2px solid mediumspringgreen; */
				height: 2000px;

			}

			.content>div {
				/* border: 2px solid black; */
			}

			#store-name {
				font-size: 35px;
				font-weight: 600;
			}

			#total-star {
				font-size: 35px;
				font-weight: 600;
			}

			/* 리뷰남기기버튼 */
			.right-btn {
				float: right;
				background-color: #FFD601;
				border-radius: 5px;
				border: none;
				padding: 10px;
				/* 오른쪽마진줘서 창과 크기맞추기 */
				margin-right: 10px;
			}

			#store-kind {
				margin-top: 5px;
			}

			#facility-info-area>div {
				/* border: 1px solid blue; */
			}

			#facility-info-area {
				padding: 10px;
			}

			.review-profile-area {
				display: flex;
				justify-content: center;
			}

			.review-profile-area>div {
				/* 좌우 균형을 맞춰 프로필을 가운데로 정렬 */
				margin-right: 3px;

				margin-top: 5px;
				width: 50px;
				height: 50px;
				border-radius: 70%;
				background-color: lightgray;
			}

			.review {
				/* 리뷰와 리뷰사이 거리 */
				margin-top: 20px;
				display: grid;
				grid-template-columns: 1fr 9fr;
			}

			.review>div {
				/* border: 1px solid violet; */
			}

			.font-color-gray {
				color: #7D7D7D;
				font-weight: 300;
			}

			#review-box {
				margin-top: 20px;
				overflow: auto;
				height: 685px;
			}

			.star-big-size {
				font-size: 50px;
			}

			/* 모달창 맨위와 첫번재페이지의 간격 */
			#facility-img-area {
				margin-top: 40px;
				font-size: 25px;
				/* 리뷰남기기구역 */
				padding-left: 15px;
				padding-right: 15px;
			}

			.font-bold {
				font-weight: 800;
			}

			/* 리뷰남기기 텍스트 */
			#review-text {
				/* 마진줘서 별과의 간격조정 */
				margin-top: 10px;
				resize: none;
				font-size: 20px;
				background-color: #ECECEC;
				border: none;
				padding: 28px;
				border-radius: 20px;
				outline: none;
			}

			/* 리뷰보기 텍스트 */
			.review-content {
				/* 포커스시 생기는 아웃라인 없애기 */
				outline: none;
				box-sizing: border-box;
				resize: none;
				/* 리뷰볼때 좌우사이즈 */
				width: 600px;
				font-family: 'Noto Sans KR';
				font-size: 16px;
				border: none;
				font-weight: 300;
			}


			/* 지도관련 */
			#map {
				position: fixed;
				top: 45px;
				left: 360px;
			}

			#placesList {
				position: fixed;
				top: 80px;
				left: 360px;
				z-index: 10000;
			}

			.search-area {
				position: fixed;
				top: 60px;
				left: 370px;
				z-index: 100000;
			}
		</style>
	</head>

	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<nav>

			</nav>



			<main>

				<div class="map_wrap">
					<div id="map" style="width:1560px;height:892px;"></div>
				</div>



				<div class="search-area">

					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" id="keyword" size="15">
						<button type="submit">검색하기</button>
					</form>

				</div>

				<!-- 평가등록만들기 -->
				<div id="dochi_context_menu" class="custom-context-menu" style="display: none;">평가등록하기</div>

				<div id="modal" class="modal-overlay">
					<div class="content">
						<div id="facility-img-area">
							아직 리뷰를 남기지 않으셨네요. <br>
							<span class="font-bold">뮈향</span>에 대한 평점과 내용을 솔직하게 남겨주세요.
							<div class="star-big-size">⭐⭐⭐⭐⭐</div>
							<textarea name="review-content" id="review-text" cols="50" rows="20"></textarea>
							<button class="right-btn">리뷰남기기</button>
						</div>

						<div id="facility-info-area">
							<div id="store-info-area">
								<span id="store-name">뮈향</span> <span id="total-star">⭐⭐⭐⭐⭐</span><i
									class="fa-solid fa-xmark fa-3x quit-btn" style="color: #000000;"></i>
							</div>
							<div id="store-kind">시설소개 : <span>분식집</span></div>
							<div id="map-btn-area">
								<span>연락처 : <span id="phone-num">010-2311-2341</span></span>
							</div>


							<div id="review-box">
								<!-- forEach로 개수만큼 불러오기 -->
								<c:forEach var="i" begin="1" end="5">
									<div class="review">
										<div class="review-profile-area">
											<div></div>
										</div>
										<div class="review-area">
											<div class="total-star">⭐⭐⭐⭐⭐</div>
											<div class="id-date-report font-color-gray">
												<span class="review-id">ehatchu0527</span> | <span
													class="review-date">20.07.12</span>
												| <span class="review-report">신고</span> | <span
													class="review-modify">수정</span> | <span
													class="review-delete">삭제</span>
											</div>

											<textarea class="review-content">리뷰이벤트한다고 했는데 왜 어째서 제게 마약콘치즈를 주시지 않으신건지 해명부탁드립니다 
저번에 리뷰이벤트해서 리뷰잘적은거 같은데 혹시 제가 리뷰한다해놓고 안적었나요? 
일단 오늘먹은거 리뷰하자면 훌륭했어요. 맛있는 피자였습니다. 
치즈싫어하시는분들도 치즈는 잘 안느껴져서 .. 전 좋았어요. 
다만 배달비가 너무 쎄네요 요즘시대에 5천원은 선넘은거아닌가요?</textarea>

										</div>
									</div>
								</c:forEach>
							</div>
						</div>


					</div>
				</div>
			</main>

	</body>

	</html>
	<script type="text/javascript">

		basicSetting(); // 기본 셋팅
		headerName('주변시설평가'); // 현재 페이지 이름
	</script>

	<script>


		function handlerClearContextMenu(event) {
			//안보이게하기
			const ctxMenu = document.querySelector('#dochi_context_menu');
			ctxMenu.style.display = 'none';

			//안보이게하기
			ctxMenu.style.top = null;
			ctxMenu.style.left = null;
		}
		// document.addEventListener('contextmenu',handlerCreateContextMenu,false);
		document.addEventListener('click', handlerClearContextMenu, false);



		//모달창띄우기
		const modal = document.querySelector("#modal");
		const openBtn = document.querySelector(".custom-context-menu");

		//이벤트걸기(div를 누르면 발동하게)
		openBtn.addEventListener("click", showModal);
		openBtn.addEventListener("click", resize);



		//함수 
		let main = document.querySelector("main");
		function showModal() {
			modal.style.display = "block";
			//뒤쪽에 백그라운드 색상 회색으로 변하는 효과
			main.classList.add('main-box');
		}

		//모달영역의 X버튼 누르면 꺼지게 만들기
		const quitBtn = document.querySelector(".quit-btn");
		quitBtn.addEventListener("click", function () {
			modal.style.display = "none";
			main.classList.remove('main-box');
		});

		//textarea길이를 알맞게 조절
		function resize() {
			let textarea = document.querySelectorAll(".review-content");
			console.log("리사이즈 실행됨, 온로드에서");
			for (let ta of textarea) {
				ta.style.height = "0px";

				let scrollHeight = ta.scrollHeight;
				let style = window.getComputedStyle(ta);
				let borderTop = parseInt(style.borderTop);
				let borderBottom = parseInt(style.borderBottom);

				ta.style.height = (scrollHeight + borderTop + borderBottom) + "px";
			}

		}


		window.onresize = resize;
	</script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6793ff7b973d605c93d751f8288336a5&libraries=services"></script>
	<script>
		//지도 초기 세팅
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center: new kakao.maps.LatLng(37.52605697804269, 127.05425946785395), // 지도의 중심좌표
				level: 3 // 지도의 확대 레벨
			};

		// 마커를 담을 배열입니다
		var markers = [];


		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		//중앙 마커가 표시될 위치입니다 (아파트위치)
		var markerPosition = new kakao.maps.LatLng(37.52605697804269, 127.05425946785395);

		//DB에서 가져올 목록	
		var positions = [
			{
				content: '<div>와세디야</div>',
				latlng: new kakao.maps.LatLng(37.525628054532234, 127.05134044746524)
			},
			{
				content: '<div>올리브영</div>',
				latlng: new kakao.maps.LatLng(37.52512156559906, 127.05058780236162)
			},
			{
				content: '<div>보보틱</div>',
				latlng: new kakao.maps.LatLng(37.52565595576345, 127.04929567206695)
			},
			{
				content: '<div>청담고수</div>',
				latlng: new kakao.maps.LatLng(37.52508410090432, 127.04861653099893)
			}
		];

		//마커생성하기
		/*마커 생성하기*/
		for (var i = 0; i < positions.length; i++) {
			// 마커를 생성합니다
			markerDB = new kakao.maps.Marker({
				map: map, // 마커를 표시할 지도
				position: positions[i].latlng // 마커의 위치
			});
			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
				content: positions[i].content // 인포윈도우에 표시할 내용
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			kakao.maps.event.addListener(markerDB, 'mouseover', makeOverListener(map, markerDB, infowindow));
			kakao.maps.event.addListener(markerDB, 'mouseout', makeOutListener(infowindow));
			kakao.maps.event.addListener(markerDB, 'click', function () {
				console.log(markerDB);
			});

		}


		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
			return function () {
				infowindow.open(map, marker);
			};
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
			return function () {
				infowindow.close();
			};
		}
		//==================================================================

		// //키워드로 검색하기
		// // 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch('서울 청담' + keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);



			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}


		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {
			/*목록관련
			var listEl = document.getElementById('placesList'), 
			menuEl = document.getElementById('menu_wrap'),
			fragment = document.createDocumentFragment(), 
			bounds = new kakao.maps.LatLngBounds(), 
			listStr = '';
			*/
			var sw = new kakao.maps.LatLng(37.52758144378935, 127.03822704748407),
				ne = new kakao.maps.LatLng(37.52227634988832, 127.05623355819152);
			bounds = new kakao.maps.LatLngBounds();
			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					markerSearch = addMarker(placePosition, i);

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해


				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function (markerSearch, title) {

					kakao.maps.event.addListener(markerSearch, 'mouseover', function () {
						displayInfowindow(markerSearch, title);
					})

					kakao.maps.event.addListener(markerSearch, 'mouseout', function () {
						infowindow.close();
					});

				})(markerSearch, places[i].place_name);

			}


		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기

				markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
				marker = new kakao.maps.Marker({
					position: position, // 마커의 위치
					image: markerImage
				});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker);  // 배열에 생성된 마커를 추가합니다

			return marker;
		}


		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}
		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

	//=====================================================//
	//마커를 클릭하면 모달창 뜨게하기
	//마커에 eventListner주기
	// kakao.maps.event.addListener(map, 'rightclick', function(event) {
	// 	kakao.maps.event.addListener(marker, 'click', function() {
	// 	//원래 우클릭시 나오던 효과지우기
	// 	//kakao.maps.event.preventMap();

	// 	//모달같은거 띄우기
	// 	const ctxMenu = document.querySelector('#dochi_context_menu');
	// 	ctxMenu.style.display = 'block';

	// 	//위에 것의 위치정하기
	// 	ctxMenu.style.top = event.point.y+45+'px';
	// 	ctxMenu.style.left = event.point.x+360+'px';
	// 	});
	// });

	</script>