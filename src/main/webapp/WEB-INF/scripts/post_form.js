if(navigator.userAgent.indexOf('Gecko')!=-1)	is_gecko_browser = true;//Netscape & Firefox
else	is_gecko_browser = false;//Explorer & Opera

function sb(event)
{
	if(is_gecko_browser)	{
		lo = is_lo(event.target);
		//if(event.which!=1)	return true;//if not left mouse button
	}
	else	lo = is_lo(window.event.srcElement);
	
	if(lo) {
		 _sed = lo.href;
		 re = new RegExp("javascript:","i");
		 if(re.test(_sed))	return true;
		 re = new RegExp("mailto:","i");  
		 if(re.test(_sed))	return true;
		 re = new RegExp("mgs:", "i");
         if (re.test(_sed)) return true;
		//_sed = _sed.replace(/(.*)(http[s]?:\/\/)/i,"$2");

		_sed = _sed.replace(/cache\-/i,"");
		_sed = _sed.replace(/\-cache/i,"");
		//_sed = _sed.replace(/\-gator/i,"");
		//_sed = _sed.replace(/gator\-/i,"");
		
		//_sed = _sed.replace(/gator\./i,"www.");
		//_sed = _sed.replace(/gator\/\?/i,"");
		_sed = _sed.replace(/cache\./i,"www.");
		_sed = _sed.replace(/cache\/\?/i,"");

		 //if(!is_local_domain(_sed))	form_obj = document.forms["btagonlyform"];
		 //else form_obj = document.forms["btagform"];
			form_obj = document.forms["btagform"];
			
		 if(!_sed)	return true;

		if(_sed.indexOf('#')!=-1)
		{
			var loc_wa = window.location.href.replace(/#.*/,"");
			var _sed_wa = _sed.replace(/#.*/,"");
			if(loc_wa==_sed_wa)	return true;
		}

		if(is_other_domain(_sed))
		{
			lo.href = add_form_parameters(form_obj, _sed);
			return true;
		}
		
		form_obj.target = lo.target;
		form_obj.action = _sed;

		var cookies_enabled = nn_cookies_on(form_obj);
		
		if(!cookies_enabled)	{
			right_click = false;
			if(is_gecko_browser) //if Netscape or Firefox
			{
				if(event.which==3)	right_click = true;
			}
			else
			{
				if(window.event.type=='contextmenu')	right_click = true;
			}
			if(right_click) {
				lo.href = add_form_parameters(form_obj, _sed);
				return true;
			}

			if(_sed.indexOf('?')!=-1)
			{
				_sed = add_form_parameters(form_obj, _sed);
				if((!lo.target)||(lo.target=="_self")) window.location = _sed
					else window.open(_sed, lo.target);
				return false;
			}

			form_obj.submit();
			return false;
		}
		else{
			return true;
		}
  }
  else return true;
} 

function add_form_parameters(form_obj, link_loc)
{
	_reg_expr_ = /#(.+)/i;
	matches = link_loc.match(_reg_expr_);
	if(matches)	anchor_name = matches[1];
	if(window.anchor_name)	link_loc = link_loc.replace(_reg_expr_, "");
	
	for(i=0;i<form_obj.elements.length;i++)
	{
		if(link_loc.indexOf(form_obj.elements[i].name + '=')==-1)
		{
		if(form_obj.elements[i].value)
		 link_loc = link_loc + (link_loc.indexOf('?')==-1?'?':'&') + form_obj.elements[i].name + '=' + form_obj.elements[i].value;}
	}
	if(window.anchor_name)	link_loc = link_loc + '#' + anchor_name;
	return link_loc;
}

function nn_cookies_on(form_obj)
{
	var random_number = Math.random();
	document.cookie = "random_number="+random_number;
	var cookieValid = document.cookie;
   
	// if retrieving the VALUE we just set actually works 
	// then we know cookies enabled
	if (cookieValid.indexOf("random_number="+random_number) != -1)
	{
		cookiesEnabled = true;
	}
	else
	{
		cookiesEnabled = false;
	}

	var cookies = document.cookie;
	if(cookies)	cookies_array = cookies.split(";");
	else return false;
	var cookies_on = true;
//	for(i=0;i<cookies_array.length;i++)
//	{
//		if(cookies_array[i].indexOf('bTag')!=-1)	{
//			var bTag_string = cookies_array[i].split('=');
//			var bTag = bTag_string[1];
//			if(form_obj.bTag.value)
//			{
//			if(bTag!=form_obj.bTag.value)	cookies_on = false;
//			}
//		}
//	}
	
	if((cookiesEnabled)&&(cookies_on)) return true;
	else return false;
}

function is_lo(element)
{
	if(is_gecko_browser)
	{
		if(!element)	return false;
		if(element.href)	return element;
		else return is_lo(element.parentNode);
	}
	else
	{
		if(!element)	return false;
		if((element.tagName=="A")||(element.tagName=="AREA"))	return element;
		else return is_lo(element.parentElement);
	}
}

function is_local_domain(destin)
{
	for(i=0;i<local_domains.length;i++)
	{
		loc_domain = local_domains[i].toLowerCase();
		destin = destin.toLowerCase();
		if(destin.indexOf(loc_domain)!=-1)	return true;
	}
	return false;
}

function is_other_domain(destination)
{
	if(destination.indexOf(window.location.host)==-1)	return true;
	else return false;
}

//document.onclick=sb;
document.oncontextmenu=sb;

/*function CheckDate(from, to){
				if(from == 'Select date' && to == 'Select date'){
					document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please choose dates.</div>';
					return false;
				}
				if(from == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please choose from date.</div>';
						return false;
				}
				if(to == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please choose to date.</div>';
						return false;
				}
				if(to<from){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! The start date must precede the end date. Please try again.</div>';
						return false;
				}
	return true;
}*/


function CheckTransferFields(by, to){
				if(by.value==''){
					document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select transferred by field.</div>';
					return false;
				}
				if(document.getElementById('to_span').style.display=='block')
				{
					var selected_to=false;
					for(i=1;i<to.length;i++)
					{
						if(to[i].selected==true)
							selected_to=true;
					}
					if(!selected_to){
							document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select transferred to field.</div>';
						return false;
					}
				}
	return true;
}
function showmenu() {
	var navitem = document.getElementById("idlang");
	navitem.style.zIndex=100;


	if (document.documentElement && document.documentElement.scrollTop){
		theTop = document.documentElement.clientHeight;
	}else{
		if (document.body) {
			theTop = document.body.clientHeight;
		}
	}

		navitem.style.position = "absolute";
		navitem.style.top = "19px";
		

	if (navitem.style.visibility != "visible") {
		navitem.style.display = "block";
		if(navitem.filters){
			navitem.filters[0].Apply();
			navitem.filters[0].Play();
		}
		navitem.style.visibility="visible";			
	}
}
function hidemenu(e,objThis){
	var e=(e)?e:window.event;
	if(isMouseOutObjectArea(e,objThis)){
		objThis.style.visibility="hidden";
	}
}
function ID(strId){
	return document.getElementById('id'+strId);
}
function isMouseOutObjectArea(e,objThis){//,obj2,obj3
	//this is to detect if a user mouseout from one object to another object
	//for example, a user will mouseout from MORE to HIDEMELAYER or vice versa
	//in which case all further mouseout functionality will be void.
	var objDepartedNode = (e.relatedTarget)?e.relatedTarget:e.toElement;		
	for(var a = 1; a < isMouseOutObjectArea.arguments.length; ++a){
		if(objDepartedNode == isMouseOutObjectArea.arguments[a]){
			return false;
		}
	}
	//a mouseout will trigger even if a user does a mouseover onto a node inside the parent node
	//so this detects if the mouseout was triggered by mouseover onto the parents child nodes.
	//and if it does then all further mouseout functionality will be void.
	if(IsChildHovered(e,objThis)){return false}		
	return true;
}
function IsChildHovered(e,objThis){
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
	if(objParent){
		isChildHovered = true;
	}
	return isChildHovered;
}
function getParent(obj,objThis){
	//obj is objDepartedNode
	while(obj){
		//alert("obj.id="+obj.id)
		if(obj == objThis){
			return obj;
		}		
		obj = obj.parentNode;
	}
	return null
}