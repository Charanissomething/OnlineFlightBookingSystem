function refreshForm() {
    var form = document.getElementById("myForm");
    form.reset();
}
	window.onload = refreshForm;
	

function display(){
	var targetUrl = 'display.jsp';
    window.location.href = targetUrl;
}


function validateForm() {
    var from = document.getElementById("from").value;
    var to = document.getElementById("to").value;
    var departure = document.getElementById("departure").value;
    var returnDate = document.getElementById("return").value;
    var seat = document.getElementById("seat").value;
    var airline = document.getElementById("airline").value;

    if (from === "" || to === "") {
        alert("Please select both 'From' and 'To' locations.");
        return false;
    }

    if (departure === "") {
        alert("Please select a departure date.");
        return false;
    }

    if (document.getElementById("selectTrip").value === "round" && returnDate === "") {
        alert("Please select a return date for round trip.");
        return false;
    }

    if (seat === "" || airline === "") {
        alert("Please enter your seat number and airline.");
        return false;
    }
	
    if(airline != "airindia" && airline != "emirates"){
    	alert("only two flights available... airindia and emirates..");
    	return false;
    }
    return true;
}