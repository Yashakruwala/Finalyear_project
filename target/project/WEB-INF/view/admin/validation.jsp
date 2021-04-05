<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="adminResources/image/favicon.ico">

<title>AIUI Admin - Dashboard Form Validation</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet" href="adminResources/css/bootstrap.min.css">

<!-- Bootstrap extend-->
<link rel="stylesheet" href="adminResources/css/bootstrap-extend.css">

<!-- Theme style -->
<link rel="stylesheet" href="adminResources/css/master_style.css">

<!-- AIUI Admin skins -->
<link rel="stylesheet" href="adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body class="hold-transition skin-black light-sidebar sidebar-mini">
	<div class="wrapper">


		<jsp:include page="header.jsp"></jsp:include>


		<!-- Left side column. contains the logo and sidebar -->


		<jsp:include page="menu.jsp"></jsp:include>



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header d-none d-md-block">
				<div class="d-flex align-items-center">
					<div class="mr-auto">
						<h3 class="page-title br-0">Form Validation</h3>
					</div>
					<div class="right-title">
						<div class="d-flex mt-10 justify-content-end">
							<div class="d-md-flex mr-20 ml-10 d-none">
								<div class="chart-text mr-10">
									<p class="mb-0 font-size-12">THIS MONTH</p>
									<h4 class="my-0 text-primary">$12,125</h4>
								</div>
								<div class="spark-chart">
									<div id="thismonth">
										<canvas width="60" height="35"
											style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas>
									</div>
								</div>
							</div>
							<div class="d-md-flex ml-10 d-none">
								<div class="chart-text mr-10">
									<p class="mb-0 font-size-12">LAST YEAR</p>
									<h4 class="my-0 text-danger">$22,754</h4>
								</div>
								<div class="spark-chart">
									<div id="lastyear">
										<canvas width="60" height="35"
											style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-12">
						<!-- Basic Forms -->
						<div class="box">
							<div class="box-header with-border">
								<h6 class="box-subtitle">
									Bootstrap Form Validation check the <a
										href="http://reactiveraven.github.io/jqBootstrapValidation/">official
										website </a>
								</h6>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col">
										<form novalidate>
											<div class="row">
												<div class="col-xl-6 col-12">
													<div class="form-group">
														<h5>
															Basic Text Input <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="text" class="form-control"
																required
																data-validation-required-message="This field is required">
														</div>
														<div class="form-control-feedback">
															<small>Add <code>required</code> attribute to
																field for required validation.
															</small>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Email Field <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="email" name="email" class="form-control"
																required
																data-validation-required-message="This field is required">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Password Input Field <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="password" name="password"
																class="form-control" required
																data-validation-required-message="This field is required">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Repeat Password Input Field <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="password" name="password2"
																data-validation-match-match="password"
																class="form-control" required>
														</div>
													</div>
													<div class="form-group">
														<h5>
															File Input Field <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="file" name="file" class="form-control"
																required>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Input with Icon <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<div class="input-group">
																<input type="text" class="form-control"
																	placeholder="Addon To Right"
																	data-validation-required-message="This field is required">
																<span class="input-group-addon" id="basic-addon1"><i
																	class="fa fa-dollar"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Maximum Character Length <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="maxChar" class="form-control"
																required
																data-validation-required-message="This field is required"
																maxlength="10">
														</div>
														<div class="form-control-feedback">
															<small>Add <code>maxlength='10'</code> attribute
																for maximum number of characters to accept.
															</small>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Minimum Character Length <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="minChar" class="form-control"
																required
																data-validation-required-message="This field is required"
																minlength="6">
														</div>
														<div class="form-control-feedback">
															<small>Add <code>minlength="6"</code> attribute
																for minimum number of characters to accept.
															</small>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Only Numbers <span class="text-danger">*</span>
														</h5>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="number" name="onlyNum" class="form-control"
																required
																data-validation-required-message="This field is required">
															<span class="input-group-addon">.00</span>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Maximum Number <span class="text-danger">*</span>
														</h5>
														<input type="number" name="maxNum" class="form-control"
															required
															data-validation-required-message="This field is required"
															max="25">
														<div class="form-control-feedback">
															<small><i>Must be lower than 25</i></small> - <small>Add
																<code>max</code> attribute for maximum number to accept.
																Also use <code>data-validation-max-message</code>
																attribute for max failure message
															</small>
														</div>
													</div>
												</div>
												<div class="col-xl-6 col-12">
													<div class="form-group">
														<h5>
															Minimum Number <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="number" name="minNum" class="form-control"
																required
																data-validation-required-message="This field is required"
																min="10">
														</div>
														<div class="form-control-feedback">
															<small><i>Must be higher than 10</i></small> - <small>Add
																<code>min</code> attribute for minimum number to accept.
																Also use <code>data-validation-min-message</code>
																attribute for min failure message
															</small>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Text Input Range <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="text" class="form-control"
																required
																data-validation-required-message="This field is required"
																minlength="10" maxlength="20"
																placeholder="Enter number between 10 &amp; 20">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Input with Button <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<div class="input-group">
																<input type="text" class="form-control"
																	placeholder="Search" required> <span
																	class="input-group-btn">
																	<button class="btn btn-info" type="button">Go!</button>
																</span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<h5>
															No Characters, Only Numbers <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="noChar" class="form-control"
																required data-validation-containsnumber-regex="(\d)+"
																data-validation-containsnumber-message="No Characters Allowed, Only Numbers">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Pattern <span class="text-danger">*</span> <small><i>Must
																	start with 'a' and end with 'z'</i></small>
														</h5>
														<div class="controls">
															<input type="text" name="pattern" pattern="a.*z"
																data-validation-pattern-message="Must start with 'a' and end with 'z'"
																class="form-control" required>
															<div class="form-control-feedback">
																<small>Add <code>pattern</code> attribute to set
																	input pattern. Also use <code>data-validation-pattern-message</code>
																	attribute for pattern failure message
																</small>
															</div>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Enter URL <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" class="form-control"
																placeholder="Add URL"
																data-validation-regex-regex="((http[s]?|ftp[s]?):\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*"
																data-validation-regex-message="Only Valid URL's">
															<div class="form-control-feedback">
																<small>Add <code>data-validation-regex-regex</code>
																	attribute for regular expression. Also use <code>data-validation-regex-message</code>
																	attribute for regex failure message
																</small>
															</div>
														</div>
													</div>
													<div class="form-group">
														<h5>
															Enter Email Address <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" class="form-control"
																placeholder="Email Address"
																data-validation-regex-regex="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})"
																data-validation-regex-message="Enter Valid Email">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Enter Date <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="date" name="date" class="form-control"
																required
																data-validation-required-message="This field is required">
														</div>
														<div class="form-control-feedback">
															<small>Add <code>required</code> attribute to
																field for required validation.
															</small>
														</div>

													</div>
													<div class="form-group">
														<h5>
															Basic Select <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<select name="select" id="select" required
																class="form-control">
																<option value="">Select Your City</option>
																<option value="1">India</option>
																<option value="2">USA</option>
																<option value="3">UK</option>
																<option value="4">Canada</option>
																<option value="5">Dubai</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<h5>
													Textarea <span class="text-danger">*</span>
												</h5>
												<div class="controls">
													<textarea rows="10" name="textarea" id="textarea"
														class="form-control" required placeholder="Textarea text"></textarea>
												</div>
											</div>

											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Checkbox <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="checkbox" id="checkbox_1" required
																value="single"> <label for="checkbox_1">Check
																this custom checkbox</label>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Checkbox Group <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<fieldset>
																<input type="checkbox" id="checkbox_2" required
																	value="x"> <label for="checkbox_2">I am
																	unchecked Checkbox</label>
															</fieldset>
															<fieldset>
																<input type="checkbox" id="checkbox_3" value="y">
																<label for="checkbox_3">I am unchecked too</label>
															</fieldset>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Select Max 2 Checkbox<span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<fieldset>
																<input type="checkbox" id="checkbox_4"
																	data-validation-maxchecked-maxchecked="2"
																	data-validation-maxchecked-message="Don't be greedy!"
																	required> <label for="checkbox_4">I am
																	unchecked Checkbox</label>
															</fieldset>
															<fieldset>
																<input type="checkbox" id="checkbox_5"> <label
																	for="checkbox_5">I am unchecked too</label>
															</fieldset>
															<fieldset>
																<input type="checkbox" id="checkbox_6"> <label
																	for="checkbox_6">You can check me</label>
															</fieldset>
														</div>
														<small>Select any 2 options</small>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Minimum 2 Checkbox selection<span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<fieldset>
																<input type="checkbox" id="checkbox_7" value="1"
																	data-validation-minchecked-minchecked="2"
																	data-validation-minchecked-message="Choose at least two"
																	name="styled_min_checkbox" required> <label
																	for="checkbox_7">I am unchecked Checkbox</label>
															</fieldset>
															<fieldset>
																<input type="checkbox" id="checkbox_8" value="2">
																<label for="checkbox_8">I am unchecked too</label>
															</fieldset>
															<fieldset>
																<input type="checkbox" id="checkbox_9" value="3">
																<label for="checkbox_9">You can check me</label>
															</fieldset>
														</div>
														<small>Select any 2 options</small>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Radio Buttons <span class="text-danger">*</span>
														</h5>
														<fieldset class="controls">
															<input name="group1" type="radio" id="radio_1" value="1"
																required> <label for="radio_1">Check Me</label>
														</fieldset>
														<fieldset>
															<input name="group1" type="radio" id="radio_2" value="2">
															<label for="radio_2">Or Me</label>
														</fieldset>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<h5>
															Inline Radio Buttons <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<fieldset>
																<input name="group2" type="radio" id="radio_3"
																	value="Yes" required> <label for="radio_3">Check
																	Me</label>
															</fieldset>
															<fieldset>
																<input name="group2" type="radio" id="radio_4"
																	value="No"> <label for="radio_4">Or Me</label>
															</fieldset>
														</div>
													</div>
												</div>
											</div>
											<div class="text-xs-right">
												<button type="submit" class="btn btn-info">Submit</button>
											</div>
										</form>

									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		
		<jsp:include page="footer.jsp"></jsp:include>
		
		
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-light">
			<div class="rpanel-title">
				<span class="btn pull-right"><i class="ion ion-close"
					data-toggle="control-sidebar"></i></span>
			</div>
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="nav-item"><a href="#control-sidebar-home-tab"
					data-toggle="tab" class="active">Chat</a></li>
				<li class="nav-item"><a href="#control-sidebar-settings-tab"
					data-toggle="tab">Todo</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Users</p>
						<a href="javascript:void(0)" class="text-right text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<div class="lookup lookup-sm lookup-right d-none d-lg-block">
						<input type="text" name="s" placeholder="Search" class="w-p100">
					</div>
					<div class="media-list media-list-hover mt-20">
						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="adminResources/image/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="adminResources/image/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="adminResources/image/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="adminResources/image/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="adminResources/image/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="adminResources/image/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="adminResources/image/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="adminResources/image/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

					</div>
				</div>
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Todo List</p>
						<a href="javascript:void(0)" class="text-right text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<ul class="todo-list mt-20">
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_1"
							class="filled-in"> <label for="basic_checkbox_1"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_2"
							class="filled-in"> <label for="basic_checkbox_2"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_3"
							class="filled-in"> <label for="basic_checkbox_3"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_4"
							class="filled-in"> <label for="basic_checkbox_4"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_5"
							class="filled-in"> <label for="basic_checkbox_5"
							class="mb-0 h-15"></label> <span class="text-line">Maecenas
								scelerisque</span> <small class="badge bg-primary"><i
								class="fa fa-clock-o"></i> 1 week</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_6"
							class="filled-in"> <label for="basic_checkbox_6"
							class="mb-0 h-15"></label> <span class="text-line">Vivamus
								nec orci</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 1 month</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_7"
							class="filled-in"> <label for="basic_checkbox_7"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_8"
							class="filled-in"> <label for="basic_checkbox_8"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_9"
							class="filled-in"> <label for="basic_checkbox_9"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_10"
							class="filled-in"> <label for="basic_checkbox_10"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="adminResources/js/jquery-3.3.1.min.js"></script>

	<!-- popper -->
	<script src="adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script src="adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script src="adminResources/js/fastclick.js"></script>

	<!-- Sparkline -->
	<script src="adminResources/js/jquery.sparkline.min.js"></script>

	<!-- AIUI Admin App -->
	<script src="adminResources/js/template.js"></script>

	<!-- Form validator JavaScript -->
	<script src="adminResources/js/validation.js"></script>
	<script>
		!function(window, document, $) {
			"use strict";
			$("input,select,textarea").not("[type=submit]")
					.jqBootstrapValidation();
		}(window, document, jQuery);
	</script>

</body>
</html>
