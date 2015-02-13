var ifcoockie_enabled = false; //true - coockie enabled,false - coockie disabled
var gator = false;//gator = true when in the doamin exist gator or cache

var this_domain = window.location.host;
//var this_domain="gator.allslots.com";

function check_cookie()
{
 if(typeof nn_cookies_on == "function")
   ifcoockie_enabled = nn_cookies_on(document.forms['btagform']);
    else
   ifcoockie_enabled = document.cookie;
}  

function add_parameters(target_page)
{
  if (target_page.indexOf("?")>=0)
     target_page+= "&";
	else
	 target_page+= "?";
	 
	 for(i=0;i<document.btagform.elements.length;i++)
     {
  	target_page+='&'+document.btagform.elements[i].name+ "=" +document.btagform.elements[i].value;
     }
	
  return target_page;
}
  
function change_location(target_page)
{
  
  new_this_domain = this_domain;
  new_this_domain = new_this_domain.replace(/(gator\-|cache\-)/,'');
  new_this_domain = new_this_domain.replace(/(\-gator|\-cache)/,'');
  new_this_domain = new_this_domain.replace(/(gator\.|cache\.)/,'www.');

  if(target_page.indexOf("http")<0)
    target_page = 'http://'+new_this_domain+'/'+target_page;
  
  gator = true;
  return target_page;
}

function location_submit(target_page)
{
 
 check_cookie();
 
  
  if((this_domain.indexOf("gator")>=0) || (this_domain.indexOf("cache")>=0)) 
         target_page = change_location(target_page);
  
  if(!ifcoockie_enabled || gator)
   window.location=add_parameters(target_page);
  else
   window.location=target_page;
 
}

function openpopup_submit(popURL,popWindow,popWidth,popHeight,popTop,popLeft,popScroll)
{
 var str;
 check_cookie();
 options="width="+popWidth+",height="+popHeight+",top="+popTop+",left="+popLeft+",scrollbars="+popScroll;
 
 if((this_domain.indexOf("gator")>=0) || (this_domain.indexOf("cache")>=0))  
      popURL = change_location(popURL);
 
 if(!ifcoockie_enabled || gator)
  {
  popURL = add_parameters(popURL);
  window.open(popURL, popWindow, options); 
 }
  else
  window.open(popURL, popWindow, options); 
  }


function MM_jumpMenu(targ,selObj,restore)
{ //v3.0
  //eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  check_cookie();
  target_page = selObj.options[selObj.selectedIndex].value;
 
  if(((this_domain.indexOf("gator")>=0) || (this_domain.indexOf("cache")>=0)) && target_page.indexOf("http")<0)  
      target_page = change_location(target_page);
  
   if(!ifcoockie_enabled || gator )
   {
   document.btagform.action = target_page;
   document.btagform.target = '';
   document.btagform.submit();
   }
	else
	location.href=selObj.options[selObj.selectedIndex].value;
  
  //document.btagform.bTag.value='<?echo str_replace("&lang=$lang","",$bTag);?>';
  //alert (document.btagform.bTag.value);
  if (restore) selObj.selectedIndex=0;
}
function SetCookie(sName, sValue,expireyears)  
  {
  	//sValue=sValue.replace("\+","%2B");
  expiredays=365*expireyears;
  var ExpireDate = new Date();
  ExpireDate.setTime(ExpireDate.getTime() + (expiredays * 24 * 3600 * 1000));
  document.cookie = sName + "=" + (escape(sValue)).replace("\+","%2B") + 
  ((expiredays == null) ? "" : "; expires=" + ExpireDate.toGMTString());
  
  }

  
function GetCookie(sName)
{
  // cookies are separated by semicolons
  var aCookie = document.cookie.split("; ");
  
  for (var i=0; i < aCookie.length; i++)
  {
    // a name/value pair (a crumb) is separated by an equal sign
    var aCrumb = aCookie[i].split("=");
	
    if (sName == aCrumb[0]) 
	   return unescape(aCrumb[1]);
  }

  // a cookie with the requested name does not exist
  return null;
}