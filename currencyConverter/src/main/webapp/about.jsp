<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
	 <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	font-family: Roboto;
	text-decoration: none;
	outline: none;
	border: none;
	scroll-behavior: smooth;
	box-sizing: border-box;
}

html {
	font-size: 60%;
	overflow-x: hidden;
}

:root {
	--first-color: white;
	--bg-color: #080808;
	--second-bg-color: #001005;
	--main-color: #00ff51;
}

body {
	background: var(--bg-color);
	color: var(--first-color);
}

.header {
	position: fixed;
	width: 100%;
	top: 0;
	left: 0;
	padding: 4rem 12%;
	background: rgba(0, 0, 0, 0.3);
	backdrop-filter: blur(5px);
	display: flex;
	justify-content: space-between;
	align-items: center;
	z-index: 100;
}

#menu-icon {
	font-size: 3.6rem;
	color: var(--main-color);
	display: none;
}

.logo {
	font-size: 3rem;
	color: var(--first-color);
	font-weight: 800;
	cursor: pointer;
	transition: 0.3s ease;
}

.logo:hover {
	transform: scale(1.1);
}

span {
	color: var(--main-color);
}

.nav a {
	font-size: 1.8rem;
	color: var(--first-color);
	margin-left: 4rem;
	font-weight: 500;
	border-bottom: 3px solid transparent;
}

.nav a:hover {
	color: var(--main-color);
	border-bottom: 3px solid var(--main-color);
}

section {
	min-height: 100vh;
	padding: 10rem 12%;
}

.home {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 15rem;
}

.home-content {
	display: flex;
	flex-direction: column;
	align-items: flex-end;
	text-align: right;
}

.home-content h1 {
	font-size: 6rem;
	font-weight: 700;
	margin-top: 3rem;
	line-height: 1;
}

.home-content h3 {
	font-size: 3rem;
	margin: 1rem 0;
}

.home-content p {
	font-size: 1.5rem;
	font-weight: 500;
	line-height: 1.8;
}

.home-img img {
	width: 32vw;
	height: 450px;
	margin-top: 40px;
	border-radius: 50%;
	box-shadow: 0 0 25px var(--main-color);
	transition: 0.4s ease-in-out;
}

.home-img img:hover {
	box-shadow: 0 0 25px var(--main-color), 0 0 50px var(--main-color), 0 0
		100px var(--main-color);
}

.social-icons a {
	display: inline-flex;
	justify-content: center;
	align-items: center;
	font-size: 3rem;
	padding: 1rem;
	background: transparent;
	border: 2px solid var(--main-color);
	border-radius: 50%;
	margin: 3rem 0.5rem;
	transition: 0.3s ease;
	color: var(--main-color);
}

.social-icons a:hover {
	color: var(--first-color);
	background-color: var(--main-color);
	transform: scale(1.2) translateY(-5px);
	box-shadow: 0 0 25px var(--main-color);
}

.btn-group {
	display: flex;
	gap: 1.5rem;
}

.btn {
	display: inline-block;
	padding: 1rem 3rem;
	background: var(--main-color);
	box-shadow: 0 0 25px var(--main-color);
	border-radius: 3rem;
	font-size: 1.8rem;
	color: black;
	border: 2px solid transparent;
	font-weight: 600;
	transition: 0.3s ease-in-out;
}

.btn:hover {
	box-shadow: 0 0 25px var(--main-color), 0 0 50px var(--main-color);
}

.btn-group a:nth-of-type(2) {
	background-color: black;
	color: var(--main-color);
	border: 2px solid var(--main-color);
	box-shadow: 0 0 25px transparent;
}

.btn-group a:nth-of-type(2):hover {
	box-shadow: 0 0 25px var(--main-color);
	background-color: var(--main-color);
	color: #001005;
}

.about {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 10rem;
	background-color: var(--bg-color);
}

.about-img img {
	margin-top: 60px;
	width: 32vw;
	height: 450px;
	border-radius: 50%;
	box-shadow: 0 0 25px var(--main-color);
	transition: 0.4s ease-in-out;
}

.about-img img:hover {
	box-shadow: 0 0 25px var(--main-color), 0 0 50px var(--main-color), 0 0
		100px var(--main-color);
}

.about-content h2 {
	font-size: 7rem;
	text-align: left;
}

.about-content p {
	font-size: 1.8rem;
}

.about-content .btn {
	margin: 3rem 0;
}

::-webkit-scrollbar {
	width: 13px;
}

::-webkit-scrollbar-thumb {
	background-color: var(--main-color);
}

::-webkit-scrollbar-track {
	background-color: var(--bg-color);
}

.heading {
	text-align: center;
	font-size: 7rem;
}

.services {
	background-color: var(--second-bg-color);
	color: black;
}

.services h2 {
	color: var(--first-color);
}

.services-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
	align-items: center;
	gap: 2.5rem
}

.service-box {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: var(--main-color);
	height: 450px;
	border-radius: 3rem;
	cursor: pointer;
	border: 5px solid transparent;
	transition: 0.4s ease-in-out;
	margin: 4rem 2rem;
}

.service-box:hover {
	background-color: var(--second-bg-color);
	color: var(--main-color);
	border: 5px solid var(--main-color);
	transform: scale(1.03);
}

.service-info {
	display: flex;
	flex-direction: column;
	text-align: center;
	justify-content: center;
	align-items: center;
	padding: 5rem;
}

.service-info i {
	font-size: 8rem;
}

.service-info h4 {
	font-size: 4rem;
	margin: 2rem 0;
	font-weight: 400;
	color: var(--first-color);
}

.service-info p {
	font-size: medium;
	font-weight: 600;
	line-height: 1.7;
}

.contact {
	background-color: var(--second-bg-color);
}

.contact h2 {
	margin-bottom: 3rem;
	color: var(--first-color);
}

.contact form {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 3rem;
	margin: 5rem 0;
	text-align: center;
}

.contact form .input-box input, .contact form textarea {
	width: 100%;
	padding: 2.5rem;
	font-size: 1.8rem;
	color: var(--first-color);
	background-color: var(--bg-color);
	border-radius: 2rem;
	border: 2px solid var(--main-color);
	margin: 1.5rem 0;
	resize: none;
}

.footer {
	background-color: var(--bg-color);
	padding: 50px 0;
}

.footer .social-icons {
	text-align: center;
}

.footer ul {
	text-align: center;
	font-size: 1.8rem;
}

.footer ul li {
	display: inline-block;
	margin-left: 20px;
}

.footer ul li a {
	color: white;
	border-bottom: 3px solid transparent;
	transition: ease-in-out;
}

.footer ul li a:hover {
	border-bottom: 3px solid var(--main-color);
}

.footer .copyright {
	text-align: center;
	margin-top: 40px;
	font-size: 16px;
	color: #888;
}

.projects {
	background-color: var(--second-bg-color);
	color: black;
}

.projects h2 {
	color: var(--first-color);
}

.project-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
	align-items: center;
	gap: 10px;
}

.project-box {
	display: flex;
	justify-content: center;
	background-color: var(--main-color);
	height: 600px;
	border-radius: 3rem;
	cursor: pointer;
	border: 5px solid transparent;
	transition: 0.4s ease-in-out;
	margin: 4rem 2rem;
}

.project-box:hover {
	background-color: var(--second-bg-color);
	color: var(--main-color);
	border: 5px solid var(--main-color);
	transform: scale(1.03);
}

.project-info {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	padding: 20px;
}

.project-info h2 {
	text-align: center;
	font-size: 23px;
	padding: 10px;
}

.project-info h4 {
	font-size: 4.5rem;
	text-align: center;
	padding: 0px 10px;
	color: #192a56;
}

.project-info p {
	font-size: medium;
	font-weight: 600;
	line-height: 1.7;
}

.project-info ul li {
	border: 1px solid var(--main-color);
	padding: 5px 10px;
	list-style: none;
	font-size: medium;
	font-weight: 600;
	border-radius: 5px;
	display: inline-block;
	width: max-content;
	margin: 3px 5px;
}

@media screen and (max-width:1024px) {
	#menu-icon {
		display: block;
	}
	.nav {
		position: absolute;
		top: 100%;
		right: 0;
		width: 50%;
		padding: 1rem 3rem;
		background-color: rgba(0, 0, 0, 0.8);
		border-left: 2px solid var(--main-color);
		border-bottom: 2px solid var(--main-color);
		border-bottom-left-radius: 2rem;
		display: none;
	}
	.nav a {
		display: block;
		font-size: 2rem;
		margin: 3rem 0;
		color: var(--first-color);
	}
	.nav.active {
		display: block;
	}
	.home {
		flex-direction: column-reverse;
		margin: 5rem 0;
		gap: 5rem;
	}
	.home-content {
		align-items: center;
		text-align: center;
	}
	.home-img  img, .about img {
		height: 250px;
		width: 250px;
	}
	.about {
		flex-direction: column-reverse;
		text-align: center;
	}
	.about h2 {
		text-align: center;
		margin: 2rem 0;
	}
	.projects {
		flex-direction: column-reverse;
		text-align: center;
		grid-template-columns: repeat(50%, minmax(50%, 1fr));
	}
	.project-box {
		text-align: justify;
		flex-direction: column-reverse;
		height: max-content;
		margin-right: 8rem;
	}
	.heading {
		font-size: 6rem;
	}
	.project-info h4 {
		font-size: 3.5rem;
	}
	form {
		flex-direction: column;
	}
}
</style>
</head>
<body>
	<header class="header">
		<a href="#home" class="logo"> Parthipan <span>Senthilkumar</span>
		</a> <i class="bx bx-menu" id="menu-icon"></i>
		<div class="nav">
			<a href="#home">Home</a> <a href="#services">Services</a> <a
				href="#projects">Projects</a> <a href="#contact">Contact</a> <a
				href="#about">About</a>
		</div>
	</header>
	<section class="home" id="home">
		<div class="home-content" id="home-content">
			<h1>
				Hi, It's <span>Parthipan</span>
			</h1>
			<h3>
				I'm a <span> Java Full Stack Devloper</span>
			</h3>
			<p>A motivated individual with in-depth knowledge of languages
				and development tools, seeking a position in a growth-oriented
				company where I can use my skills to the advantage of the company
				while having the scope to develop my skills.</p>
			<div class="social-icons">
				<a href="http://github.com/parthipan1234"> <i
					class="bx bxl-github"></i>
				</a> <a
					href="https://www.linkedin.com/in/parthipan-s-455228234?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app">
					<i class="bx bxl-linkedin-square"></i>
				</a> <a
					href="https://www.instagram.com/_dowlath_boy_?utm_source=qr&igsh=ZWEwNGZmZXRpbGl6">
					<i class="bx bxl-instagram-alt"></i>
				</a> <a href="#"> <i class="bx bxl-twitter"></i>
				</a>
			</div>
			<div class="btn-group">
				<a href="#" class="btn">Hire</a> <a href="#contact" class="btn">Contact</a>
			</div>
		</div>
		<div class="home-img">
			<img
				src="https://cdn.pixabay.com/photo/2024/05/05/13/01/ai-generated-8741167_640.jpg"
				alt="profile">
		</div>

	</section>


	<section class="services" id="services">
		<h2 class="heading">Services</h2>
		<div class="services-container">
			<div class="service-box">
				<div class="service-info">
					<i class="bx bxs-devices"></i>
					<h4>Mobiile App Development</h4>
					<p>As a Application Developer translates client requirements
						into application features and ensures the timely delivery of fully
						functional software applications</p>
				</div>
			</div>

			<div class="service-box">
				<div class="service-info">
					<i class="bx bx-code"></i>
					<h4>Frontend Development</h4>
					<p>A Front-End Developer with entry-level experience
						specializing in web development, Adept at identifying
						opportunities to enhance front-end design and improve the user
						experience.</p>
				</div>
			</div>

			<div class="service-box">
				<div class="service-info">
					<i class="bx bx-code-curly"></i>
					<h4>Backend Development</h4>
					<p>I am highly motivated, results-driven Java Backend Developer
						seeking a position to utilize my experience, skills and knowledge
						to create reliable, efficient and enhance user experience.</p>
				</div>
			</div>

		</div>
	</section>



	<section class="projects" id="projects">
		<h2 class="heading">PROJECTS</h2>
		<div class="project-container">
			<div class="project-box">
				<div class="project-info">
					<h4>To Do App</h4>
					<p>
						A todo list application is a tool that helps you organize and keep
						track of tasks that you need to complete. These tasks can be
						related to your personal or work responsibilities. The application
						allows you to create a list of tasks, prioritize them, set
						deadlines, and even assign them to specific projects or
						categories. <br>
					<ul>
						<h2>Technology Used</h2>
						<li>JAVA</li>
						<li>JSP(java server page)</li>
						<li>HTML 5</li>
						<li>CSS 3</li>
						<li>MY SQL</li>
						<li>SERVLET</li>
						<li>JDBC</li>
					</ul>
					</p>


				</div>
			</div>


			<div class="project-box">
				<div class="project-info">
					<h4>CUREENCY CONVERTER</h4>
					<p>
						A currency converter application is a tool that allows users to
						convert an amount of money from one currency to another. This
						application is particularly useful for individuals who need to
						conduct international transactions, travel abroad, or conduct
						business with foreign companies. <br>
					<ul>
						<h2>Technology Used:-</h2>
						<li>JAVA</li>
						<li>JSP(java server page)</li>
						<li>HTML 5</li>
						<li>CSS 3</li>
						<li>MY SQL</li>
						<li>SERVLET</li>
						<li>JDBC</li>
					</ul>
					</p>
				</div>
			</div>


			<div class="project-box">
				<div class="project-info">

					<h4>Qr Generater</h4>
					<p>
						A QR generator is a tool that allows you to create Quick Response
						(QR) codes, which are matrix barcodes that can be read by QR
						scanners or smartphones with cameras. These codes can store
						various types of data, such as URLs, text, phone numbers, and
						email addresses. <br>
					<ul>
						<h2>Technology Used:-</h2>
						<li>React Js</li>
						<li>HTML 5</li>
						<li>CSS 3</li>
						<li>JSX</li>
						<li>QR API</li>
						<li>Node Js</li>
						<li>Tool -> Visual Studio</li>
					</ul>
					</p>
				</div>
			</div>


			<div class="project-box">
				<div class="project-info">

					<h4>BMI CALCULATOR</h4>
					<p>
						A BMI (Body Mass Index) calculator app is a tool that allows users
						to calculate their BMI, which is a measure of body fat based on an
						individual's weight and height. The BMI is calculated by dividing
						a person's weight in kilograms by the square of their height in
						meters. <br>
					<ul>
						<h2>Technology Used:-</h2>
						<li>React Js</li>
						<li>HTML 5</li>
						<li>CSS 3</li>
						<li>Node JS</li>
						<li>Tool -> Visual Studio</li>
					</ul>
					</p>
				</div>
			</div>



		</div>
	</section>





	<section class="contact" id="contact">
		<h2 class="heading">Contact</h2>
		<form onsubmit="sendEmail(); reset(); return false;">
			<div class="input-group">
				<div class="input-box">
					<input type="text" id="fullname" placeholder="Full name"> <input
						type="email" id="email" placeholder="Email">
				</div>

				<div class="input-box">
					<input type="number" id="mobile" placeholder="Phone"> <input
						type="text" id="subject" placeholder="Subject">
				</div>

			</div>
			<div class="input-group2">
				<textarea id="text" cols="30" rows="10" placeholder="Your Message"></textarea>
				<input type="submit" value="Send Message" class="btn">
			</div>
		</form>
	</section>

	<section class="about" id="about">
		<div class="about-img">
			<img
				src="https://cdn.pixabay.com/photo/2024/05/05/13/01/ai-generated-8741167_640.jpg"
				alt="logo">
		</div>
		<div class="about-content">
			<h2>
				About <span>Me</span>
			</h2>
			<p>I'm parthipan and passionate to work as software developer in
				an oraganization ,if you are seeking a skilled person with good
				knowledge ,i am your guy</p>
			<a href="#" class="btn">Read More</a>
		</div>

	</section>
	<footer class="footer">

		<div class="social-icons">
			<a href="http://github.com/parthipan1234"> <i
				class="bx bxl-github"></i>
			</a> <a
				href="https://www.linkedin.com/in/parthipan-s-455228234?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app">
				<i class="bx bxl-linkedin-square"></i>
			</a> <a
				href="https://www.instagram.com/_dowlath_boy_?utm_source=qr&igsh=ZWEwNGZmZXRpbGl6">
				<i class="bx bxl-instagram-alt"></i>
			</a> <a href="#"> <i class="bx bxl-twitter"></i>
			</a>
		</div>
		<ul class="list">
			<li><a href="#">FAQ</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About Me</a></li>
		</ul>
		<p class="copyright">@parthipan SethilKumar | All Rights Reserved</p>
	</footer>
	<script type="text/javascript">
	const menu=document.querySelector("#menu-icon");
	const nav=document.querySelector(".nav");
	menu.onclick=()=>{
	    menu.classList.toggle('bx-x');
	    nav.classList.toggle('active');
	}
	</script>
</body>
</html>