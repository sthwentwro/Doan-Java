<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid p-0">
		<div class="row mb-2 mb-xl-3">
			<div class="col-auto d-none d-sm-block">
				<h3>
					<strong>Analytics</strong> Dashboard
				</h3>
			</div>

			<div class="col-auto ml-auto text-right mt-n1">				
			</div>
		</div>
		<div class="row">
			<div class="col-xl-6 col-xxl-5 d-flex">
				<div class="w-100">
					<div class="row">
						<div class="col-sm-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title mb-4">Sales</h5>
									<h1 class="display-5 mt-1 mb-3">2.382</h1>
									<div class="mb-1">
										<span class="text-danger"> <i
											class="mdi mdi-arrow-bottom-right"></i> -3.65%
										</span> <span class="text-muted">Since last week</span>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-body">
									<h5 class="card-title mb-4">Visitors</h5>
									<h1 class="display-5 mt-1 mb-3">14.212</h1>
									<div class="mb-1">
										<span class="text-success"> <i
											class="mdi mdi-arrow-bottom-right"></i> 5.25%
										</span> <span class="text-muted">Since last week</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title mb-4">Orders</h5>
									<h1 class="display-5 mt-1 mb-3">64</h1>
									<div class="mb-1">
										<span class="text-danger"> <i
											class="mdi mdi-arrow-bottom-right"></i> -2.25%
										</span> <span class="text-muted">Since last week</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-6 col-xxl-7">
				<div class="card flex-fill w-100">
					<div class="card-header">

						<h5 class="card-title mb-0">Recent Movement</h5>
					</div>
					<div class="card-body py-3">
						<div class="chart chart-sm">
							<canvas id="chartjs-dashboard-line"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-8 col-xxl-9 d-flex">
				<div class="card flex-fill">
					<div class="card-header">

						<h5 class="card-title mb-0">Latest Projects</h5>
					</div>
					<table class="table table-hover my-0">
						<thead>
							<tr>
								<th>Name</th>
								<th class="d-none d-xl-table-cell">Start Date</th>
								<th class="d-none d-xl-table-cell">End Date</th>
								<th>Status</th>
								<th class="d-none d-md-table-cell">Assignee</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Project Apollo</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-success">Done</span></td>
								<td class="d-none d-md-table-cell">Vanessa Tucker</td>
							</tr>
							<tr>
								<td>Project Fireball</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-danger">Cancelled</span></td>
								<td class="d-none d-md-table-cell">William Harris</td>
							</tr>
							<tr>
								<td>Project Hades</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-success">Done</span></td>
								<td class="d-none d-md-table-cell">Sharon Lessman</td>
							</tr>
							<tr>
								<td>Project Nitro</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-warning">In progress</span></td>
								<td class="d-none d-md-table-cell">Vanessa Tucker</td>
							</tr>
							<tr>
								<td>Project Phoenix</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-success">Done</span></td>
								<td class="d-none d-md-table-cell">William Harris</td>
							</tr>
							<tr>
								<td>Project X</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-success">Done</span></td>
								<td class="d-none d-md-table-cell">Sharon Lessman</td>
							</tr>
							<tr>
								<td>Project Romeo</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-success">Done</span></td>
								<td class="d-none d-md-table-cell">Christina Mason</td>
							</tr>
							<tr>
								<td>Project Wombat</td>
								<td class="d-none d-xl-table-cell">01/01/2020</td>
								<td class="d-none d-xl-table-cell">31/06/2020</td>
								<td><span class="badge badge-warning">In progress</span></td>
								<td class="d-none d-md-table-cell">William Harris</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">
				<div class="card flex-fill">
					<div class="card-header">

						<h5 class="card-title mb-0">Calendar</h5>
					</div>
					<div class="card-body d-flex">
						<div class="align-self-center w-100">
							<div class="chart">
								<div id="datetimepicker-dashboard"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>