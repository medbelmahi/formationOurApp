<div class="sidebar in" id="sidebar-menu">
	<div class="slate-profile">
		<div class="avatar">
			<img src='<s:url value="/imgs/avatar.jpg"/>' width="100" alt="avatar" />
		</div>
		<div class="slate-profile-text">Welcome back, Buddy!</div>
		<div class="slate-profile-action">
			<div class="btn-group">
				<button type="button" class="btn btn-primary-dark">
					<i class="fa fa-user"></i><span> My Account</span>
				</button>
				<button type="button" class="btn btn-primary-dark dropdown-toggle"
					data-toggle="dropdown">
					<span class="caret"></span> <span class="sr-only">Toggle
						Dropdown</span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">My Profile…</a></li>
					<li><a href="#">Billing Information…</a></li>
					<li class="disabled"><a href="#">Send Feedback…</a></li>
					<li class="divider"></li>
					<li><a href="#" data-toggle="modal"
						data-target="#logout-modal">Sign Out</a></li>
				</ul>
			</div>
		</div>
	</div>
	<ul class="nav nav-list">
		<li class="active"><a href="#"> <span class="fa fa-dashboard"></span>
				<span class="sidebar-label">Dashboard</span>
		</a></li>
		<li><a href="#" data-toggle="collapse" data-target="#menu-ui">
				<span class="fa fa-desktop"></span> <span class="sidebar-label">UI
					Elements</span> <span class="fa fa-chevron-down pull-right"></span>
		</a>
			<ul id="menu-ui" class="submenu collapse nav nav-list">
				<li><a href="ui.html#tabs">Tabs</a></li>
				<li><a href="ui.html#buttons">Buttons</a></li>
				<li><a href="ui.html#sliders">Sliders</a></li>
				<li><a href="ui.html#progress">Progress Bars</a></li>
				<li><a href="ui.html#labels">Labels & Badges</a></li>
				<li><a href="ui.html#alerts">Alerts</a></li>
				<li><a href="ui.html#icons">Icons</a></li>
			</ul></li>
		<li><a href="forms.html"> <span class="fa fa-list-ul"></span>
				<span class="sidebar-label">Form Elements</span> <span
				class="badge badge-yellow pull-right">99+</span>
		</a></li>
		<li><a href="tables.html"> <span class="fa fa-th"></span> <span
				class="sidebar-label">Tables</span>
		</a></li>
		<li><a href="charts.html"> <span class="fa fa-bar-chart-o"></span>
				<span class="sidebar-label">Charts & Graphs</span>
		</a></li>
	</ul>
	<hr />
	<div class="slate-sidebar-container">
		<div class="clearfix">
			<span class="pull-left">Usage Limit A</span> <span class="pull-right">70%</span>
		</div>
		<div class="progress progress-mini">
			<div class="progress-bar progress-bar" style="width: 45%"></div>
			<div class="progress-bar progress-bar-warning" style="width: 25%"></div>
		</div>
	</div>
	<div class="slate-sidebar-container">
		<div class="clearfix">
			<span class="pull-left">Usage Limit B</span> <span class="pull-right">289/300</span>
		</div>
		<div class="progress progress-mini progress-striped active">
			<div style="width: 95%" class="progress-bar progress-bar-danger"></div>
		</div>
	</div>
</div>