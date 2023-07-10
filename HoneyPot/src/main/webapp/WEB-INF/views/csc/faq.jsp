<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
        .faq-search-area{
            width: 1560px;
            height: 140px;
            background-color: #EAEAEA;
            display: flex;
            justify-content: end;
            align-items: center;
        }

        .faq-search{
            width: 400px;
            height: 50px;
            background-color: white;
            border: 1px solid black;
            border-radius: 10px;
            display: flex;
            justify-self: center;
            align-items: center;
            margin-right: 100px;
        }




        input[name=faqSearch]{
            margin-left: 12px;
            border: none;
            width: 330px;
            height: 30px;
        }

        input[name=faqSearch]:focus {outline:none;}

        #faq-search-icon{
            margin-left: 10px;
            font-size: 35px;
        }

    </style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<nav>
		<%@ include file="/WEB-INF/views/common/first-nav.jsp"%>
		<%@ include file="/WEB-INF/views/common/second-nav.jsp"%>
	</nav>

	<main>
		<div class="faq-area">
            <div class="faq-search-area">
                <div class="faq-search">
                    <input type="text" name="faqSearch">
                    <span id="faq-search-icon" class="material-symbols-outlined">
                        search
                        </span>
                </div>

            </div>

        </div>
	</main>

</body>
</html>

<script>
	const nav = document.querySelector("nav");
	const main = document.querySelector("main");
	const mainArea = document.querySelector("#main-area");
	const navArea = document.querySelector("#nav-area");

	mainArea.innerHTML = main.innerHTML;
	navArea.innerHTML = nav.innerHTML;
	main.innerHTML = "";
	nav.innerHTML = "";
</script>