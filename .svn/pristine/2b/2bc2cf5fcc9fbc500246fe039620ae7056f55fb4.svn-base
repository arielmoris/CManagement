function reset_focus_gif(reset_arr) {
	for (i = 0; i < reset_arr.length; i++) {
		document.getElementById(reset_arr[i]+'_gif_yes').style.display='none';
    }
}


function set_focus(field) {
    field.style.borderColor = '#CC0000';
    if (document.getElementById(field.name + '_gif_no') != null)
    document.getElementById(field.name + '_gif_no').style.display = 'block';
   if (document.getElementById(field.name + '_gif_yes') != null)
    document.getElementById(field.name + '_gif_yes').style.display = 'none';
    if (field.name != 'phone_ext') {
        field.focus();
    }
}


function unset_focus(field) {
    field.style.borderColor = '#CCCCCC';
    document.getElementById(field.name + '_gif_no').style.display = 'none';
    document.getElementById(field.name + '_gif_yes').style.display = 'inline';
}


function ValidateForm(theform) {
    var msg_s = '<div class="error">';
        msg_s += '<img src="./images/cmt_error.gif" width="11" height="11" alt="" />';
    var msg_e = '</div>';
    var msg = '';

    if (theform.username.value == '') {
        msg = msg_s + 'Error! Please insert your Login name. Error # 1000' + msg_e;
        document.getElementById("error").innerHTML = msg;
        set_focus(theform.username);
        return false;
	}
	else unset_focus(theform.username);
		
	if (!(/^[0-9a-zA-Z]*$/.test(theform.username.value))) {
        msg = msg_s + 'Error! Please insert your Login name in a correct format. Error # 1000' + msg_e;
        document.getElementById("error").innerHTML = msg;
        set_focus(theform.username);
        return false;
	}
	else unset_focus(theform.username);

	if (theform.password.value == '') {
		msg = msg_s + 'Error! Please insert your Password. Error # 1001' + msg_e;
        document.getElementById("error").innerHTML = msg;
		set_focus(theform.password); 	
		return false;
	}
	else unset_focus(theform.password);

    if (!(/^[A-z0-9]*$/.test(theform.password.value))) {
		msg = msg_s + 'Error! Please insert your Password in a correct format. Error # 1001' + msg_e;
        document.getElementById("error").innerHTML = msg;
		set_focus(theform.password);
		return false;
	}
	else unset_focus(theform.password);
    
    var reset_arr = new Array('username', 'password');
 	reset_focus_gif(reset_arr);
	set_action();
	return false;
}


function set_action() {
		var session = '';
		
		if (!document.cookie) {
            session = 'PHPSESSID=27928bd70fb297941a4f0b8a2f4727a3';
        }

        disable_submit_button();
        document.login.action = 'agents_list.php';
        sndReqLogin(document.login.username.value, document.login.password.value, document.login.lang.value, 'false', session);
}
	
function showmenu() {
	var navitem = document.getElementById("idlang");
	navitem.style.zIndex = 100;

	if (document.documentElement && document.documentElement.scrollTop) {
		theTop = document.documentElement.clientHeight;
	}
    else if (document.body) {
        theTop = document.body.clientHeight;
	}

	navitem.style.position = "absolute";
	navitem.style.top = "19px";
		

	if (navitem.style.visibility != "visible") {
		navitem.style.display = "block";
		
        if (navitem.filters) {
			navitem.filters[0].Apply();
			navitem.filters[0].Play();
		}
		navitem.style.visibility = "visible";
	}
}


function hidemenu(e, objThis) {
	var e = (e) ? e : window.event;
	if (isMouseOutObjectArea(e, objThis)) {
		objThis.style.visibility = "hidden";
	}
}


function isMouseOutObjectArea(e, objThis) {//,obj2,obj3
	//this is to detect if a user mouseout from one object to another object
	//for example, a user will mouseout from MORE to HIDEMELAYER or vice versa
	//in which case all further mouseout functionality will be void.
	var objDepartedNode = (e.relatedTarget) ? e.relatedTarget : e.toElement;
	for (var a = 1; a < isMouseOutObjectArea.arguments.length; ++a){
		if(objDepartedNode == isMouseOutObjectArea.arguments[a]){
			return false;
		}
	}
	//a mouseout will trigger even if a user does a mouseover onto a node inside the parent node
	//so this detects if the mouseout was triggered by mouseover onto the parents child nodes.
	//and if it does then all further mouseout functionality will be void.
	if (IsChildHovered(e, objThis)) {
        return false;
    }
	return true;
}


function IsChildHovered(e, objThis){
	var isChildHovered = false;
	var objDepartedNode = (e.relatedTarget)?e.relatedTarget:e.toElement;
	/*
	var strAlert = ""
	for(var obj in e){
		strAlert+=obj + "="+eval("e."+obj) + "      ";
	}
	alert("strAlert:\n\n"+strAlert)
	*/
	var objParent = getParent(objDepartedNode,objThis);
	if(objParent) {
		isChildHovered = true;
	}
	return isChildHovered;
}


function getParent(obj,objThis){
	//obj is objDepartedNode
	while(obj) {
		//alert("obj.id="+obj.id)
		if(obj == objThis) {
			return obj;
		}		
		obj = obj.parentNode;
	}
	return null;
}