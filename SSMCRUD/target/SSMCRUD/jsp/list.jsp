<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- saved from url=(0052)http://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Dashboard Template for Bootstrap</title>
		<!-- Bootstrap core CSS -->
		<link href="../asserts/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="../asserts/css/dashboard.css" rel="stylesheet">
		<style type="text/css">
			/* Chart.js */
			
			@-webkit-keyframes chartjs-render-animation {
				from {
					opacity: 0.99
				}
				to {
					opacity: 1
				}
			}
			
			@keyframes chartjs-render-animation {
				from {
					opacity: 0.99
				}
				to {
					opacity: 1
				}
			}
			
			.chartjs-render-monitor {
				-webkit-animation: chartjs-render-animation 0.001s;
				animation: chartjs-render-animation 0.001s;
			}
		</style>
	</head>

	<body>


		<div class="container-fluid">
			<div class="row">


				<main role="main" class="col-md-12 ml-sm-auto col-lg-10 pt-3 px-4">
					<h2>Section title</h2>
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead>
								<tr>
									<th>全选</th>
									<th>商品名</th>
									<th>描述</th>
									<th>价格</th>
									<th>操作</th>
								</tr>
							</thead>
							<c:forEach items="${pager.list}" var="p">
							<tbody>
								<tr>
									<td><input type="checkbox" name="checkOne"></td>
										<input type="hidden" name="id" value="${p.pid}">
									<td>${p.pname}</td>
									<td>${p.remark}</td>
									<td>${p.money}</td>
									<td>
										<a href="#" class="btn btn-dark">修改</a>
										<a href="#" class="btn btn-danger">删除</a>
									</td>
								</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>
					<div>
						<span>
							<c:forEach items="${pager.pageView}" var="p">
											${p}

							</c:forEach>


						</span>

					</div>
				</main>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.slim.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/popper.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

		<!-- Icons -->
		<script type="text/javascript" src="/js/feather.min.js"></script>
		<script>

		</script>

		<!-- Graphs -->
		<script type="text/javascript" src="/js/Chart.min.js"></script>
		<script>
		/*	var ctx = document.getElementById("myChart");
			var myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
					datasets: [{
						data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
						lineTension: 0,
						backgroundColor: 'transparent',
						borderColor: '#007bff',
						borderWidth: 4,
						pointBackgroundColor: '#007bff'
					}]
				},
				options: {
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero: false
							}
						}]
					},
					legend: {
						display: false,
					}
				}
			});*/
		</script>

	</body>

</html>