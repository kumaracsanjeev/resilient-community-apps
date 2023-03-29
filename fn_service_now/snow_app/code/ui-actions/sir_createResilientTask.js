// (c) Copyright IBM Corp. 2022. All Rights Reserved.

/////////////////
/// Condition ///
/////////////////
(new ScriptConditionsHelper().uiCreateTaskCheck(current)) == true && gs.hasRole('x_ibmrt_resilient.user')

//////////////////
///   Script   ///
//////////////////
function promptForResilientIncidentId(){
	
	var incidentId, re, ga = null;
	
	//Regex for numbers only
	re = /^[0-9]*$/;
	
	//Prompt user to enter incidentId
	incidentId = prompt("Enter IBM SOAR Incident ID to add task to:");

	// IncidentId will be null if the user clicks cancel
	if(incidentId != null){

		//Validate incidentId
		if(!re.test(incidentId)){
			alert("ERROR: "+incidentId+" is NOT a valid IBM SOAR Incident ID");
		}
		
		else{
			//Create new GlideAjax on our CreateTask Script Include
			ga = new GlideAjax("CreateTask");

			//Set the name of the function we want to call
			ga.addParam("sysparm_name", "createTask");

			//Set the variables 
			ga.addParam("sysparm_snTableName", g_form.getTableName());
			ga.addParam("sysparm_recordSysId", g_form.getUniqueValue());
			ga.addParam("sysparm_incidentId", incidentId);
			
			//Call the function createTask()
			ga.getXML();

			//Call this UI Action and skip the "onclick" function 
			gsftSubmit(null, g_form.getFormElement(), "sir_createResilientTask");
		}
	}
}

if(typeof window == "undefined"){
	//This is called from line 45 gsftSubmit... because Action Name == sir_createResilientTask
	action.setRedirectURL(current);
	gs.addInfoMessage("Creating a Task in IBM SOAR from this record");
}
