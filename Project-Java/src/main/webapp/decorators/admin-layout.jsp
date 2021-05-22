<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<title>Trang quản trị &amp; Dashboard</title>

	<link href="${pageContext.request.contextPath}/template/admin/css/app.css" rel="stylesheet">
</head>
<body>
    <div class="wrapper">
    <%@ include file="/common/admin/menu.jsp"%>
	    <div class="main">
		<!-- header -->
		<%@ include file="/common/admin/header.jsp"%>
		<!-- /header -->
		<main class="content">
			<dec:body />
		</main>
		
		<!-- footer -->
		<%@ include file="/common/admin/footer.jsp"%>
		<!-- /footer -->
		</div>
	</div>
	<!-- JavaScript -->
	<script src="${pageContext.request.contextPath}/template/admin/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/template/admin/ckeditor/ckeditor.js"></script>
	<script>
		CKEDITOR.replace('editor');
	</script>
	<script>
		$(function() {
			var ctx = document.getElementById('chartjs-dashboard-line').getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, 'rgba(215, 227, 244, 1)');
			gradient.addColorStop(1, 'rgba(215, 227, 244, 0)');
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type: 'line',
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "Sales ($)",
						fill: true,
						backgroundColor: gradient,
						borderColor: window.theme.primary,
						data: [
							2115,
							1562,
							1584,
							1892,
							1587,
							1923,
							2566,
							2448,
							2805,
							3438,
							2917,
							3327
						]
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 1000
							},
							display: true,
							borderDash: [3, 3],
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		$(function() {
			$('#datetimepicker-dashboard').datetimepicker({
				inline: true,
				sideBySide: false,
				format: 'L'
			});
		});
	</script>
	<script>
	function showMess(id) {
		var option = confirm("Bạn có muốn xóa người dùng này");
		if(option === true){
			window.location.href ='delete?id='+id;
		}
	}
    </script>
</body>
</html>