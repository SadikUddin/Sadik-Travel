<cfparam name="action" default="view">
<!--- <cfset DateCreated = GETDATE() /> --->

<h1 class="register"> Register here for a free account</h1>
<h5 class="register"> Please submit all information in order to create a new account!</h5>

<!--- If doing action only to page, use: action="pages/registration2.cfm"
For action to page going through index, use:
action="?page=registration2"  OR action=""--->
<form name="registration" action="pages/registration2.cfm" method="post">
	<!--- Name --->
	<p>
		<strong>First Name:</strong><input type="Text" name="FirstName" size="20"maxlength="35"><br>
		<strong>Last Name:</strong><input type="Text" name="LastName" size="20" maxlength="35"><br>
	</p>
	<!-- Email -->
	<p>
		<strong>Email Address:</strong><input type="Text" name="Email" size="20" maxlength="35"><br>
	</p>
	<!-- Password -->
	<p>
		<strong>Password:</strong><input type="Text" name="Password" size="20" maxlength="35"><br>
	</p>
	<!-- Birthday -->
	<p>
		<strong>Birthday:</strong>
		Please use the calendar below to choose your brithday. You MUST be 18 years old or older to register.
	</p>
	<calendar  
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
	<!-- <input type="dateField" name="someDate" mask="DD-MMM-YY"> -->
	<!--- Permissions box. --->

	<p>
	What kind of account would you like to sign up for?
	<select name="accountPermission">
	    <option value="Guest">Guest
	    <option value="Reader">Reader
	    <option value="Contributor">Contributor
	    <!-- <option type="hidden" value="owner">Owner -->
	</select>
	</p>

		<!--- Radio buttons. --->
		<!-- <p>
		Department:<br>
		<input type="radio" name="Department" value="Training">Training<br>
		<input type="radio" name="Department" value="Sales">Sales<br>
		<input type="radio" name="Department"
		    value="Marketing">Marketing<br>
		</p> -->

	<!--- Check box. --->
	<p>
	Subscribe to emails? <input type="checkbox" name="Subscription" 
	    value="Yes" checked>Yes
	</p>

	<!--- Reset button. --->
	<input type="Reset" name="ResetForm" value="Clear Form">
	<!--- submit button --->
	<input action="sent" type="Submit" name="SubmitForm" value="Submit">
</form>

<cfdump var="#form#" />

<cfquery name="AddProfile" datasource="sadik-travel">
    INSERT INTO [sadik-travel].[dbo].[users]
    	(FirstName, LastName, Email, Username, Password, DateCreated, Permission)
        VALUES(
			<cfqueryparam value="#form.FirstName#" cfsqltype="cf_sql_varchar" />,
	        <cfqueryparam value="#form.LastName#" cfsqltype="cf_sql_varchar" />,
	        <cfqueryparam value="#form.Email#" cfsqltype="cf_sql_varchar" />,
	        <cfqueryparam value="#form.Email#" cfsqltype="cf_sql_varchar" />,
	        <cfqueryparam value="#form.Password#" cfsqltype="cf_sql_varchar" />,
	        <cfqueryparam value="#NOW()#" cfsqltype="cf_sql_timestamp" />,
	        <cfqueryparam value="#form.accountPermission#" cfsqltype="cf_sql_varchar" />
        )        
</cfquery>

