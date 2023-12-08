<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Doctor</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<%
							String idParam = request.getParameter("id");
							int id = 0; // Default value or appropriate fallback value

							if (idParam != null && !idParam.isEmpty()) {
								id = Integer.parseInt(idParam);
							}

							DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
							Doctor d = dao2.getDoctorById(id);
						%>

						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label>
								<input type="text" required name="fullname" class="form-control" value="<%= (d != null) ? d.getFullName() : "" %>">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label>
								<input type="date" value="<%= (d != null) ? d.getDob() : "" %>" required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label>
								<input required value="<%= (d != null) ? d.getQualification() : "" %>" name="qualification" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label>
								<select name="spec" required class="form-control">
									<option><%= (d != null) ? d.getSpecialist() : "" %></option>

									<%
										SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
										List<Specialist> list = dao.getAllSpecialist();
										for (Specialist s : list) {
											%>

											<option <%= (d != null && d.getSpecialist().equals(s.getSpecialistName())) ? "selected" : "" %>><%= s.getSpecialistName() %></option>
											<%
											}
											%>
											</select>
											</div>
											<div class="mb-3">
											<label class="form-label">Email</label>
											<input type="text" value="<%= (d != null) ? d.getEmail() : "" %>" required name="email" class="form-control">
											</div>
											<div class="mb-3">
											<label class="form-label">Mob No</label>
											<input type="text" value="<%= (d != null) ? d.getMobNo() : "" %>" required name="mobno" class="form-control">
											</div>
											<div class="mb-3">
											<label class="form-label">Password</label>
											<input required value="<%= (d != null) ? d.getPassword() : "" %>" name="password" type="text" class="form-control">
											</div>
											<input type="hidden" name="id" value="<%= (d != null) ? d.getId() : "" %>">
											<button type="submit" class="btn btn-primary col-md-12">Update</button>

											</form>
											</div>
											</div>
											</div>
											</div>
											</body>
											</html>
											
