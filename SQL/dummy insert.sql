-- 더미 데이터

-- 회원

INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL,PROFILE) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김하나' , 'USER01' , '1111' , '101', '101', '19790111', '01012341234', 'k0322123@gmail.com', '뚱이.jpg' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL,PROFILE) VALUES (SEQ_MEMBER_NO.NEXTVAL, '이하다' , 'USER02' ,'2222' , '101', '101', '19790222', '01012351235', 'k0322124@gmail.com', '치삼제.jpg' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김하랑' , 'USER03' ,'3333' , '101', '101', '20080306', '01012351235', 'k0322124@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김하정' , 'USER04' ,'4444' , '101', '101', '2009520', '01012351235', 'k0322124@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '박수민' , 'USER05' ,'5555' , '102', '1101', '19880111', '01012361236', 'k0322125@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김경민' , 'USER06' ,'6666' , '102', '1101', '19890222', '01012371237', 'k0322126@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김수현' , 'USER07' ,'7777' , '102', '1101', '20160322', '01012371237', 'k0322124@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '김수혁' , 'USER08' ,'8888' , '102', '1101', '20170630', '01012351235', 'k0322124@gmail.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '황정연' , 'USER09' ,'9999' , '103', '1201', '19910404', '01066065505', 'primeum8@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '손수정' , 'USER10' ,'1000' , '103', '1201', '19870606', '01077078808', 'primeum9@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '이광천' , 'USER11' ,'1100' , '201', '1502', '19680606', '01045132566', 'primeum11@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '박민철' , 'USER12' ,'1200' , '301', '803', '19590606', '01077042559', 'primeum12@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '신상영' , 'USER13' ,'1300' , '101', '1603', '19600606', '01077062650', 'primeum13@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '박지영' , 'USER14' , '1400' , '101', '303', '19830116', '01015475588', 'primeum14@naver.com' );
INSERT INTO MEMBER (NO,NAME,ID,PWD,DONG_NUM,HO_NUM,BIRTH,PHONE,EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL, '이서희' , 'USER15' , '1500' , '101', '402', '19840228', '01014558789', 'primeum15@naver.com' );

-- 관리자

INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN01' , '1111' ,'관리소장', 'M', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN02' , '2222' ,'101동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN03' , '3333' ,'102동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN04' , '4444' ,'103동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN05' , '5555' ,'104동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN06' , '6666' ,'201동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN07' , '7777' ,'202동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN08' , '8888' ,'203동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN09' , '9999' ,'204동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN10' , '1010' ,'301동 경비원', 'S', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN11' , '1110' ,'201동대표', 'D', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN12' , '1120' ,'301동대표', 'D', 'Security.png' );
INSERT INTO ADMIN (NO,ID,PWD, NAME, GRADE, PROFILE) VALUES (SEQ_ADMIN_NO.NEXTVAL, 'ADMIN13' , '1130' ,'101동대표', 'D', 'Security.png' );

-- 동대표 호감도
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('11', '11', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('12', '12', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'H');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'L');
INSERT INTO CAPTAIN_LOVE (MEMBER_NO,CAPTATIN_NO,LOVE) VALUES ('13', '13', 'L');

-- 가계부 카테고리 외식

INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '금융/보험');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '생활/마트');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '의료/건강');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '문화/예술');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '경조사/회비');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '교통/차량');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '뷰티/미용');
INSERT INTO ACCOUNT_CATEGORY (NO, NAME) VALUES (SEQ_ACCOUNT_CATEGORY_NO.NEXTVAL, '기타지출');


-- 가계부

INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '2', '롯데슈퍼 저녁 장', '24000', '2023-06-01');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '3', '우리이비인후과', '5500', '2023-06-02');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '2', '한살림 점심 장', '13000', '2023-06-02');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '7', '올리브영 세일: 토너, 앰플', '33000', '2023-06-03');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '4', '밀리의 서재', '9900', '2023-06-03');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '10', '2', '외식:대한닭발', '30000', '2023-06-03');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '5', '2', '홈플러스 장: 닭고기, 닭볶음탕 양념', '10000', '2023-06-04');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '5', '5', '지은 결혼식', '100000', '2023-06-05');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '5', '5', '독서모임 회비', '15000', '2023-06-15');
INSERT INTO ACCOUNT (NO,WRITER_NO,ACCOUNT_CNO,CONTENT,PRICE,ACCOUNT_DATE) VALUES (SEQ_ACCOUNT_NO.NEXTVAL, '5', '6', '교통카드 한 달', '110000', '2023-06-15');

-- 회원 캘린더
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '10', '가정의학과 방문 예정', '2023-06-28','2023-06-28' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '10', '가족 소풍', '2023-06-30','2023-06-30' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '5', '미영이네 집들이', '2023-07-01','2023-07-01' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '5', '수혁이 공개수업', '2023-07-02','2023-07-02' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '9', '고등학교 동창 캠핑', '2023-06-25','2023-06-26' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '9', '자격증 시험', '2023-07-01','2023-07-01' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '6', '월급', '2023-07-10','2023-07-10' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '6', '대학 동기 결혼식', '2023-07-09','2023-07-09' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '10', '종로 전시회', '2023-07-12','2023-07-12' );
INSERT INTO MEMBER_CALENDAR (NO,WRITER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_MEMBER_CALENDAR_NO.NEXTVAL, '10', '결혼기념일', '2023-07-10','2023-07-10' );

-- 공지 캘린더
INSERT INTO NOTICE_CALENDAR (NO,WRTIER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_NOTICE_CALENDAR_NO.NEXTVAL, '1', '도서관 시설 공사', '2023-06-29', '2023-06-30');
INSERT INTO NOTICE_CALENDAR (NO,WRTIER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_NOTICE_CALENDAR_NO.NEXTVAL, '1', '정기 소독일', '2023-07-03', '2023-07-05');
INSERT INTO NOTICE_CALENDAR (NO,WRTIER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_NOTICE_CALENDAR_NO.NEXTVAL, '1', '외벽 물청소', '2023-07-01', '2023-07-03');
INSERT INTO NOTICE_CALENDAR (NO,WRTIER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_NOTICE_CALENDAR_NO.NEXTVAL, '1', '승강기 점검', '2023-07-06', '2023-07-10');
INSERT INTO NOTICE_CALENDAR (NO,WRTIER_NO,NAME,START_DATE,END_DATE) VALUES (SEQ_NOTICE_CALENDAR_NO.NEXTVAL, '1', '외벽 도장', '2023-07-15', '2023-07-20');

-- 편의시설
-- 도서관
INSERT INTO AMENITY(NO,NAME,CONTENT,MAX_NUM,LOCATION,IMG) VALUES (SEQ_AMENITY_NO.NEXTVAL, '도서관', '안녕하세요 꿀단지 도서관입니다. 
저희 도서관은 남녀노소 모두에게 열려있는 도서관입니다. 

수용가능 인원은 50명입니다. 
도서관 관리인 연락처 : 02-4321-9320
*취소는 반드시 하루 전 날에 가능합니다. 
이용하시는데 착오 없으시길 바랍니다.', '50', '1단지 앞 커뮤니티 건물 1층', '');

-- 수영장
INSERT INTO AMENITY(NO,NAME,CONTENT,MAX_NUM,LOCATION,IMG) VALUES (SEQ_AMENITY_NO.NEXTVAL, '수영장', '안녕하세요 꿀단지 수영장입니다. 

수용가능 인원은 80명입니다. 
수영장 관리인 연락처 : 02-4321-9321
*취소는 반드시 하루 전 날에 가능합니다. 
이용하시는데 착오 없으시길 바랍니다.', '80', '1단지 앞 커뮤니티 건물 지하1층', '수영장대표.jpg');

-- 헬스장
INSERT INTO AMENITY(NO,NAME,CONTENT,MAX_NUM,LOCATION,IMG) VALUES (SEQ_AMENITY_NO.NEXTVAL, '헬스장', '안녕하세요 꿀단지 헬스장입니다. 

수용가능 인원은 50명입니다. 
헬스장 관리인 연락처 : 02-4321-9322
*취소는 반드시 하루 전 날에 가능합니다. 
이용하시는데 착오 없으시길 바랍니다.', '50', '1단지 앞 커뮤니티 건물 1층', '헬스장대표.jpg');

-- 골프장



-- 편의시설 이미지
INSERT INTO AMENITY_IMG (NO,AMENITY_NO,NAME) VALUES (SEQ_AMENITY_NO.NEXTVAL, '1', '도서관시설1.JPG');
INSERT INTO AMENITY_IMG (NO,AMENITY_NO,NAME) VALUES (SEQ_AMENITY_NO.NEXTVAL, '1', '도서관시설2.JPG');
INSERT INTO AMENITY_IMG (NO,AMENITY_NO,NAME) VALUES (SEQ_AMENITY_NO.NEXTVAL, '1', '도서관시설3.JPG');
INSERT INTO AMENITY_IMG (NO,AMENITY_NO,NAME) VALUES (SEQ_AMENITY_NO.NEXTVAL, '2', '수영장시설1.JPG');


-- 편의시설 예약
INSERT INTO AMENITY_RESERVATION (NO,AMENITY_NO,MEMBER_NO,RESERVE_TIME) VALUES (SEQ_AMENITY_RESERVATION_NO.NEXTVAL, '2', '');

-- 편의시설 점검



-- 차량
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '1', '02누2776', 'G80.png', '제네시스 G80, 블랙');
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '1', '08라3839', '산타페.jpg', '싼타페, 화이트');
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '2', '23거7887', 'bmw640.jpg', 'bmw 640i, 밝은 브라운');
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '5', '69너6657', '벤츠.png', '벤츠 s클래스, 블랙');
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '9', '153호1002', 'G70.png', '제네시스 G70, 블랙');
INSERT INTO CAR (NO,ADMIN_NO,MEMBER_NO,UNIQUE_NUM,IMG,NAME) VALUES (SEQ_CAR_NO.NEXTVAL, '1', '9', '387누9094', 'A6.png', '아우디 A6, 화이트');

-- 바이크 (자전거 + 오토바이)
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '2', '구스타브.jpg', '구스타브28 클래식, 블랙');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '2', '첼로xc.jpg', '첼로xc 프로 30 MTB, 블랙');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '5', '사일레스.jpg', '사일렉스700 메리다 , 빨간색');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '7', '트랙마린.jpg', '트렉 마린7 MTB, 노란색');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '7', '알톤16.jpg', '베네톤 알톤 16인치, 분홍색 ');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '9', '야마하yzf.jpg', '야마하 YZF-R3 18년식, 블랙');
INSERT INTO BICYCLE (NO,ADMIN_NO,MEMBER_NO,IMG,NAME) VALUES (SEQ_BICYCLE_NO.NEXTVAL, '1', '8', '구스타브.jpg', '구스타브28 클래식 블랙');

-- 관리자 호출
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '2', '1', '욕실 위 층에서 물이 새는 것 같아요');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '2', '2', '층간 소음이 좀 심하네요');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '3', '5', '싱크대 수도 배관이 터졌어요 ㅜㅜ ');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '3', '5', '욕실 수도에서 녹물이 나와요');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '4', '9', '배달음식이 잘못 온 것 같아요');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '4', '9', '택배 다시 반품하고싶어요');
INSERT INTO ADMIN_CALL (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_ADMIN_CALL_NO.NEXTVAL, '6', '11', '관리비 관련해서 급하게 확인하고 싶은 게 있어요');

-- 택배
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '2', '2');
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '5', '3');
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '6', '3');
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '9', '4');
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '11', '6');
INSERT INTO PARCEL(NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_PARCEL_NO.NEXTVAL, '12', '10');

-- 배달
INSERT INTO DELIVERY (NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_DELIVERY_NO.NEXTVAL, '1', '2');
INSERT INTO DELIVERY (NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_DELIVERY_NO.NEXTVAL, '5', '3');
INSERT INTO DELIVERY (NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_DELIVERY_NO.NEXTVAL, '6', '3');
INSERT INTO DELIVERY (NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_DELIVERY_NO.NEXTVAL, '9', '4');
INSERT INTO DELIVERY (NO,MEMBER_NO,ADMIN_NO) VALUES (SEQ_DELIVERY_NO.NEXTVAL, '11', '6');

-- 신고 카테고리
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '욕설/비하/혐오');
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '부적절한 홍보');
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '음란물/청소년 유해');
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '불법성');
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '사칭/사기');
INSERT INTO REPORT_CATEGORY (NO, NAME) VALUES (SEQ_REPORT_CATEGORY_NO.NEXTVAL, '기타');

-- 신고 내역
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '2', '2', '5', '과일가게 홍보가 의심됩니다.', '게시판에서 주기적으로 과일가게 홍보의심글이 있어 신고요청드립니다.');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '1', '3', '6', '욕설 사용', '댓글로 욕했어요');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '6', '1', '8', '유언비어를 퍼뜨리고 다닙니다.', '아파트에 대해 안좋은 얘기를 너무 많이 하네요');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '1', '2', '5', '욕설', '홍보 아니냐고 물었는데 욕했어요');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '4', '6', '10', '장터에서 팔면 안되는 거 팜', '흠뻑쇼 플미 붙여서 팔았어요.');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '4', '5', '10', '상품 가격을 말도 안되게 파네요', '먹태깡 원가의 10배로 팔아요. 불법 아닌가요?');
INSERT INTO REPORT (NO,REPORT_CNO,REPORTER,RESPONDENT,TITLE,CONTENT) VALUES (SEQ_REPORT_NO.NEXTVAL, '3', '4', '8', '댓글로 이상한 거 올려요', '확인해주세요');

-- 제재
INSERT INTO RESTRICTION (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_RESTRICTION_NO.NEXTVAL, '1', '5', '잦은 홍보 신고로 인한 제재');
INSERT INTO RESTRICTION (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_RESTRICTION_NO.NEXTVAL, '1', '6', '심한 욕설 사용');
INSERT INTO RESTRICTION (NO,ADMIN_NO,MEMBER_NO,CONTENT) VALUES (SEQ_RESTRICTION_NO.NEXTVAL, '1', '8', '누적 신고 수가 많음');


-- 상벌점


-- 채팅방
INSERT INTO CHATTING_ROOM (NO,MASTER_NO,NAME,IMG) VALUES (SEQ_CHATTING_ROOM_NO.NEXTVAL, '1', '101동 골프모임', 'golf.jpg');
INSERT INTO CHATTING_ROOM (NO,MASTER_NO,NAME,IMG) VALUES (SEQ_CHATTING_ROOM_NO.NEXTVAL, '5', '101동 골프모임', 'golf.jpg');

-- 채팅 멤버 리스트
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('1', '1', '2023-07-10 13:28:00');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('1', '2', '2023-07-10 13:10:28');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('1', '13', '2023-07-10 13:33:24');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('1', '14', '2023-07-10 13:35:33');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('1', '15', '2023-07-10 13:36:11');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('2', '5', '2023-07-10 15:33:20');
INSERT INTO CHATTING_MEMBER_LIST (CHATTING_ROOM_NO,MEMBER_NO,READ_TIME) VALUES ('2', '9', '2023-07-10 15:37:55');

-- 채팅 메세지
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '1', '13' , '어제 금액 정산합시다.');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '1', '14', '네~ ');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '1', '14', '총무님~ ');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '1', '15', '잠시만요. 정산하고 말씀드릴게요');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '5', '내일 등산 가는 거 어떰');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '9','ㅇㅋㅇㅋ 좋음. 어디로?');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '5','관악산?');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '9','ㄴㄴ 청계산 가자');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '5','몇 시까지 만날까');
INSERT INTO CHATTING_MESSAGE(NO,CHATTING_ROOM_NO,MEMBER_NO, CONTENT) VALUES (SEQ_CHATTING_MESSAGE_NO.NEXTVAL, '2', '9','8시까지 정문에서 만나');



