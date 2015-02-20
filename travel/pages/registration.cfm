<cfquery name="something" datasource="sadik-travel">
	Select Email
	From users
	WHERE email = 'sadik@'
</cfquery>
<cfdump var="#something.Email#">

<cfset test = "hello" />

<h1 class="register"> Register here for a free account</h1>
<h5 class="register"> Please submit all information in order to create a new account!</h5>
<!--- Specify the action page in the form tag. The form variables will
        pass to this page when the form is submitted. --->
<!-- <cfform action="actionpage.cfm" method="post" preservedata="Yes"> -->
<!-- </cfform> -->
<cfform name="register" action="pages/registration.cfm" method="post">

	<!--- Name --->
	<p>
		<strong>First Name:</strong><cfinput type="Text" name="FirstName" size="20"maxlength="35"><br>
		<strong>Last Name:</strong><cfinput type="Text" name="LastName" size="20" maxlength="35"><br>
	</p>
	<!-- Email -->
	<p>
		<strong>Email Address:</strong><cfinput type="Text" name="Email" size="20" maxlength="35"><br>
	</p>
	<!-- Birthday -->
	<p>
		<strong>Birthday:</strong>
		Please use the calendar below to choose your brithday. You MUST be 18 years old or older to register.
	</p>
	<cfcalendar  
	    name = "Birthday"
	    dayNames = "Sun, Mon, Tue, Wed, Thu, Fri, Sat"
	    mask = "MM/DD/YYYY"
	    tooltip = "You must be at least 18 to sign-up"
	    visible = "yes"
	    width = "250"
	    height="167"
	    endRange = "#now()#"
	    startrange="#DateAdd("yyyy",-18,now())#"
	    >
	<!-- <cfinput type="dateField" name="someDate" mask="DD-MMM-YY"> -->
	<!--- Permissions box. --->

	<p>
	What kind of account would you like to sign up for?
	<cfselect name="accountPermission">
	    <option value="Guest">Guest
	    <option value="Reader">Reader
	    <option value="Contributor">Contributor
	    <!-- <option type="hidden" value="owner">Owner -->
	</cfselect>
	</p>

		<!--- Radio buttons. --->
		<!-- <p>
		Department:<br>
		<cfinput type="radio" name="Department" value="Training">Training<br>
		<cfinput type="radio" name="Department" value="Sales">Sales<br>
		<input type="radio" name="Department"
		    value="Marketing">Marketing<br>
		</p> -->

	<!--- Check box. --->
	<p>
	Subscribe to emails? <cfinput type="checkbox" name="Subscription" 
	    value="Yes" checked>Yes
	</p>

	<!--- Reset button. --->
	<cfinput type="Reset" name="ResetForm" value="Clear Form">
	<!--- submit button --->
	<cfinput type="Submit" name="SubmitForm" value="Submit">
</cfform>

<cfdump var="#form#" />
