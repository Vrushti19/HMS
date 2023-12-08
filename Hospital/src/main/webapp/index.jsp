<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.db.DBconnect" %>
	<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

<meta charset="ISO-8859-1">
<title>Hospital</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<%--<%Connection conn=DBconnect.getConn();
	out.print(conn);
	--%>
	<div id="carouselExampleDark" class="carousel carousel-dark slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/img2.jpg" class="d-block w-100" alt="..."
					height="500px">
				
			</div>
			<div class="carousel-item">
				<img src="img/img3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Our Hospital</p>
		<div class="row justify-content-center">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Patient safety is of utmost importance to us. We have
									implemented comprehensive measures to prevent patient falls,
									medication errors, and other potential risks. Our dedicated and
									well-trained staff members are equipped with the necessary
									tools and knowledge to ensure patient safety at all times. We
									have systems in place to monitor patients closely, maintain
									accurate medication records, and implement effective
									communication channels among healthcare professionals to
									minimize any potential errors.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>We have implemented comprehensive cleaning protocols to
									ensure that our hospital remains free from harmful pathogens.
									Our dedicated housekeeping staff follows strict guidelines for
									regular cleaning and disinfection of all areas. High-touch
									surfaces such as doorknobs, handrails, and equipment are
									thoroughly cleaned and sanitized to prevent the spread of
									infections.We prioritize the use of environmentally friendly
									cleaning products that are effective in eliminating germs while
									being safe for both patients and staff.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly doctors</p>
								<p>Our doctors are not only highly skilled and knowledgeable
									in their respective fields but also genuinely caring and
									approachable. They understand that visiting a hospital can be
									an intimidating experience for many patients and strive to
									create a warm and welcoming environment. From the moment you
									step into our hospital, our friendly doctors are dedicated to
									making you feel comfortable and at ease. They take the time to
									listen attentively to your concerns, answer your questions, and
									provide clear explanations about your diagnosis, treatment
									options, and any procedures involved.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Our hospital actively engages in a wide range of medical
									research initiatives, collaborating with renowned researchers,
									academic institutionss. We strive to
									contribute to scientific discoveries and innovations that can
									benefit not only our patients but also the broader healthcare
									community. Our research efforts span various disciplines and
									encompass both clinical and translational research. Clinical
									research involves investigating new treatments, therapies, and
									medical interventions to improve patient outcomes and quality
									of life.In addition to conducting our own research, we actively
									participate in national projects.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center container">
						<img src="img/Doc1.jpg" width="225px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Doc2.jpg" width="225px" height="300px">
						<p class="fw-bold fs-5">Usman Yousaf</p>
						<p class="fs-7">(Cheif doctor)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Doc3.jpg" width="225px" height="300px">
						<p class="fw-bold fs-5">Humberto Chavez</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Doc4.jpg" width="225px" height="300px">
						<p class="fw-bold fs-5">Austin Distel</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>