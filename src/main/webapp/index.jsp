<html>
<head>
	<script src="https://unpkg.com/vue"></script>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>
<body>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<div id="app">
	<div class="tb-table">
		<div class="tb-row-head">
			<div class="tb-cell" v-for="column in model" v-bind:style="{width: column.width + 'px'}"> {{ column.label }} </div>
		</div>
		<div class="tb-row-head">
			<div class="tb-cell" v-for="column in model" v-bind:style="{width: column.width + 'px'}">
				<input type="text" v-model="filter[column.name]" placeholder="filter value" v-on:keyup.enter="submitFilters">
			</div>
		</div>
		<div v-for="customer in customerData" class="tb-row" v-on:click="selectedCustomer = customer;">
			<div class="tb-cell" v-for="column in model" > {{ customer[column.name] }} </div>
		</div>
	</div>
	<div class="v-spacer"></div>
	<label class="dt-title">Clicked Customer :</label>
	<div>
		<div class="dt-info"> {{ selectedCustomer.id }} </div>
		<div class="dt-info"> {{ selectedCustomer.firstName }} </div>
		<div class="dt-info"> {{ selectedCustomer.lastName }} </div>
		<div class="dt-info"> {{ selectedCustomer.email }} </div>
		<div class="dt-info"> {{ selectedCustomer.mobile }} </div>
		<div class="dt-info"> {{ selectedCustomer.dateOfBirth }} </div>
	</div>
	<%--<div class="v-spacer"></div>
	<div class="tb-table">
		<div class="tb-row-head">
			<div class="tb-cell"> Name</div>
			<div class="tb-cell"> Surname</div>
			<div class="tb-cell"> Age</div>
			<div class="tb-cell"> Wage</div>
		</div>
		<div v-for="user in tableData" class="tb-row" v-on:click="selectedUser = user;">
			<div class="tb-cell"> {{ user.name }}</div>
			<div class="tb-cell"> {{ user.surname }}</div>
			<div class="tb-cell"> {{ user.age }}</div>
			<div class="tb-cell"> {{ user.wage }}</div>
		</div>
	</div>
	<div class="v-spacer"></div>
	<label class="dt-title">Selected User :</label>
	<div>
		<div class="dt-info"> {{ selectedUser.name }}</div>
		<div class="dt-info"> {{ selectedUser.surname }}</div>
		<div class="dt-info"> {{ selectedUser.age }}</div>
		<div class="dt-info"> {{ selectedUser.wage }}</div>
	</div>--%>
</div>
</body>
</html>
