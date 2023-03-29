(function RES_WF_UpdateState(){
	
	var resHelper, stateToColorMap, res_reference_id, snTicketState, snTicketStateColor, resolutionNotes = null;

	try{
		//Instantiate new resHelper
		resHelper = new ResilientHelper();
		
		//Map ServiceNow state to a color
		//Colors accepted by resHelper.updateStateInResilient() = green/orange/yellow/red
		stateToColorMap = {
			"New": "green",
			"In Progress": "orange",
			"On Hold": "yellow",
			"Resolved": "red",
			"Closed": "red",
			"Canceled": "red",

			// colors for security incidents states
			"Draft": "green",
			"Analysis": "orange",
			"Contain": "yellow",
			"Eradicate": "yellow",
			"Recover": "yellow",
			"Review": "red"
		};
		
		//Get resilient_reference_id depending on what Table the record is in
		res_reference_id = resHelper.getResilientReferenceId(current);
		snTicketState = current.state.getChoiceValue();
		
		// Try get the snTicketStateColor that matches the snTicketState
		try{
			snTicketStateColor = stateToColorMap[snTicketState];
		}
		// If it does not exist, default to green
		catch(errMsg){
			snTicketStateColor = "green";
		}
		
		//Update that status in the res datatable
		resHelper.updateStateInResilient(res_reference_id, snTicketState, snTicketStateColor);
		
		//Add a note to the resilient incident/task stating the change
		resHelper.addNote(res_reference_id, "ServiceNow Record state changed to: " + snTicketState);
		
		//Get resolution notes if there are any
		resolutionNotes = current.getValue("close_notes");
		
		//Add a note to the resilient incident/task if there are resolution notes
		if(resolutionNotes){
			resHelper.addNote(res_reference_id, resolutionNotes);
		}
	}
	catch(errMsg){
		current.work_notes = "Failed to update state in IBM SOAR.\nReason: " + errMsg;
		gs.error(errMsg);
	}
})();