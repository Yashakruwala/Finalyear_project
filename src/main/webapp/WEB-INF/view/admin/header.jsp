
<header class="main-header">
	<div class="p-10 clearfix float-left logo-block">
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <i class="ti-align-left"></i>
		</a>
		<!-- Logo -->
		<a href="index.html" class="logo"> <!-- logo--> <span
			class="logo-lg"> <img
				src="<%=request.getContextPath() %>/adminResources/image/logo-light-text.png" alt="logo"
				class="light-logo"> <img
				src="<%=request.getContextPath() %>/adminResources/image/logo-dark-text.png" alt="logo"
				class="dark-logo">
		</span>
		</a>
	</div>
	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<div class="ml-10 app-menu">
		</div>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- User Account-->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="<%=request.getContextPath() %>/adminResources/image/avatar.png" class="img-fluid" alt="" />
				</a>
					<ul class="dropdown-menu scale-up">
						<!-- Menu Body -->
						<li class="user-body"><a class="dropdown-item"
							href="javascript:void(0)"><i class="ion ion-person"></i> My
								Profile</a> 
								<a class="dropdown-item" href="/logout"><i
								class="ion-log-out"></i> Logout</a>
							</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
			</ul>
		</div>
	</nav>
</header>
