<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	body {
	  font-family: 'Lato', sans-serif;
	}
	.background {
	  background: url('https://images.pexels.com/photos/91224/pexels-photo-91224.jpeg?w=940&h=650&auto=compress&cs=tinysrgb');
	  background-size: cover;
	  background-position: center;
	  background-repeat: no-repeat;
	  min-height: 100vh; // For codepen purposes, height: 100vh works just fine.
	  color: white;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  position: relative;
	  
	  &:before {
	    content: '';
	    position: absolute;
	    top: 0;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0));
	  }
	  h1 {
	    font-size: 4rem;
	    font-weight: 700;
	  }
	}
	.custom-input, .btn-custom {
	  border: 0;
	  background: transparent;
	  border-bottom: 4px solid white;
	  border-radius: 0;
	  margin-bottom: 0;
	}
	.custom-input:focus {
	  border-color: white;
	  background: transparent;
	  color: white;
	}
	.btn-custom {
	  color: white;
	  cursor: pointer;
	}
	.display-5 {
	  font-size: 1.5rem;
	}
	#greeting {
	  margin-top: 2rem;
	  font-size: 2rem;
	}
	@media (min-width: 576px) {
	  .background h1 {
	    font-size: 5.5rem;
	  }
	  .display-5 {
	    font-size: 2.5rem;
	  }
	  #greeting {
	    margin-top: 2rem;
	    font-size: 2.5rem;
	  }
	}
	@media (min-width: 992px) {
	  .background h1 {
	    font-size: 6rem;
	  }
	  #greeting {
	    font-size: 3rem;
	  }
	}
	
	@media (min-width: 1200px) {
	  .background h1 {
	    font-size: 7.5rem;
	  }
	  #greeting {
	    font-size: 3.6rem;
	  }
	}
</style>
</head>
<body>
<div class="background">
 <div class="container">
  <div class="row flex-column justify-content-center align-items-center text-center">
   <div class="col-sm-12 col-md-10 col-lg-8">
    <h1 id="time">12:00 AM</h1>
    <h3 id="day" class="display-5">Monday, January 01</h3>
    <h2 id="greeting">Good Morning, <%= (String)session.getAttribute("username") == null ? "" : "Welcome " + (String)session.getAttribute("username") %></h2>
    <h3>What would you like to inquire about today?</h3>
   </div>
   
  </div><!-- /.row -->
 <br/>
<a href="/PRJ321x_A3_FX05339/logout" class="btn btn-secondary btn-lg"><span class="glyphicon glyphicon-log-out"></span>Log out</a>

<script type="text/javascript">
//Document ready function
$(function() {
  
  // Time function to get the date/time
  function time() {
    
    // Create new date var and init other vars
    var date = new Date(),
      hours = date.getHours(), // Get the hours
      minutes = date.getMinutes().toString(), // Get minutes, convert to string
      ante, // Will be used for AM and PM later
      greeting, // Set the appropriate greeting for the time of day
      dd = date.getDate().toString(), // Get the current day
      userName = "User"; // Can be used to insert a unique name

    /* Set the AM or PM according to the time, it is important to note that up
      to this point in the code this is a 24 clock */
    if (hours < 12) {
      ante = "AM";
      greeting = "Morning";
    } else if (hours === 12 && hours >= 3) {
      ante = "PM";
      greeting = "Afternoon"
    } else {
      ante = "PM";
      greeting = "Evening";
    }

    /* Since it is a 24 hour clock, 0 represents 12am, if that is the case
    then convert that to 12 */
    if (hours === 0) {
      hours = 12;
      
      /* For any other case where hours is not equal to twelve, let's use modulus
      to get the corresponding time equivilant */
    } else if (hours !== 12) {
      hours = hours % 12;
    }

    // Minutes can be in single digits, hence let's add a 0 when the length is less than two
    if (minutes.length < 2) {
      minutes = "0" + minutes;
    }

    // Let's do the same thing above here for the day
    if (dd.length < 2) {
      dd = "0" + dd;
    }

    // Months
    Date.prototype.monthNames = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    // Days
    Date.prototype.weekNames = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ];
    
    // Return the month name according to its number value
    Date.prototype.getMonthName = function() {
      return this.monthNames[this.getMonth()];
    };
    
    // Return the day's name according to its number value
    Date.prototype.getWeekName = function() {
      return this.weekNames[this.getDay()];
    };

    // Display the following in html
    $("#time").html(hours + ":" + minutes + " " + ante);
    $("#day").html(date.getWeekName() + ", " + date.getMonthName() + " " + dd);
    $("#greeting").html("Good " + greeting + ", " + userName + ".");
    
    // The interval is necessary for proper time syncing
    setInterval(time, 1000);
  }
  time();
});

Resources
</script>
 </body>
</html>