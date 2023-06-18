<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>m²Dm - interior Shop:</title>
<link rel="stylesheet"
	href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap"
	rel="stylesheet">

<style>
.work-sans {
	font-family: 'Work Sans', sans-serif;
}

#menu-toggle:checked+#menu {
	display: block;
}

.hover\:grow {
	transition: all 0.3s;
	transform: scale(1);
}

.hover\:grow:hover {
	transform: scale(1.02);
}

.carousel-open:checked+.carousel-item {
	position: static;
	opacity: 100;
}

.carousel-item {
	-webkit-transition: opacity 0.6s ease-out;
	transition: opacity 0.6s ease-out;
}

#carousel-1:checked ~ .control-1, #carousel-2:checked ~ .control-2,
	#carousel-3:checked ~ .control-3 {
	display: block;
}

.carousel-indicators {
	list-style: none;
	margin: 0;
	padding: 0;
	position: absolute;
	bottom: 2%;
	left: 0;
	right: 0;
	text-align: center;
	z-index: 10;
}

#carousel-1:checked ~ .control-1 ~ .carousel-indicators li:nth-child(1) .carousel-bullet,
	#carousel-2:checked ~ .control-2 ~ .carousel-indicators li:nth-child(2) .carousel-bullet,
	#carousel-3:checked ~ .control-3 ~ .carousel-indicators li:nth-child(3) .carousel-bullet
	{
	color: #000;
	/*Set to match the Tailwind colour you want the active one to be */
}
</style>

<!--  category-style -->
<style>
#btn_group button {
	border: 1px solid #F28C28;
	background-color: rgba(0, 0, 0, 0);
	color: #F28C28;
	padding: 20px;
}

#btn_group button:hover {
	color: white;
	background-color: #FFDEAD;
}
</style>


</head>

<body
	class="bg-white text-gray-600 work-sans leading-normal text-base tracking-normal">

	<!--Nav-->
	<nav id="header" class="w-full z-30 top-0 py-1">
		<div
			class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-6 py-3">

			<label for="menu-toggle" class="cursor-pointer md:hidden block">
				<svg class="fill-current text-gray-900"
					xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					viewBox="0 0 20 20">
                    <title>menu</title>
                    <path
						d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path>
                </svg>
			</label> <input class="hidden" type="checkbox" id="menu-toggle" />

			<div
				class="hidden md:flex md:items-center md:w-auto w-full order-3 md:order-1"
				id="menu">
				<nav>
					<ul
						class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0">
						<li><a
							class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
							href="<c:url value="/shop/shopMain"></c:url>">Shop</a></li>
						<li><a
							class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
							href="secondHand/list">중고거래</a></li>
						<li><a
							class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
							href="#">About</a></li>
					</ul>
				</nav>
			</div>

			<div class="order-1 md:order-2">
				<a
					class="flex items-center tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl "
					href="#"> <svg class="fill-current text-gray-800 mr-2"
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24">
                        <path
							d="M5,22h14c1.103,0,2-0.897,2-2V9c0-0.553-0.447-1-1-1h-3V7c0-2.757-2.243-5-5-5S7,4.243,7,7v1H4C3.447,8,3,8.447,3,9v11 C3,21.103,3.897,22,5,22z M9,7c0-1.654,1.346-3,3-3s3,1.346,3,3v1H9V7z M5,10h2v2h2v-2h6v2h2v-2h2l0.002,10H5V10z" />
                    </svg> m²Dm
				</a>
			</div>

			<div class="order-2 md:order-3 flex items-center" id="nav-content">

				<a class="inline-block no-underline hover:text-black" href="#">
					<svg class="fill-current hover:text-black"
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24">
                        <circle fill="none" cx="12" cy="7" r="3" />
                        <path
							d="M12 2C9.243 2 7 4.243 7 7s2.243 5 5 5 5-2.243 5-5S14.757 2 12 2zM12 10c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3S13.654 10 12 10zM21 21v-1c0-3.859-3.141-7-7-7h-4c-3.86 0-7 3.141-7 7v1h2v-1c0-2.757 2.243-5 5-5h4c2.757 0 5 2.243 5 5v1H21z" />
                    </svg>
				</a> <a class="pl-3 inline-block no-underline hover:text-black" href="#">
					<svg class="fill-current hover:text-black"
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24">
                        <path
							d="M21,7H7.462L5.91,3.586C5.748,3.229,5.392,3,5,3H2v2h2.356L9.09,15.414C9.252,15.771,9.608,16,10,16h8 c0.4,0,0.762-0.238,0.919-0.606l3-7c0.133-0.309,0.101-0.663-0.084-0.944C21.649,7.169,21.336,7,21,7z M17.341,14h-6.697L8.371,9 h11.112L17.341,14z" />
                        <circle cx="10.5" cy="18.5" r="1.5" />
                        <circle cx="17.5" cy="18.5" r="1.5" />
                    </svg>
				</a>

			</div>
		</div>
	</nav>

	<section class="bg-white py-8">

		<div class="container mx-auto flex items-center flex-wrap pt-4 pb-12">

			<nav id="store" class="w-full z-30 top-0 px-6 py-1">
				<div
					class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-2 py-3">

					<a
						class="uppercase tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl "
						href="<c:url value="/secondHand/list"></c:url>"> 중고거래 </a>
						
					<div class="flex items-center" id="store-nav-content">

						<a class="pl-3 inline-block no-underline hover:text-black"
							href="#"> <svg class="fill-current hover:text-black"
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24">
                                <path
									d="M7 11H17V13H7zM4 7H20V9H4zM10 15H14V17H10z" />
                            </svg>
						</a> <a class="pl-3 inline-block no-underline hover:text-black"
							href="#"> <svg class="fill-current hover:text-black"
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24">
                                <path
									d="M10,18c1.846,0,3.543-0.635,4.897-1.688l4.396,4.396l1.414-1.414l-4.396-4.396C17.365,13.543,18,11.846,18,10 c0-4.411-3.589-8-8-8s-8,3.589-8,8S5.589,18,10,18z M10,4c3.309,0,6,2.691,6,6s-2.691,6-6,6s-6-2.691-6-6S6.691,4,10,4z" />
                            </svg>
						</a>

					</div>
				</div>
			</nav>
			
			<div>
				<c:if test="${!empty userSession.profile}" >
					<a href="<c:url value="/secondHand/add"></c:url>"> 
						<font color="BLACK">추가</font>
					</a>
				</c:if>
			</div>
			
			<!-- 수정 -->
			<c:forEach var="sh" items="${secondHandList.pageList}">
				<div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
					<a href="<c:url value="/secondHand/viewSH" > <c:param name="id" value="${sh.id}"/></c:url>"> 
						<font color="BLACK"><c:out value="${sh.name}"></c:out></font>
					</a>
				</div>		
			</c:forEach>
		</div>
	</section>

	<footer
		class="container mx-auto bg-white py-8 border-t border-gray-400">
		<div class="container flex px-3 py-8 ">
			<div class="w-full mx-auto flex flex-wrap">
				<div class="flex w-full lg:w-1/2 ">
					<div class="px-3 md:px-0">

						<h3 class="font-bold text-gray-900">m²Dm</h3>
						<p class="py-4">서울특별시 성북구 화랑로13길 60 02-940-0000 wwww.m²Dm.com</p>
					</div>
				</div>
				<div class="flex w-full lg:w-1/2 lg:justify-end lg:text-right">
					<div class="px-3 md:px-0">
						<h3 class="font-bold text-gray-900">Social</h3>
						<ul class="list-reset items-center pt-3">
							<li><a
								class="inline-block no-underline hover:text-black hover:underline py-1"
								href="#">Add social links</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>