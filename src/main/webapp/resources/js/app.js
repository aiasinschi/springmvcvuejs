window.onload = function () {
	var main = new Vue({
		el: '#app',
		data: {
			model: [
				{ label: 'Id', width: 50, name: 'id' },
				{ label: 'First Name', width: 150, name: 'firstName' },
				{ label: 'Last Name', width: 150, name: 'lastName' },
				{ label: 'E-mail', width: 150, name: 'email' },
				{ label: 'Mobile', width: 100, name: 'mobile' },
				{ label: 'Date of birth', width: 150, name: 'dateOfBirth' }
			],
			filter: {},
			customerData: [],
			selectedCustomer: {}
		},
		methods: {
			updateCustomers: function (custdata) {
				this.customerData = JSON.parse(custdata);
			},
			submitFilters: function () {
				console.log(this.filter.email);
			}
		}
	});

	var theUrl = 'http://localhost:8080/springrest/customers';
	var xmlHttp = new XMLHttpRequest();
	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState === 4 && xmlHttp.status === 200)
			main.updateCustomers(xmlHttp.responseText);
	};
	xmlHttp.open("GET", theUrl, true); // true for asynchronous
	xmlHttp.send(null);
};