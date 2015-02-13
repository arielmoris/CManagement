/*function testCloseEvent() {
    if (window.event.clientX < 0 && window.event.clientY < 0)
    {
        alert("Window is closing...");
        confirm("Close?");
    }
    return false;
}

if (window.addEventListener) {
    window.addEventListener("beforeunload", testCloseEvent, false);
}
*/
//window.onunload = testCloseEvent;

function GetCurrency(id){
    var Currency_arr = new Array(28);
    Currency_arr[1] = 'USD';
    Currency_arr[2] = 'GBP';
    Currency_arr[3] = 'EUR';
    Currency_arr[4] = 'THB';
    Currency_arr[5] = 'SGD';
    Currency_arr[6] = 'MYR';
    Currency_arr[7] = 'JPY';
    Currency_arr[8] = 'CNY';
    Currency_arr[9] = 'PHP';
    Currency_arr[10] = 'KRW';
    Currency_arr[11] = 'RUB';
    Currency_arr[12] = 'TRY';
    Currency_arr[13] = 'ARS';
    Currency_arr[14] = 'XOF';
    Currency_arr[15] = 'HKD';
    Currency_arr[16] = 'PYG';
    Currency_arr[17] = 'CAD';
    Currency_arr[18] = 'IDR';
    Currency_arr[19] = 'DKK';
    Currency_arr[20] = 'NOK';
    Currency_arr[21] = 'CHF';
    Currency_arr[22] = 'SEK';
    Currency_arr[23] = 'HNL';
    Currency_arr[24] = 'BRL';
    Currency_arr[25] = 'XAF';
    Currency_arr[26] = 'GEL';
    Currency_arr[27] = 'MXN';
    Currency_arr[28] = 'BSF';
    Currency_arr[29] = 'TWD';
    Currency_arr[30] = 'UAH';
    Currency_arr[31] = 'IRK';
    Currency_arr[32] = 'BFF';
    Currency_arr[33] = 'PLN';
    Currency_arr[34] = 'KZT';
    Currency_arr[35] = 'AED';
    Currency_arr[36] = 'TWD';
    Currency_arr[37] = 'RON';
    Currency_arr[38] = 'HUF';
    Currency_arr[39] = 'ALL';
    //Currency_arr[34] = 'USS';
    
    return Currency_arr[id];
}

var http = createRequestObject();
var http1 = createRequestObject();
var http_bulk = createRequestObject();

var display = 'block';
if (navigator.appName == 'Netscape') //Firefox and Netscape
    var display = 'table-row';

// general function, creates an object to use for AJAX
function createRequestObject(){
    var xmlhttp = null;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } 
    catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } 
        catch (f) {
            xmlhttp = null;
        }
    }
    
    if (!xmlhttp && typeof XMLHttpRequest != "undefined") {
        xmlhttp = new XMLHttpRequest();
        //xmlhttp.overrideMimeType('text/xml');
    }
    return xmlhttp;
}

function enable_submit_button(){
    if (document.getElementById("submit_button1")) {
        document.getElementById("submit_button1").disabled = false;
        document.getElementById("submit_button1").style.color = "#000";
    }
    
    if (document.getElementById("submit_button")) {
        document.getElementById("submit_button").disabled = false;
        document.getElementById("submit_button").style.color = "#000";
    }
    
    if (document.getElementById("save")) {
        document.getElementById("save").disabled = false;
        document.getElementById("save").style.color = "#000";
    }
    
    if (document.getElementById("cancel")) {
        document.getElementById("cancel").disabled = false;
        document.getElementById("cancel").style.color = "#000";
    }
    
    if (document.getElementById("back_button")) {
        document.getElementById("back_button").disabled = false;
        document.getElementById("back_button").style.color = "#000";
    }
}

function disable_submit_button(){
    if (document.getElementById("submit_button1")) {
        document.getElementById("submit_button1").disabled = true;
        document.getElementById("submit_button1").style.color = '#ccc';
    }
    
    if (document.getElementById("submit_button")) {
        document.getElementById("submit_button").disabled = true;
        document.getElementById("submit_button").style.color = '#ccc';
    }
    if (document.getElementById("back_button")) {
        document.getElementById("back_button").disabled = true;
        document.getElementById("back_button").style.color = '#ccc';
    }
}

function display_loading_gif(){
	
    try {
        if (document.getElementById("loader_gif")) {
			document.getElementById("loader_gif").style.display = "block";
		}
        if (document.getElementById("loader_gif1")) {
			document.getElementById("loader_gif1").style.display = "block";
		}
    } 
    catch (e) {
        //alert("1 display div undefined");
    }
}

function display_waitimage(){
    try {
        document.getElementById("waitimage").style.display = "block";
        
    } 
    catch (e) {
        alert("2 display div undefined");
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function is responsible for login
/*function sndReqLogin(username,password,lang,admin_site,session){
 display_loading_gif();
 sndurl='/check_login.php?username='+username+'&password='+password+'&lang='+lang+'&admin_site='+admin_site;
 if(session!='')
 sndurl+='&'+session;
 //alert(sndurl);
 http.open('GET', sndurl);  //sends request
 http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
 http.send(null);
 }*/
// Use this function for POST method in Login
function sndReqLogin(username, password, lang, admin_site, session) {
    //alert('sndReqLogin');
    display_loading_gif();
    sndurl = '/check_login.php';
    query = 'username=' + username + '&password=' + password + '&lang=' + lang + '&admin_site=' + admin_site;
	if (document.getElementById('recaptcha_response_field')){
		query += '&recaptcha_response_field=' + document.getElementById('recaptcha_response_field').value;
		query += '&recaptcha_challenge_field=' + document.getElementById('recaptcha_challenge_field').value;
	}
    if (session != '') 
        query += '&' + session;
    //alert(query);		
    http.open("POST", sndurl, true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
    http.setRequestHeader("Content-length", query.length);
    http.setRequestHeader("Connection", "close");
    http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
    http.send(query);
}

/*
 function sndReqLoginByLoginId(SessionGUID,LoginId,session){
 alert('sndReqLoginByLoginId');
 sndurl='/check_login.php?SessionGUID='+SessionGUID+'&LoginId='+LoginId+'&lang=en&admin_site=false';
 if(session!='')
 sndurl+='&'+session;
 //alert(sndurl);
 http.open('GET', sndurl);  //sends request
 http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
 http.send(null);
 }*/
function sndReqLoginByLoginId(SessionGUID, LoginId, session,ul){
    //	alert('sndReqLoginByLoginId');
    sndurl = '/check_login.php';
    query = 'SessionGUID=' + SessionGUID + '&LoginId=' + LoginId + '&lang='+ul+'&admin_site=false';
    if (session != '') 
        query += '&' + session;
    //alert(query);	
    http.open("POST", sndurl, true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
    http.setRequestHeader("Content-length", query.length);
    http.setRequestHeader("Connection", "close");
    http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
    http.send(query);
}

/*function sndReqDoubleLogin(username,password,lang,session){
 alert('sndReqDoubleLogin');
 display_loading_gif();
 sndurl='/check_double_login.php?username='+username+'&password='+password+'&lang='+lang;
 if(session!='')
 sndurl+='&'+session;
 //alert(sndurl);
 http.open('GET', sndurl);  //sends request
 http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
 http.send(null);
 }*/
function sndReqDoubleLogin(username, password, lang, session){
    //	alert('sndReqDoubleLogin');
    display_loading_gif();
    sndurl = '/check_double_login.php';
    query = 'username=' + username + '&password=' + password + '&lang=' + lang;
    if (session != '') 
        query += '&' + session;
    //alert(query);	
    http.open("POST", sndurl, true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
    http.setRequestHeader("Content-length", query.length);
    http.setRequestHeader("Connection", "close");
    http.onreadystatechange = handleResponseLogin; //ensures the response is handled by the correct function
    http.send(query);
}

function sndReqResetDoubleLogin(session){
    sndurl = 'reset_double_login.php?';
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseResetDoubleLogin; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing login response
var wrongLoginCounter = 0
function handleResponseLogin(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
			try {						
				if (!document.getElementById('recaptcha_id')) {
					var captchaDiv = document.createElement('div');
					captchaDiv.id = "recaptcha_id";
					document.getElementById('login').appendChild(captchaDiv);
				}
			} catch (e) {}
            var response = http.responseText;
            if (response) {
				if (response.search('captcha_display') != -1) {
					document.getElementById('output').style.height = '380px';
					Recaptcha.create(captcha_public_key,
						"recaptcha_id",
						{
						  theme: "clean",
						  callback: Recaptcha.focus_response_field
						}
					);
				} else {
					document.getElementById("recaptcha_id").innerHTML = "";
				}
				document.getElementById("error").innerHTML = "";
                if (response.search('error') != -1) {
					document.getElementById('output').style.height = '380px';
                    document.getElementById("error").innerHTML = response; //Fill in response
                } 
				document.getElementById("loader_gif").style.display = "none";
				enable_submit_button();
				if ((response.search('error') == -1) && (response.search('captcha_display') == -1)) {
                    document.login.action = response;
                    disable_submit_button();
					document.login.submit();
                }
            }
            else {
                disable_submit_button();
                document.login.submit();
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function handleResponseResetDoubleLogin(){
    try {
        //alert(http.readyState);
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            alert(response);
            
        }
        else {
            try {
            
            } 
            catch (e) {
            
            }
        }
        
    } 
    catch (e) {
    }
    finally {
    }
}

var first = true;
//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function making search in agents
function sndReqSearchByAgent(k, mobilenumber, name, lname, active, list_type, start, sorting_param, sorting_order, sorting_type, enteries_num){
    //alert (k+" "+mobilenumber+" "+name+" "+lname+" "+active+" "+list_type+" "+start);
    if (name.indexOf('(') != -1 || lname.indexOf('(') != -1 || mobilenumber.indexOf('(') != -1) {
		//document.getElementById('error1').innerHTML = 'Error, you entered incrrect symbol';
		alert('Error, you entered incorrect symbol');
		return false;
	}
    sndurl = '/get_list.php?search=yes&mobilenumber=' + mobilenumber + '&name=' + name + '&lname=' + lname + '&active=' + active + '&start=' + start + '&list_type=' + list_type + '&k=' + k + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type + '&enteries_num=' + enteries_num;
    //alert(sndurl);
    first = false;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseList; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing search in agents response
function sndReqSearchByAccount(k, accountnumber, mobilenumber, fname, lname, alias, list_type, sorting_param, sorting_order, sorting_type, enteries_num, refresh, filter){
    sndurl = '/get_list.php?search=yes&accountnumber=' + accountnumber + '&mobilenumber=' + mobilenumber + '&fname=' + fname + '&lname=' + lname + '&alias=' + alias + '&list_type=' + list_type + '&k=' + k + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type + '&enteries_num=' + enteries_num + '&refresh=' + refresh + '&filter=' + filter;
    //alert(sndurl);
    if (typeof reset_radio != "undefined") 
        reset_radio();
    first = false;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseList; //ensures the response is handled by the correct function
    http.send(null);
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function creating list of any type of nodes
function sndReqList(k, list_type, sorting_param, sorting_order, sorting_type, session){
    sndurl = '/get_list.php?k=' + k + '&list_type=' + list_type + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type;
    //	alert(sndurl);
    //	document.write(sndurl);
    first = true;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseList; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqExReportsList(list_type, page_num, rows_per_page, sorting_param, sorting_order) {
    if (!page_num) {
        page_num = 1;
    }
    if (!rows_per_page) {
        rows_per_page = '';
    }
    if (!sorting_param) {
        sorting_param = '';
    }
    if (!sorting_order) {
        sorting_order = '';
    }
    
    sndurl = '/get_list.php?list_type=' + list_type + '&page_num=' + page_num + '&rows_per_page=' + rows_per_page + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order;
    
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseList; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqDeleteExReport(reportGUID) {
    
    var sndurl = '/exported_reports_status.php?reportGUID=' + reportGUID;
    
    var httpReport = createRequestObject();
    
    httpReport.open('GET', sndurl); //sends request
    httpReport.onreadystatechange = function () {
        handleResponseDeleteExReport(httpReport); //ensures the response is handled by the correct function
    }
    httpReport.send(null);
}

function handleResponseDeleteExReport(httpReport) {
    if ((httpReport.readyState == 4) && (httpReport.status == 200)) {
		http_session_error(http);
        if (document.getElementById('waitimage')) {
            document.getElementById('waitimage').style.display = 'none';
        }
        
        var response = httpReport.responseText;

        if (response.search('error') != -1) {
            document.getElementById("list").innerHTML = '<div id="error">' + response + '</div>'; //Fill in response
        }
        else {
            sndReqExReportsList('ExportedReports');
            sndReqExReports();
        }
    }
    else {
        document.getElementById("list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
    }
}

function sndReqExReports() {
    var sndurl = '/exported_reports_popup.php';
    var httpReport = createRequestObject();
    
    httpReport.open('GET', sndurl); //sends request
    httpReport.onreadystatechange = function () {
        handleResponseExReports(httpReport); //ensures the response is handled by the correct function
    }
    httpReport.send(null);
}

function handleResponseExReports(httpReport) {
    if ((httpReport.readyState == 4) && (httpReport.status == 200)) {
		http_session_error(http);
        var response = httpReport.responseText;
        
        if (response.search('error') == -1 && response != '') {
            document.getElementById('exportedReports').innerHTML = response;
        }
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function creating list of any type of nodes
function sndReqSearchList(k, list_type, sorting_param, sorting_order, sorting_type, select_list, from_date, to_date, entity_type, session){
    sndurl = '/get_list.php?k=' + k + '&list_type=' + list_type + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type + '&select_list=' + select_list + '&from_date=' + from_date + '&to_date=' + to_date + '&entity_type=' + entity_type;
    first = true;
    //alert(sndurl);
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSearchList; //ensures the response is handled by the correct function
    http.send(null);
}

// function handling the list response
function handleResponseList(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response != '') {
                if (document.getElementById("unique_permissions") && document.getElementById("unique_permissions").checked && document.getElementById("additional_list")) 
                    document.getElementById("additional_list").innerHTML = response; //Fill in response
                else 
                    document.getElementById("list").innerHTML = response; //Fill in response
					if (document.getElementById('balance_sort_script')) {
						eval(document.getElementById('balance_sort_script').innerHTML);
					}
                if (typeof check_delete_fields != "undefined") 
                    check_delete_fields();
                if (typeof check_select_fields != "undefined") 
                    check_select_fields(first);
                if (typeof disable_all != "undefined" && document.getElementById("disable_list").value == 'true') 
                    disable_all(true);
            }
            //alert(response.indexOf('no_data'));
            if (response.indexOf('no_data') > 0) //in case of 0 results disable view passwords button
            {
				station_player_list = (-1 != location.href.indexOf('stations_list') 
										|| -1 != location.href.indexOf('players_list'));
                if (document.getElementById("view_passwords")) 
                    document.getElementById("view_passwords").disabled = 'disabled';
				if (document.getElementById("submit_button1") && !station_agent_player_list)
					if (document.getElementById("submit_button1"))
						document.getElementById("submit_button1").disabled = 'disabled';
            } else {
                if (document.getElementById("submit_button1"))
                    document.getElementById("submit_button1").disabled = '';
			}

            // HO list currencies check
            if (document.getElementById('show_currencies')) {
                try {
                    toogle_currency();
                } catch (e) {
                    
                }

            }
        }
        else {
            try {
                if (document.getElementById("unique_permissions") && document.getElementById("unique_permissions").checked && document.getElementById("additional_list")) 
                    document.getElementById("additional_list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
                else 
                    document.getElementById("list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

// function handling the list response
function handleResponseSearchList(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response != '') {
                if (document.getElementById("additional_list")) 
                    document.getElementById("additional_list").innerHTML = response; //Fill in response
                else 
                    document.getElementById("list").innerHTML = response; //Fill in response
                if (typeof check_delete_fields != "undefined") 
                    check_delete_fields();
                if (typeof check_select_fields != "undefined") 
                    check_select_fields(first);
                if (typeof disable_all != "undefined" && document.getElementById("disable_list").value == 'true') 
                    disable_all(true);
            }
            //alert(response.indexOf('no_data'));
            if (response.indexOf('no_data') > 0) //in case of 0 results remove view passwords button
            {
                if (document.getElementById("view_passwords")) 
                    document.getElementById("view_passwords").disabled = 'disabled';
                if (document.getElementById("submit_button1")) 
                    document.getElementById("submit_button1").disabled = 'disabled';
            }
        }
        else {
            try {
                if (document.getElementById("additional_list")) 
                    document.getElementById("additional_list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
                else 
                    document.getElementById("list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\

// function checking the balance
function sndReqBalance(loginname, landing, time){
    //alert(time);
    sndurl = '/get_balance.php?loginname=' + loginname;
    http1.open('GET', sndurl); //sends request
    http1.onreadystatechange = function(){
        handleResponseBalance(loginname, landing, time);
    } //ensures the response is handled by the correct function
    http1.send(null);
    setTimeout('sndReqBalance("' + loginname + '","' + landing + '",' + time + ')', time * 1000);
}

// handling response
function handleResponseBalance(loginname, landing, time){
    try {
        if ((http1.readyState == 4) && (http1.status == 200)) {
			http_session_error(http);
            var response1 = http1.responseText;
            //alert(response1);
            if (response1 == 'error') 
                top.window.location.href = "login.php";
            else 
                if (response1 != '') 
                    document.getElementById("balance").innerHTML = response1; //Fill in response
            //			alert(document.getElementById("balance").innerHTML)
        }
    } 
    catch (e) {
    }
    finally {
    }
}

// function checking customer balance
function sndReqCustomerBalance(CustomerID){
    if (document.getElementById("ajax_working").value != 'working') {
        document.getElementById("loader_gif").style.display = "";
        document.getElementById("gasian_balance_" + CustomerID).innerHTML = "<center>wait</center>";
        document.getElementById("ajax_working").value = 'working';
        
        sndurl = '/get_gasian_balance.php?CustomerID=' + CustomerID;
        http1.open('GET', sndurl); //sends request
        http1.onreadystatechange = function(){
            handleResponseBalance1(CustomerID);
        } //ensures the response is handled by the correct function
        http1.send(null);
    }
    else 
        alert('There an active request, please try again in few seconds');
}

function handleResponseBalance1(CustomerID){
    try {
        if ((http1.readyState == 4) && (http1.status == 200)) {
			http_session_error(http);
            var response2 = http1.responseText;
            
            if (response2 == 'error') 
                top.window.location.href = "login.php";
            else 
                if (response2 != '') {
                    var aryTest = response2.split('::');
                    
                    document.getElementById("credit_balance_" + CustomerID).innerHTML = aryTest[0];
                    document.getElementById("gasian_balance_" + CustomerID).innerHTML = "<center><a href=\"javascript:;\" onclick=\"sndReqCustomerBalance('" + CustomerID + "');\">" + aryTest[1] + "</a></center>";
                    if (document.getElementById("casino_balance_" + CustomerID)) 
                        document.getElementById("casino_balance_" + CustomerID).innerHTML = aryTest[2];
                    if (document.getElementById("progressive_balance_" + CustomerID)) 
                        document.getElementById("progressive_balance_" + CustomerID).innerHTML = aryTest[3];
                    if (document.getElementById("poker_balance_" + CustomerID)) 
                        document.getElementById("poker_balance_" + CustomerID).innerHTML = aryTest[4];
                    document.getElementById("loader_gif").style.display = "none";
                    document.getElementById("ajax_working").value = '';
                }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// all below functions are dealing with Agent addition / editing and use one response handler
//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function adding agent
function sndReqAddAgent(mobile, fname, lname, email, password, daily_limit, commission, Timezone, Language, agent_type_id, IsProgressive, IsPoker, IsSports, currency, notify_email, notify_sms, notify_print, countryid, commission_value, commission_type, rolling, PokerPrePaid, CasinoPrePaid, PokerPrePaidRatio, CasinoPrePaidRatio, PokerRakePrecent, PokerBalance, PokerCurrency, PokerInitialBalance, ProgressiveCurrency, SportsBalance, SportsCurrency, session){
		sndurl = 'add_agent_to_list.php';
		params = 'mobile=' + mobile
			+ '&fname=' + fname
			+ '&lname=' + lname
			+ '&email=' + email
			+ '&p_word=' + password 
			+ '&daily_limit=' + daily_limit
			+ '&commission=' + commission
			+ '&Timezone=' + Timezone
			+ '&Language=' + Language
			+ '&agent_type_id=' + agent_type_id
			+ '&IsProgressive=' + IsProgressive
			+ '&IsPoker=' + IsPoker
			+ '&IsSports=' + IsSports
			+ '&currency=' + currency
			+ '&notify_email=' + notify_email
			+ '&notify_sms=' + notify_sms
			+ '&notify_print=' + notify_print
			+ '&countryid=' + countryid
			+ '&commission_value=' + commission_value
			+ '&commission_type=' + commission_type
			+ '&rolling=' + rolling
			+ '&PokerPrePaid=' + PokerPrePaid
			+ '&CasinoPrePaid=' + CasinoPrePaid
			+ '&PokerPrePaidRatio=' + PokerPrePaidRatio
			+ '&CasinoPrePaidRatio=' + CasinoPrePaidRatio
			+ '&PokerRakePrecent=' + PokerRakePrecent
			+ '&PokerBalance=' + PokerBalance
			+ '&PokerCurrency=' + PokerCurrency
			+ '&SportsBalance=' + SportsBalance
			+ '&SportsCurrency=' + SportsCurrency
			+ '&ProgressiveCurrency=' + ProgressiveCurrency
			+ '&PokerInitialBalance=' + PokerInitialBalance;
	if (window.location.href.search('add_agent.php') != -1) {
		if (session != '') {
			params += '&' + session;
		}
		http.open('POST', sndurl); //sends request
		http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
		http.send(params);
	} else {
		sndurl = sndurl + '?' + params
		if (session != '') 
			sndurl += '&' + session;
		http.open('GET', sndurl); //sends request
		http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
		http.send(null);
	}
}

/// ----------------------------------------------------------\\\
// function updating agent
function sndReqUpdateAgent(
            login,
			Timezone,
            memberid, 
            mobile, 
            fname, 
            lname, 
            email, 
            password, 
            progressive, 
            poker,
            sports,
            PokerPrePaid,
            CasinoPrePaid,
            PokerPrePaidRatio,
            CasinoPrePaidRatio,
            PokerRakePrecent,
            PokerInitialBalance,
            ProgressiveCurrency,
            SportsCurrency,
            PokerCurrency,
            Currency,
            session
        ) {

   sndurl = 'update_agent_in_list.php?login=' + login
		+ '&Timezone=' + Timezone
        + '&memberid=' + memberid 
        + '&mobile=' + mobile 
        + '&fname=' + fname 
        + '&lname=' + lname 
        + '&email=' + email 
        + '&password=' + password
        + '&progressive=' + progressive 
        + '&poker=' + poker 
        + '&sports=' + sports 
        + '&PokerPrePaid=' + PokerPrePaid 
        + '&CasinoPrePaid=' + CasinoPrePaid 
        + '&PokerPrePaidRatio=' + PokerPrePaidRatio 
        + '&CasinoPrePaidRatio=' + CasinoPrePaidRatio 
        + '&PokerRakePrecent=' + PokerRakePrecent 
        + '&PokerInitialBalance=' + PokerInitialBalance 
        + '&ProgressiveCurrency=' + ProgressiveCurrency
        + '&SportsCurrency=' + SportsCurrency
        + '&PokerCurrency=' + PokerCurrency
        + '&currency=' + Currency;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function reset login password agent
function sndReqResetLoginPasswordForm(login, session){
    sndurl = '/reset_login_password.php?login=' + login;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseResetLoginFormPassword; //ensures the response is handled by the correct function
    http.send(null);
    
}

function handleResponseResetLoginFormPassword(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
        }
        else {
            try {
                document.getElementById("list").innerHTML = "<img src='./images/ajax-loader.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

// function reset password
function sndReqResetLoginPassword(login, notify_email, notify_sms, old_password, new_password, back_page, session){
    sndurl = '/get_reset_password.php?login=' + login + '&notify_email=' + notify_email + '&notify_sms=' + notify_sms + '&old_password=' + old_password + '&new_password=' + new_password + '&back_page=' + back_page;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseResetLogin; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseResetLogin(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('Error') != -1) {
                    var num = response.indexOf('trans_id=');
                    if (num > 0) {
                        trans_id = (response.substr(num, response.length)).replace('trans_id=', '');
                        response = response.substr(0, num);
                        if (document.getElementById("trans_id")) 
                            document.getElementById("trans_id").valye = trans_id;
                        //alert(trans_id);
                    }
                    enable_submit_button();
                    if (document.getElementById("block_1")) 
                        document.getElementById('block_1').style.display = 'block';
                    if (document.getElementById('notification_block')) 
                        document.getElementById('notification_block').style.display = 'none';
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                else {
                    if (document.getElementById("output")) {
                        document.getElementById('output').innerHTML = response;
                    }
                    else if (document.getElementById('list')) {
                        document.getElementById('list').innerHTML = '<div style="position: relative; height: 458px;" id="output" class="box_tabs">' + response + '</div>';
                    }
                }
                document.getElementById("loader_gif").style.display = "none";
            }
            else {
                disable_submit_button();
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

/// ----------------------------------------------------------\\\
// function switching status (lock / unlock)
function sndReqStatusChange(login, lock_status, session){
    sndurl = '/change_agent_status.php?login=' + login + '&lock_status=' + lock_status;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function reset password
function sndReqResetPassword(login, notify_email, notify_sms, old_password, new_password, session){
    sndurl = '/get_reset_password.php?login=' + login + '&notify_email=' + notify_email + '&notify_sms=' + notify_sms + '&old_password=' + old_password + '&new_password=' + new_password;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}



/// ----------------------------------------------------------\\\
// function changin balance
function sndReqChangeBalance(login, change_amount, CurrencyId, trans_id, related_type, session){
    sndurl = 'get_change_balance.php?login=' + login + '&change_amount=' + change_amount + '&CurrencyId=' + CurrencyId + '&trans_id=' + trans_id + '&related_type=' + related_type;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating station settings
function sndReqUpdateStation(account, station, clientid, betting_profile, is_progressive, is_poker, currency_id, currency_id2, alias, session){
    sndurl = 'get_update_station.php?account=' + account + '&station=' + station + '&clientid=' + clientid + '&betting_profile=' + betting_profile + '&is_progressive=' + is_progressive + '&is_poker=' + is_poker + '&currency_id=' + currency_id + '&currency_id2=' + currency_id2 + '&alias=' + alias;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating player status (lock / unlock)
function sndReqPlayerStatus(account, lock, session){
    sndurl = 'get_player_status.php?account=' + account + '&lock=' + lock;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function resetting player attempts
function sndReqPlayerResetAttempts(account, session){
    sndurl = 'get_player_reset_attempts.php?account=' + account;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function sending game to player's mobile device
function sndReqSendGame(account, mobile_number,  language_id, notify_email,notify_sms,session){
    sndurl = 'get_send_game.php?account=' + account + '&mobile_number=' + mobile_number  + '&language_id=' + language_id+ '&notify_email=' + notify_email + '&notify_sms=' + notify_sms;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating player
function sndReqUpdatePlayer(account, clientid, phone_number, firstName, lastName, email, is_mobile, session, operatorid, betting_profile, is_progressive, is_poker, alias, currency_id, is_sports, sports_currency_id, currency_id2){
    sndurl = 'get_update_player.php?account=' + account + '&clientid=' + clientid + '&phone_number=' + phone_number + '&firstName=' + firstName + '&lastName=' + lastName + '&email=' + email + '&is_mobile=' + is_mobile + '&operator=' + operatorid + '&betting_profile=' + betting_profile + '&is_progressive=' + is_progressive + '&is_poker=' + is_poker + '&alias=' + alias + '&currency_id=' + currency_id + '&is_sports=' + is_sports + '&sports_currency_id=' + sports_currency_id + '&currency_id2=' + currency_id2;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function adding login
function sndReqAddLogin(mobile, fname, lname, loc_string, loc_id, email, password, notify_email, notify_sms, notify_print, type, select_list, session){
    sndurl = '/add_login_to_list.php?mobile=' + mobile + '&fname=' + fname + '&lname=' + lname + '&loc_string=' + loc_string + '&loc_id=' + loc_id + '&email=' + email + '&password=' + password + '&notify_email=' + notify_email + '&notify_sms=' + notify_sms + '&notify_print=' + notify_print + '&type=' + type + '&select_list=' + select_list;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating login
function sndReqUpdateLogin(login, fname, lname, email, password, mobile, login_type, status_id, session){
    sndurl = '/update_login_in_list.php?login=' + login 
        + '&mobile=' + mobile
        + '&fname=' + fname
        + '&lname=' + lname
        + '&email=' + email
        + '&password=' + password 
        + '&login_type=' + login_type
        + '&status_id=' + status_id;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating login status (lock / unlock)
function sndReqLoginStatus(login, lock_status, session){
    sndurl = '/change_login_status.php?login=' + login + '&lock_status=' + lock_status;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating member settings
function sndReqUpdateSettings(member_id, vars, session){
    sndurl = '/get_manage_settings.php?member_id=' + member_id + '&vars=' + vars;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqUpdatePayment(payment_id, member_id, ref_num, recieved_date, from_date, to_date, recieved_amount, bank_fee_amount, mgs_share_amount, spiral_share_amount, comments, product_type, session){
    sndurl = '/get_update_payment.php?payment_id=' + payment_id + '&member_id=' + member_id + '&ref_num=' + ref_num + '&recieved_date=' + recieved_date + '&from_date=' + from_date + '&to_date=' + to_date + '&recieved_amount=' + recieved_amount + '&bank_fee_amount=' + bank_fee_amount + '&mgs_share_amount=' + mgs_share_amount + '&spiral_share_amount=' + spiral_share_amount + '&comments=' + comments + '&product_type=' + product_type;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqUpdateInvoice(invoice_id, member_id, ref_num, issue_date, from_date, to_date, due_amount, state_type, payment_seq_number, close_date, description, comments, product_type, session){
    sndurl = '/get_update_invoice.php?invoice_id=' + invoice_id + '&member_id=' + member_id + '&ref_num=' + ref_num + '&issue_date=' + issue_date + '&from_date=' + from_date + '&to_date=' + to_date + '&due_amount=' + due_amount + '&state_type=' + state_type + '&payment_seq_number=' + payment_seq_number + '&close_date=' + close_date + '&description=' + description + '&comments=' + comments + '&product_type=' + product_type;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqUpdateRefund(refund_id, incident_date, reason_code_id, description, head_office_id, master_agent_id, agent_id, comments, refund_amount, lock, session){
    sndurl = '/get_update_refund.php?refund_id=' + refund_id + '&incident_date=' + incident_date + '&reason_code_id=' + reason_code_id + '&description=' + description + '&head_office_id=' + head_office_id + '&master_agent_id=' + master_agent_id + '&agent_id=' + agent_id + '&comments=' + comments + '&refund_amount=' + refund_amount + '&lock=' + lock;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqUpdatePermissions(login_name, select_list, select_all, type, session){
    sndurl = '/get_update_permissions.php?login_name=' + login_name + '&select_list=' + select_list + '&select_all=' + select_all + '&type=' + type;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentForm; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseAgentForm(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('error') != -1) {
                    var num = response.indexOf('trans_id=');
                    if (num > 0) {
                        trans_id = (response.substr(num, response.length)).replace('trans_id=', '');
                        response = response.substr(0, num);
                        if (document.getElementById("trans_id")) 
                            document.getElementById("trans_id").valye = trans_id;
                        //alert(trans_id);
                    }
                    if (document.getElementById("block_1")) 
                        document.getElementById('block_1').style.display = 'block';
                    if (document.getElementById('notification_block')) 
                        document.getElementById('notification_block').style.display = 'none';
                    document.getElementById("error").innerHTML = response; //Fill in response
                     if (document.getElementById("error1")) 
                         document.getElementById("error1").innerHTML = response;
                    if (response.search('5037') != -1 && document.getElementById('old_password')) {
                        set_focus(document.getElementById('old_password'));
                    }
                    document.getElementById("loader_gif").style.display = "none";
                    enable_submit_button();
                    
                }
                else if(response.search('comission_fault') != -1){
                    disable_submit_button(); 
                    document.getElementById('wind1_text').innerHTML=response;
                    document.getElementById('wind1_button_ok').onclick = function() {
                        closeWin();
                        if(document.getElementById("block_1"))
                            document.getElementById("block_1").style.display='block';
                        if(document.getElementById("notification_block"))
                            document.getElementById("notification_block").style.display='none';
                        if(document.getElementById("comission_fault").name=='poker')
                            set_focus(document.getElementById('PokerRakePrecent'))
                        else if (document.getElementById('comission_fault').innerHTML.search('Commission setting can only be between') != -1) {
							set_focus(document.getElementById('PokerRakePrecent'))
						} else
                            document.getElementById('based_on_netcash').disabled ?
                            set_focus(document.getElementById('based_on_netwin')) : 
                            set_focus(document.getElementById('based_on_netcash'));;
                        enable_submit_button();
                        document.getElementById('wind1_button_cancel').style.display=''
                    };
                    
                    document.getElementById('wind1_button_cancel').style.display='none'
                    
                    openWin('wind1','cont1',100,100,400,250);
                    if (document.getElementById('loader_gif')) {
                    document.getElementById('loader_gif').style.display = "none";
                    }

                    if (document.getElementById('loader_gif1')) {
                        document.getElementById('loader_gif1').style.display = "none";
                    }
                    return false;
                }
                else {
                    if (document.getElementById("result_block")) 
                        document.getElementById('result_block').innerHTML = response;
                    else 
                        if (document.getElementById("output")) 
                            document.getElementById('output').innerHTML = response;
                    if ((response.search('button') != -1) && (response.search('input') != -1)) 
                        disable_submit_button();
                    else 
                        enable_submit_button();
                }
                document.getElementById("loader_gif").style.display = "none";
            }
            else {
                disable_submit_button();
                location.href = document.agent_form.action;
                //document.agent_form.submit();
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

/// ----------------------------------------------------------\\\
// function changin balance
function sndReqUpdateBalance(login, credit_amount, bonus_amount, trans_id, currency_id, product_type, description, chb_amount, session){
    sndurl = '/get_update_balance.php?login=' + login + '&credit_amount=' + credit_amount + '&bonus_amount=' + bonus_amount + '&trans_id=' + trans_id + '&currency_id=' + currency_id + '&product_type=' + product_type + '&description=' + description + '&chb_amount=' + chb_amount;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateBalance; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseUpdateBalance(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('error') != -1) {
                    var num = response.indexOf('trans_id=');
                    if (num > 0) {
                        trans_id = (response.substr(num, response.length)).replace('trans_id=', '');
                        response = response.substr(0, num);
                        if (document.getElementById("trans_id")) 
                            document.getElementById("trans_id").valye = trans_id;
                        //alert(trans_id);
                    }
                    enable_submit_button();
                    if (document.getElementById("block_1")) 
                        document.getElementById('block_1').style.display = 'block';
                    if (document.getElementById('block_2')) 
                        document.getElementById('block_2').style.display = 'none';
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                else {
                    if (document.getElementById("approve_block")) {
                        document.getElementById('approve_block').innerHTML = response;
                    }
                }
                document.getElementById("loader_gif").style.display = "none";
            }
            else {
                disable_submit_button();
                document.agent_form.submit();
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function resets player password
function sndReqPlayerResetPassword(account, notify_email, notify_sms, notify_print, player_type, session){
    sndurl = 'get_player_reset_password.php?account=' + account + '&notify_email=' + notify_email + '&notify_sms=' + notify_sms + '&notify_print=' + notify_print + '&player_type=' + player_type;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponsePlayerForm; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponsePlayerForm(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') {
                if (response.search('error') == -1) {
                    disable_submit_button();
                    if (document.getElementById("block_1")) 
                        document.getElementById('block_1').style.display = 'none';
                    if (document.getElementById('new_password')) 
                        document.getElementById('new_password').innerHTML = response;
                }
                else {
                    enable_submit_button();
                    if (document.getElementById("block_1")) 
                        document.getElementById('block_1').style.display = 'block';
                    if (document.getElementById('notification_block')) 
                        document.getElementById('notification_block').style.display = 'none';
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                document.getElementById("loader_gif").style.display = "none";
            }
            else {
                disable_submit_button();
                document.agent_form.submit();
            }
        }
        else {
            display_loading_gif();
        }
    }
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// all below functions are dealing with Player / Station addition / editing and use one response handler
//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// registering new player account
function sndReqRegisterAccount(phone_ext, PhoneNumber, firstName, lastName, email, Currency, age_agree, dob, is_mobile, send_settings, notify_sms, notify_email, handset, country_id, service_id, session, operatorid, countryid, language){
    sndurl = 'register_account_to_list.php';
	params = 'phone_ext=' + phone_ext + '&PhoneNumber=' + PhoneNumber + '&firstName=' + firstName + '&lastName=' + lastName + '&email=' + email + '&Currency=' + Currency + '&age_agree=' + age_agree + '&dob=' + dob + '&is_mobile=' + is_mobile + '&send_settings=' + send_settings + '&notify_sms=' + notify_sms + '&notify_email=' + notify_email + '&handset=' + handset + '&country_id=' + country_id + '&service_id=' + service_id + "&operators=" + operatorid + "&countryid=" + countryid + "&language=" + language;
    if (session != '') 
        params += '&' + session;
    //alert(sndurl);
    http.open('POST', sndurl); //sends request
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(params);
}

function sndReqRegisterAccount2(phone_ext, PhoneNumber, firstName, lastName, email, Currency, age_agree, dob, is_mobile, send_settings, notify_sms, notify_email, handset, handset_id, country_id, service_id, session, operatorid, countryid, betting_profile, is_progressive, is_poker, alias, auto_alias, currency_id, is_sports, sports_currency_id, currency_id1, language){
    sndurl = 'register_account_to_list.php'
	params = 'phone_ext=' + phone_ext + '&PhoneNumber=' + PhoneNumber + '&firstName=' + firstName + '&lastName=' + lastName + '&email=' + email + '&Currency=' + Currency + '&age_agree=' + age_agree + '&dob=' + dob + '&is_mobile=' + is_mobile + '&send_settings=' + send_settings + '&notify_sms=' + notify_sms + '&notify_email=' + notify_email + '&handset=' + handset + '&handset_id=' + handset_id + '&country_id=' + country_id + '&service_id=' + service_id + "&operators=" + operatorid + "&countryid=" + countryid + "&betting_profile=" + betting_profile + "&is_progressive=" + is_progressive + "&is_poker=" + is_poker + "&alias=" + alias + "&auto_alias=" + auto_alias + "&currency_id=" + currency_id + "&is_sports=" + is_sports + "&sports_currency_id=" + sports_currency_id + "&currency_id1=" + currency_id1 + "&language=" + language;;
    if (session != '') 
        params += '&' + session;
    //alert(sndurl);
    http.open('POST', sndurl); //sends request
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(params);
}

/// ----------------------------------------------------------\\\
// function deactivating card
function sndReqDeactivateCard(mobile, cardIdentity, session){
    sndurl = 'deactivate_card_from_list.php?mobile_number=' + mobile + '&cardIdentity=' + cardIdentity;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for transfer credit balamce
function sndReqTransferCreditBalance(fromAccount, toAccount, defaultAccount, trans_id, nick_name, notify_print, session){
    sndurl = 'transfer_credit_balance.php?fromAccount=' + fromAccount + '&toAccount=' + toAccount + '&defaultAccount=' + defaultAccount + '&trans_id=' + trans_id + '&nickname=' + nick_name + '&notify_print=' + notify_print;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for depositing
function sndReqDeposit(account, player_type, amount, notify_sms, notify_email, notify_print, resetpassword, nickname, trans_id, FirstName, LastName, currency_id, session){
    sndurl = 'deposit_account.php?account=' + account + '&player_type=' + player_type + '&amount=' + amount + '&notify_sms=' + notify_sms + '&notify_email=' + notify_email + '&notify_print=' + notify_print + '&resetpassword=' + resetpassword + '&nickname=' + nickname + '&trans_id=' + trans_id + '&FirstName=' + FirstName + '&LastName=' + LastName + '&currency_id=' + currency_id;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for withdrawal
function sndReqWithdrawal(account, amount, fname, lname, mobile_number, email, progressive_win, notify_sms, notify_email, notify_print, nickname, trans_id, FirstName, LastName, withdrawal_all, session){
    sndurl = 'withdrawal_account.php?account=' + account + '&amount=' + amount + '&fname=' + fname + '&lname=' + lname + '&mobile_number=' + mobile_number + '&email=' + email + '&progressive_win=' + progressive_win + '&notify_sms=' + notify_sms + '&notify_email=' + notify_email + '&notify_print=' + notify_print + '&nickname=' + nickname + '&trans_id=' + trans_id + '&FirstName=' + FirstName + '&LastName=' + LastName + '&withdrawal_all=' + withdrawal_all;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function updating form
function sndReqUpdateForm(mobile, session){
    sndurl = 'get_update_agent_form.php?mobile=' + mobile;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseOutput; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// handling response for all above functions
function handleResponseOutput(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response.search('error'));
            if (response.search('error') == -1 || response.search('error') == response.search('error1')) {
            
                disable_submit_button();
                if (response.search('mobile_player') != -1) 
                    document.getElementById("output").style.height = '1100px';
                document.getElementById("output").innerHTML = response; //Fill in response
            }
            else {
                //alert(response);
                var num = response.indexOf('trans_id=');
                if (num > 0) {
                    trans_id = (response.substr(num, response.length)).replace('trans_id=', '');
                    response = response.substr(0, num);
                    if (document.getElementById("trans_id")) 
                        document.getElementById("trans_id").valye = trans_id;
                    //alert(trans_id);
                }
                enable_submit_button();
                if (document.getElementById("block_1")) 
                    document.getElementById('block_1').style.display = 'block';
                else {
                    if (document.getElementById("block_2")) 
                        document.getElementById('block_2').style.display = 'block';
                }
                if (document.getElementById('notification_block')) 
                    document.getElementById('notification_block').style.display = 'none';
                document.getElementById("error").innerHTML = response; //Fill in response
                document.getElementById("loader_gif").style.display = "none";
            }
        }
        else {
            disable_submit_button();
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// all below functions are dealing with reports and use one response handler
///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function for gross win report
function sndReqGrossWinReport(action_landing, start_date, end_date, select_list, summary_level, currency, groupby, session){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&gby=' + groupby + '&currency=' + currency;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

// function for earning report
function sndReqEarningReport(action_landing, start_date, end_date, select_list, summary_level, time_zone, clcustomerid, currency, include_test, product_type, session){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&time_zone=' + time_zone + '&clcustomerid=' + clcustomerid + '&currency=' + currency + '&include_test=' + include_test + '&product_type=' + product_type;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqEarningReportHO(action_landing, start_date, end_date, select_list, summary_level, time_zone, clcustomerid, currency, include_test, incl_ho_tz, session){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&time_zone=' + time_zone + '&clcustomerid=' + clcustomerid + '&currency=' + currency + '&include_test=' + include_test + '&incl_ho_tz=' + incl_ho_tz;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for reports
function sndReqAgentEarningReport(action_landing, start_date, end_date, select_list, summary_level, include_test, session){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&include_test=' + include_test;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for reports
function sndReqGameProfitabilityReport(action_landing, start_date, end_date, select_list, summary_level, include_test, account, session){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&include_test=' + include_test + '&account=' + account;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for reports
function sndReqCreditReport(action_landing, start_date, end_date, select_list, summary_level, summary_level1, include_test, product_type, session, summaryCurrency){
    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level=' + summary_level + '&summary_level1=' + summary_level1 + '&include_test=' + include_test + '&product_type=' + product_type;
    if (summaryCurrency) {
        sndurl += '&summary_currency=' + summaryCurrency;
    }
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// function for reports
function sndReqProgWinReport(action_landing, start_date, end_date, summary_level, account_number, select_list, jackpot_number, include_test, popup, session){
    var httpPWR = createRequestObject();

    sndurl = "/" + action_landing + '?start_date=' + start_date + '&end_date=' + end_date + '&summary_level=' + summary_level + '&account_number=' + account_number + '&select_list=' + select_list + '&jackpot_number=' + jackpot_number + '&include_test=' + include_test + '&popup=' + popup;
    if (session != '') 
        sndurl += '&' + session;

    //alert(sndurl);

    httpPWR.open('GET', sndurl); //sends request
    if (popup != 'true') 
        httpPWR.onreadystatechange = function() {
            handleResponseEarningReportInput(httpPWR); //ensures the response is handled by the correct function
        };
    else 
        httpPWR.onreadystatechange = function() {
            handleResponseViewGamePlayWindowInput(httpPWR); //ensures the response is handled by the correct function
        }
    httpPWR.send(null);
}

/// ----------------------------------------------------------\\\
// handling response
function handleResponseEarningReport() {
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
            //document.getElementById("waitimage").style.display="none";
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                // document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
                document.getElementById("waitimage").style.display = "block";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function handleResponseEarningReportInput(httpObj) {
    try {
        if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
			http_session_error(http);
            var response = httpObj.responseText;
            if (response != '') {
                document.getElementById("list").innerHTML = response; //Fill in response
            }
            //document.getElementById("waitimage").style.display="none";
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                // document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
                document.getElementById("waitimage").style.display = "block";
            }
            catch (e) {
                //alert("display div  undefined");
            }
        }
    }
    catch (e) {
    }
    finally {
    }
}

/// ----------------------------------------------------------\\\
// function for reports
var ChartName = '';
var ChartWidth = ChartHeight = 0;
function sndReqGenericReport(action_landing, report_name, start_date, end_date, params, free_text, chart_name, chart_width, chart_height, session){
    ChartName = chart_name;
    ChartWidth = chart_width;
    ChartHeight = chart_height;
    if (document.getElementById("wind1") && document.getElementById("wind1").style.visibility == 'visible')
        display_loading_gif();
    else 
        display_waitimage();
    var sndurl = '/' + action_landing + '?report_name=' + report_name + '&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    
	//debugger;
	
	if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    //	alert(document.getElementById("wind1").style.visibility);
    //	alert(document.getElementById("container").style.visibility);
    http.open('GET', sndurl); //sends request
    if (report_name == 'CreditTransferReport') {
        http.onreadystatechange = handleResponseEarningReport;
    }
    else {
        http.onreadystatechange = handleResponseGenericReport; //ensures the response is handled by the correct function
    }
    http.send(null);
}

/// ----------------------------------------------------------\\\
// handling response
function handleResponseGenericReport(){
	
	var err_name = 'error';
    var list_name = 'list';
    var img_name = 'waitimage';

    if (document.getElementById("wind1") && document.getElementById("wind1").style.visibility == 'visible') {
        err_name = 'error1';
        list_name = 'window_result';
        img_name = 'loader_gif';
    }

    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //debugger;
			//alert(response);			
            if (response != '') {
                if (document.getElementById('waitimage')) {
                    document.getElementById('waitimage').style.display = "none";
                }
                
                if (document.getElementById('loader_gif')) {
                    document.getElementById('loader_gif').style.display = "none";
                }
                
                if (document.getElementById('loader_gif1')) {
                    document.getElementById('loader_gif1').style.display = "none";
                }

                if (response.search("error") != -1 && response.search('error') != response.search('error1')) {
                    document.getElementById(err_name).innerHTML = response;
                }
                else {
                    if (ChartName == '') {
                        //alert(response);
                        document.getElementById(list_name).innerHTML = response; //Fill in response
                        //alert(document.getElementById("list").innerHTML);
                    }
                    else {
                        if (response.search("$$$$") != -1) {
                            response_array = response.split("$$$$");
                            document.getElementById(list_name).innerHTML = response_array[0];
                            response = response_array[1];
                        }
                        View_Chart(response, ChartName, ChartWidth, ChartHeight);
                    }
                    //			if(document.getElementById("stam")){
                    //				document.getElementById("stam").innerHTML ="<pre>$('.flexme').flexigrid();</pre>";
                    //				
                    //			$('.flexme0').flexigrid();
                    //			$('.flexme1').flexigrid();
                    //			$('.flexme2').flexigrid();
                    //			}
                }
                document.getElementById(img_name).style.display = "none";
            }
        }
        else {
            if (img_name == 'waitimage')
                display_waitimage();
            else 
                display_loading_gif();
            
        }
    } 
    catch (e) {
    }
    finally {
    }
}


// function for reports
var ChartName = '';
var ChartWidth = ChartHeight = 0;
function sndReqGenericReport1(action_landing, report_name, start_date, end_date, params, free_text, chart_name, chart_width, chart_height, session){
    ChartName = chart_name;
    ChartWidth = chart_width;
    ChartHeight = chart_height;
    if (document.getElementById("wind1") && document.getElementById("wind1").style.visibility == 'visible') 
        display_loading_gif();
    else 
        display_waitimage();
    var sndurl = '/' + action_landing + '?report_name=' + report_name + '&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    
	//debugger;
	
	if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    //	alert(document.getElementById("wind1").style.visibility);
    //	alert(document.getElementById("container").style.visibility);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGenericReport1; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// handling response


var span_report_name;
// function for earning report
function sndReqSortingPaging(cache_filename, report_name, sorting_param, sorting_order, sorting_type, page_num, enteries_num, session){
    if (!session) {
		var session = '';
	}
	
	sndurl = '/sorting_paging.php?cache_filename=' + cache_filename + '&report_name=' + report_name + '&sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type + '&page_num=' + page_num + '&enteries_num=' + enteries_num;
    if (session != '') 
        sndurl += '&' + session;
    span_report_name = "span_" + report_name;
    if (document.forms["xml_export_form"]) 
        document.forms["xml_export_form"].sorting_params.value = '?sorting_param=' + sorting_param + '&sorting_order=' + sorting_order + '&sorting_type=' + sorting_type;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSortingPaging; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// handling response
function handleResponseSortingPaging(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') {
                document.getElementById(span_report_name).innerHTML = response; //Fill in response
                if (document.getElementById('checked_account') && document.getElementById('checked_account').value != '') 
                    check_row(document.getElementById('checked_account').value, 'tab_head');
                //				if(document.getElementById("stam")){
                //					document.getElementById("stam").innerHTML ="<pre>$('.flexme').flexigrid();</pre>";
                //					
                //					$('.flexme0').flexigrid();
                //					$('.flexme1').flexigrid();
                //					$('.flexme2').flexigrid();
                //				}
            }
            //document.getElementById("waitimage").style.display="none";
            document.getElementById("waitimage").style.display = "none";
			if (document.getElementById("loader_gif")) {
				document.getElementById("loader_gif").style.display = "none";
			}
        }
        else {
            try {
                // document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
                document.getElementById("waitimage").style.display = "block";
				if (document.getElementById("loader_gif")) {
					document.getElementById("loader_gif").style.display = "";
				}				
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function for earning report (member)
function sndReqEarningByAgentReport(start_date, end_date, session){
    sndurl = 'get_earning_by_agent_report.php?start_date=' + start_date + '&end_date=' + end_date;
    if (session != '') 
        sndurl += "&" + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseEarningByAgentReport; //ensures the response is handled by the correct function
    http.send(null);
}

// handle response
function handleResponseEarningByAgentReport(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function progressibe reports
function sndReqProgressiveReport(start_date, end_date, session){
    sndurl = 'get_progressive_report.php?start_date=' + start_date + '&end_date=' + end_date;
    //alert(sndurl);
    if (session != '') 
        sndurl += "&" + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseProgressiveReport; //ensures the response is handled by the correct function
    http.send(null);
}

// handle response
function handleResponseProgressiveReport(){
    try {
        //alert(response)
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// progressive balance report
function sndReqProgressiveBalanceReport(start_date, end_date, session){
    sndurl = 'get_progressive_balance_report.php?start_date=' + start_date + '&end_date=' + end_date;
    //alert(sndurl);
    if (session != '') 
        sndurl += "&" + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseProgressiveBalanceReport; //ensures the response is handled by the correct function
    http.send(null);
}

//handle response
function handleResponseProgressiveBalanceReport(){
    try {
        //alert(response)
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// registering station
function sndReqRegisterStation(station_name, betting_profile, is_progressive, is_poker, currency_id, currency_id1, alias, session){
    sndurl = 'get_register_station.php'
	params = 'station_name=' + station_name + '&betting_profile=' + betting_profile + '&is_progressive=' + is_progressive + '&is_poker=' + is_poker + '&currency_id=' + currency_id + '&currency_id1=' + currency_id1 + '&alias=' + alias;
    //alert(sndurl);
    if (session != '') 
        params += "&" + session;
    http.open('POST', sndurl); //sends request
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.onreadystatechange = handleResponseRegisterStation; //ensures the response is handled by the correct function
    http.send(params);
}

// handling response
function handleResponseRegisterStation(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response.search('error') == -1) {
                disable_submit_button();
                document.getElementById("result_block").innerHTML = response; //Fill in response 
            }
            else {
                enable_submit_button();
                document.getElementById("error").innerHTML = response; //Fill in response
                if (response.search('NickName') != -1)
                    set_focus(document.getElementById('station_name'));
            }
            document.getElementById("loader_gif").style.display = "none";
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// registering station
function sndReqRegisterBulkStation(station_name_prefix, number_of_stations, auto_pass, pass, betting_profile, is_progressive, is_poker, currency_id, session){
	sndurl = 'get_register_bulk_station.php';
    params = 'station_name_prefix=' + station_name_prefix + '&number_of_stations=' + number_of_stations + '&auto_pass=' + auto_pass + '&pass=' + pass + '&betting_profile=' + betting_profile + '&is_progressive=' + is_progressive + '&is_poker=' + is_poker + '&currency_id=' + currency_id + '&currency_id1=' + currency_id1;
    //alert(sndurl);
    num_stations = number_of_stations;
    if (session != '') 
        params += "&" + session;
    http_bulk.open('POST', sndurl); //sends request
	http_bulk.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http_bulk.onreadystatechange = handleResponseRegisterBulkStation; //ensures the response is handled by the correct function
    http_bulk.send(params);
}

// handling response
function handleResponseRegisterBulkStation(){
    try {
        if ((http_bulk.readyState == 4) && (http_bulk.status == 200)) {
			http_session_error(http_bulk);
            var response = http_bulk.responseText;
            document.getElementById("loader_gif").style.display = "none";
            //alert(response);
            if (response.search('error') == -1) {
                //				alert(response);
                //				//sndReqBulkAddPlayerStatus(response,num_stations);
                var progressWin = $('wind1');
                progressWin.style.visibility = "visible";
                document.getElementById("error").innerHTML = '';
                progressWin.style.zIndex = 10;
                // Centering progress window
                var left = window.XMLHttpRequest == null ? document.documentElement.scrollLeft : 0;
                var top = window.XMLHttpRequest == null ? document.documentElement.scrollTop : 0;
                progressWin.style.left = (Math.max((left + (GetWindowWidth() - progressWin.offsetWidth) / 2), 0) - 100) + 'px';
                progressWin.style.top = (Math.max((top + (GetWindowHeight() - progressWin.offsetHeight) / 2), 0) - 100) + 'px';
                DisableInput('wind1');
                setTimeout("sndReqBulkAddPlayerStatus('" + response + "','" + num_stations + "')", 5000);
            }
            else {
                document.getElementById("error").innerHTML = response; //Fill in response
                document.getElementById("registration").disabled = false;
            }
			document.getElementById("loader_gif").style.display = "none";
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqBulkAddPlayerStatus(guid, num_sations){
    //alert(sndurl);
    sndurl = 'get_bulk_add_player_status.php?guid=' + guid + '&num_stations=' + num_stations;
    GUID = guid;
    num_of_sations = num_sations;
    //if(session != '') sndurl+="&"+session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponsBulkAddPlayerStatus; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponsBulkAddPlayerStatus(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response.search('error') == -1) {
                document.getElementById('amount_of_players').innerHTML = response;
                //openWin('wind1','cont1',300,300,200,100); //Fill in response
                //DisableInput('wind1');
                if (response.search('result') == -1) {
                    setTimeout('sndReqBulkAddPlayerStatus(GUID,num_of_sations)', 3000);
                }
                else {
                    $('wind1').style.display = "none";
                    EnableInput();
                    document.getElementById('add_bulk_station_form').style.display = 'none';
                    document.getElementById('result_table').style.display = 'block';
                    document.getElementById('result_table').innerHTML = response;
                    
                }
            }
            else {
                document.getElementById("error").innerHTML = response; //Fill in response
            }
            document.getElementById("loader_gif").style.display = "none";
        }
        else {
            try {
                document.getElementById("loader_gif").style.display = "none";
            } 
            catch (e) {
                alert("3 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function getting report for agents
function sndReqAgentReports(start_date, end_date, session){
    sndurl = 'get_agent_reports.php?start_date=' + start_date + '&end_date=' + end_date;
    //alert(sndurl)
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseAgentReports; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponseAgentReports(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("list").innerHTML = response; //Fill in response
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
var row_id;
// function handling the inner part of the drill down reports
function sndReqDrillDownReport(id, date, transfertype, select_list_arr, session){
    sndurl = 'get_drill_down_report.php?id=' + id + '&date=' + date + '&transfertype=' + transfertype + '&select_list_arr=' + select_list_arr;
    row_id = id;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrillDownReport; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function sndReqDrillDownReport1(id, date, transfertype, toid, session){
    sndurl = 'get_drill_down_report1.php?id=' + id + '&date=' + date + '&transfertype=' + transfertype + '&toid=' + toid;
    row_id = id;
    if (session != '') 
        sndurl += '&' + session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrillDownReport; //ensures the response is handled by the correct function
    http.send(null);
}

//---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// function handling another inner part of the drill down reports
function sndReqDrillDownReport2(id, date, select_list, select_summary_level, session){
    sndurl = 'get_agent_earning_report_by_day.php?id=' + id + '&date=' + date + '&select_list=' + select_list + '&select_summary_level=' + select_summary_level;
    row_id = id;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrillDownReport; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponseDrillDownReport(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') 
                document.getElementById("tr_" + row_id).style.display = display;
            document.getElementById("td_" + row_id).innerHTML = response; //Fill in response
            document.getElementById("waitimage").style.display = "none";
        }
        else {
            try {
                document.getElementById("waitimage").innerHTML = "<img src='ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}


// function draw select for playcheck report
function sndReqDrawSelect(lable, select_name, multiple, loginName, tdName, IncludeTestAccount, selected_value, related_product, session){
	try {
		var location = window.location.href;
		if (typeof(location) != "string") {
			throw 'error in window.location.href';
		}
			var script_name = location.replace(/^.*\//,'').replace(/\.php#*/, '');
			sndurl = '/get_select.php?lable=' + lable + '&script_name=' + script_name + '&select_name=' + select_name + '&multiple=' + multiple + '&loginName=' + loginName + '&tdName=' + tdName + '&IncludeTestAccount=' + IncludeTestAccount + '&selected_value=' + selected_value + '&related_product=' + related_product;
	} catch (e) {
		sndurl = '/get_select.php?lable=' + lable + '&select_name=' + select_name + '&multiple=' + multiple + '&loginName=' + loginName + '&tdName=' + tdName + '&IncludeTestAccount=' + IncludeTestAccount + '&selected_value=' + selected_value + '&related_product=' + related_product;
	}
    if (session != '') 
        sndurl += '&' + session;
    tdId = tdName;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrawSelect; //ensures the response is handled by the correct function
    http.send(null);
    return;
}

// function draw select for Client Hierarchy report
function sndReqDrawMemberSelect(lable, select_name, tdName, multiple, includeClient, parentMemberId, isIncludeTestMember, session) {
    sndurl = '/get_member_select.php?lable=' + lable + '&select_name=' + select_name + '&multiple=' + multiple + '&includeClient=' + includeClient + '&parentMemberId=' + parentMemberId+'&isIncludeTestMember=' + isIncludeTestMember;
    if (session != '') {
        sndurl += '&' + session;
    }

    tdId = tdName;

    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrawSelect; //ensures the response is handled by the correct function
    http.send(null);
    return;
}

function sndReqDrawGenericSelect(lable, method_name, params_name, params, select_name, multiple, tdName, selected_value, session){
    sndurl = '/get_generic_select.php?lable=' + lable + '&method_name=' + method_name + '&params_name=' + params_name + '&params=' + params + '&select_name=' + select_name + '&multiple=' + multiple + '&tdName=' + tdName + '&selected_value=' + selected_value;
    if (session != '') 
        sndurl += '&' + session;
    tdId = tdName;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseDrawSelect; //ensures the response is handled by the correct function
    http.send(null);
    return;
}

// handling response
function handleResponseDrawSelect(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') {
                document.getElementById(tdId).innerHTML = response; //Fill in response
                if (document.getElementById("waitimage"))
                    document.getElementById("waitimage").style.display = 'none';
                else 
                    if (document.getElementById("loader_gif")) 
                        document.getElementById("loader_gif").style.display = "none";
                //alert(document.getElementById(tdId).innerHTML);
            
            }
            
        }
        else {
            try {
                if (document.getElementById("waitimage")) {
                    document.getElementById("waitimage").style.display = 'block';
                    document.getElementById("waitimage").innerHTML = "<img src='/ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
                }
                else 
                    if (document.getElementById("loader_gif")) 
                        document.getElementById("loader_gif").style.display = "block";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

// function draw select for playcheck report
function sndReqGetPlayCheckUrlByAccount(account, session){
    sndurl = '/get_playcheck_url.php?account=' + account;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetPlayCheckUrlByAccount; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponseGetPlayCheckUrlByAccount(){
    try {
        //alert();
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response != '') {
                //alert(response);
                if (response.indexOf("error") > 0) {
                    document.getElementById("error").innerHTML = response;
                    document.getElementById("error").style.display = 'block';
                    //alert(document.getElementById("error").innerHTML);
                    //document.getElementById("submit").disabled=false;
                    document.getElementById("waitimage").style.display = 'none';
                }
                else {
                    window.open(response, 'playcheck_popup', 'fullscreen=yes, scrollbars=yes'); //Fill in response
                    var click_url_text = document.getElementById("click_url_text").innerHTML;
                    click_url_text = click_url_text.replace(/%%ResponseUrl%%/, response);
                    document.getElementById("click_url").innerHTML = click_url_text;
                    //document.getElementById("submit").disabled=false;
                    document.getElementById("waitimage").style.display = 'none';
                    //alert(document.getElementById("click_url").innerHTML);
                }
            }
        }
        else {
            try {
                document.getElementById("waitimage").style.display = 'block';
                document.getElementById("waitimage").innerHTML = "<img src='/ajax-loader-transparent.gif' width='100' height='100' alt='Please wait' />";
            } 
            catch (e) {
                //alert("display div  undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

var show_select;

function sndReqGetGamesSelect(select_name, account, language_id, session){
    sndurl = 'get_games_select.php?select_name=' + select_name + '&language_id=' + language_id + '&account=' + account;
    if (session != '') 
        sndurl += '&' + session;
    show_select = select_name;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetGamesSelect; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing login response
function handleResponseGetGamesSelect(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //	alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                if (response.indexOf('error') != -1) {
                    document.getElementById("error").innerHTML = response;
                }
                else {
                    document.getElementById("span_" + show_select).innerHTML = response;
                    document.getElementById("tr_" + show_select).style.display = display;
                    document.getElementById("tr_buttons").style.display = display;
                }
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

//fuctions for send settings
var show_select;

function sndReqGetSelect(select_name, handset_name, country_id, network_id, error_code, session){
    sndurl = 'get_ota_service.php?select_name=' + select_name + '&handset_name=' + handset_name + '&country_id=' + country_id + '&network_id=' + network_id + '&error_code=' + error_code;
    if (session != '') 
        sndurl += '&' + session;
    show_select = select_name;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetSelect; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqGetSelect2(select_name, handset_id, handset_name, country_id, network_id, error_code, session){
    sndurl = 'get_ota_service.php?select_name=' + select_name + '&handset_id=' + handset_id + '&handset_name=' + handset_name + '&country_id=' + country_id + '&network_id=' + network_id + '&error_code=' + error_code;
    if (session != '') 
        sndurl += '&' + session;
    show_select = select_name;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetSelect; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing login response
function handleResponseGetSelect(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                if (response.indexOf('error') != -1) {
                    //enable_submit_button();	
                    document.getElementById("error").innerHTML = response;
                }
                else {
                    //enable_submit_button();								
                    document.getElementById("span_" + show_select).innerHTML = response;
                    document.getElementById("tr_" + show_select).style.display = display;
                    if (show_select == 'service') 
                        if (document.getElementById("service").length < 3) 
                            onchange_service(document.getElementById("service"));
                    if (show_select == 'handset' && document.getElementById('tr_cancel')) 
                        document.getElementById('tr_cancel').style.display = display;
                    //					document.getElementById(show_select)[0].text='{PLEASE_SELECT}';
                
                }
            }
            //			else
            //			{
            //				disable_submit_button();
            //				document.login.submit();
            //			}
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqSendSettings(handset, country, service_id, mobile_number, session){
    sndurl = 'get_send_settings.php?handset=' + handset + '&country=' + country + '&service_id=' + service_id + '&mobile_number=' + mobile_number;
    session_val = session;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSendSettings; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqSendSettings2(handset_id, handset, country, service_id, mobile_number, session){
    sndurl = 'get_send_settings.php?handset_id=' + handset_id + '&handset=' + handset + '&country=' + country + '&service_id=' + service_id + '&mobile_number=' + mobile_number;
    session_val = session;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSendSettings; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing login response
function handleResponseSendSettings(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                if (response.indexOf('Error') != -1) {
                    enable_submit_button();
                    document.getElementById("error").innerHTML = response;
                }
                else {
                    //enable_submit_button();
                    document.getElementById("tr_" + show_select).style.display = display;
                    document.getElementById("output").innerHTML = response;
                }
            }
            //			else
            //			{
            //				disable_submit_button();
            //				document.login.submit();
            //			}
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqGetPlayCheckSearch(account_type, value, related_product, session){
    sndurl = '/play_check_search.php?account_type=' + account_type + '&value=' + value + '&related_product=' + related_product;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponsePlayCheckSearch; //ensures the response is handled by the correct function
    http.send(null);
}

// function parsing login response
function handleResponsePlayCheckSearch(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                document.getElementById('waitimage').style.display = "none";
                if (response.indexOf('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("span_error").innerHTML = response; //Fill in response				
                }
                else {
                    document.getElementById("span_content").innerHTML = response;
                    //disable_submit_button();
                    //document.login.submit();
                }
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

var list = '';
var DeleteType = '';
///---/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--\\\
// registering station
function sndReqDeleteEntity(customer_list, member_list, delete_type, session){
    sndurl = 'get_bulk_delete_entity.php?customer_list=' + customer_list + '&member_list=' + member_list;
    //	alert(sndurl);
    DeleteType = delete_type;
    if (session != '') 
        sndurl += "&" + session;
    http_bulk.open('GET', sndurl); //sends request
    http_bulk.onreadystatechange = handleResponseDeleteEntity; //ensures the response is handled by the correct function
    http_bulk.send(null);
}

// handling response
function handleResponseDeleteEntity(){
    try {
        if ((http_bulk.readyState == 4) && (http_bulk.status == 200)) {
			http_session_error(http);
            var response = http_bulk.responseText;
            //alert(response);
            if (response.search('error') == -1) {
                DisableInput("loader_gif");
                setTimeout('sndReqDeleteEntityStatus("' + response + '")', 3000);
            }
            else {
                document.getElementById("error1").innerHTML = response; //Fill in response	
                document.getElementById("loader_gif").style.display = "none";
                //enable_submit_button();
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqDeleteEntityStatus(guid){
    sndurl = 'get_bulk_delete_entity_status.php?guid=' + guid + '&delete_type=' + DeleteType;
    //alert(sndurl);
    GUID = guid;
    //if(session != '') sndurl+="&"+session;
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponsDeleteEntityStatus; //ensures the response is handled by the correct function
    http.send(null);
}

// handling response
function handleResponsDeleteEntityStatus(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response.search('error') == -1 || response.search('bulk_result') != -1) {
                if (response != '') {
                    EnableInput();
                    document.getElementById("loader_gif").style.display = "none";
                    document.getElementById("button1").style.display = "none";
                    document.getElementById("button2").style.display = "block";
                    document.getElementById("delete_result").innerHTML = response;
                    //document.agent_form.submit();
                }
                else 
                    setTimeout('sndReqDeleteEntityStatus(GUID)', 3000);
            }
            else {
                EnableInput();
                document.getElementById("error1").innerHTML = response; //Fill in response
                document.getElementById("loader_gif").style.display = "none";
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqSetFinancialStatus(type, id, status, session){
    sndurl = '/get_financial_status.php?type=' + type + '&id=' + id + '&status=' + status;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseFinancialStatus; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseFinancialStatus(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                if (response.search('error') != -1) {
                    enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('delete_result').innerHTML = response;
                    document.getElementById("button1").style.display = "none";
                    document.getElementById("button2").style.display = "block";
                }
            }
            /*			else
             {
             disable_submit_button();
             document.agent_form.submit();
             }*/
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqViewFinancialWindow(type, id, session){
    sndurl = 'get_financial_window.php?type=' + type + '&id=' + id;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseFinancialWindow; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqViewCurrencyWindow(member_id, login_name, company_name, payment_type, start_date, end_date, session){
    sndurl = '/get_currency_window.php?member_id=' + member_id + '&login_name=' + login_name + '&company_name=' + company_name + '&payment_type=' + payment_type + '&start_date=' + start_date + '&end_date=' + end_date;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    if (document.getElementById('window_result')) 
        http.onreadystatechange = handleResponseFinancialWindow; //ensures the response is handled by the correct function
    else 
        http.onreadystatechange = handleResponseEarningReport; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseFinancialWindow(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response) {
                if (document.getElementById("loader_gif")) {
                    document.getElementById("loader_gif").style.display = "none";
                }
                
                if (document.getElementById("loader_gif1")) {
                    document.getElementById("loader_gif1").style.display = "none";
                }
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('window_result').innerHTML = response;
                }
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqSendFinancialReceipt(transactionid, customer_name, comments, sentbyemail, receiptemail, allow_store_data, session){
    sndurl = '/send_financial_receipt.php?transactionid=' + transactionid + '&customer_name=' + customer_name + '&comments=' + comments + '&sentbyemail=' + sentbyemail + '&receiptemail=' + receiptemail + '&allow_store_data=' + allow_store_data;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSendFinancialReceipt; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqUpdateFinancialReceipt(transactionid, comments, session){
    sndurl = '/update_financial_receipt.php?transactionid=' + transactionid + '&comments=' + comments;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateFinancialReceipt; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseUpdateFinancialReceipt(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif2").style.display = "none";
                document.getElementById("waitimage").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error2").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById("error2").innerHTML = "";
                    closeWin();
                }
            }
        }
        else {
            try {
                document.getElementById("loader_gif2").style.display = "block";
                document.getElementById("waitimage").style.display = "block";
            } 
            catch (e) {
                alert("4 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function handleResponseSendFinancialReceipt(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //	alert(response);
            if (response) {
                document.getElementById("loader_gif1").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById("error1").innerHTML = "";
                    window.print();
                    //closeWin();
                }
            }
        }
        else {
            try {
                document.getElementById("loader_gif1").style.display = "block";
            } 
            catch (e) {
                alert("5 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqGetFinancialReceipt(transactionid, session){
    sndurl = '/get_financial_receipt.php?transactionid=' + transactionid;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetFinancialReceipt; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseGetFinancialReceipt(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response) {
                if (document.getElementById("waitimage")) {
                    document.getElementById("waitimage").style.display = 'none';
                }
                document.getElementById("loader_gif1").style.display = "none";
                document.getElementById("window_result").innerHTML = response;
				check_scale();
            }
        }
        else {
            try {
                document.getElementById("loader_gif1").style.display = "block";
                document.getElementById("loader_gif1").style.left = "200px";
                document.getElementById("loader_gif1").style.top = "150px";
                document.getElementById("loader_gif1").style.position = "relative";
                document.getElementById("loader_gif1").style.zIndex = "10";
            } 
            catch (e) {
                alert("6 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

var prog_status = true;
function sndReqSetEntityProductStatus(login, memberid, status, product, session){
    
	/*if (product == 'PrimaryCHABalance' && status < 0) {
		document.getElementById("error").innerHTML = '';
		return false;
	}*/
	
	sndurl = '/set_product_status.php?login=' + login + '&memberid=' + memberid + '&status=' + status + '&product=' + product;
    if (session != '') 
        sndurl += '&' + session;
    prog_status = status;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSetProgressiveStatus; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseSetProgressiveStatus(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //			alert(response);
            if (response) {
                if (prog_status == true) 
                    document.getElementById("loader_gif").style.display = "none";
                else 
                    if (document.getElementById("loader_gif1")) document.getElementById("loader_gif1").style.display = "block";
						else document.getElementById("loader_gif").style.display = "block";
                
                if (response.search('error') != -1) {
                    enable_submit_button();
                    document.getElementById("error").innerHTML = response; //Fill in response
                    if (document.getElementById("loader_gif1")) document.getElementById("loader_gif1").style.display = "none";
						else document.getElementById("loader_gif").style.display = "none";
                    if (document.getElementById("pcha_amount")) {
						document.getElementById("pcha_amount").style.borderColor = "rgb(204, 0, 0)";
					}
					
					closeWin();
                }
                else {
                    document.getElementById("error").innerHTML = "";
                    disable_submit_button();
                    document.agent_form.submit();
                    closeWin();
                }
            }
        }
        else {
            try {
                if (prog_status == true) 
                    document.getElementById("loader_gif").style.display = "block";
                else 
                    if (document.getElementById("loader_gif1")) document.getElementById("loader_gif1").style.display = "block";
						else document.getElementById("loader_gif").style.display = "block";
            } 
            catch (e) {
                alert("7 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

var red_link = '';
function sndReqUpdateSessParam(param, value, redirect_link, session){
    sndurl = '/set_sess_param.php?param=' + param + '&value=' + value;
    if (session != '') 
        sndurl += '&' + session;
    red_link = redirect_link;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateSessParam; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseUpdateSessParam(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //			alert(response);
            if (red_link != '') 
                location.href = red_link;
        }
        else {
            try {
            } 
            catch (e) {
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqViewGamePlayWindow(start_date, end_date, select_list, summary_level1, name, session){
    sndurl = '/get_prog_game_play.php?start_date=' + start_date + '&end_date=' + end_date + '&select_list=' + select_list + '&summary_level1=' + summary_level1 + '&name=' + name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseViewGamePlayWindow; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqViewGamePlayWindowGeneric(start_date, end_date, select_list, summary_level1, name, session) {
    var params = '' + 
            'EntityList_XML-' + select_list + '$$' + 
            'EntityType-1' + '$$' +
            'CustomerType-' + '$$' +
            'IncludeTestMembers-false' + '$$' +
            'IncludeRemovedEntities-true' + '$$' + 
            'SummaryCurrencyId-' + '$$' +
            'AccountNo-' + '$$' +
            'GroupBy-' + summary_level1;
    sndurl = '/get_generic_report.php?report_name=ProgressiveContributionFeeReport&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&name=' + name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseViewGamePlayWindow; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseViewGamePlayWindow(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                document.getElementById("waitimage").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('window_result').innerHTML = response;
                }
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}
function handleResponseViewGamePlayWindowInput(httpObj){
    try {
        if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
			http_session_error(http);
            var response = httpObj.responseText;
            if (response) {
                //alert(response);
                document.getElementById("loader_gif").style.display = "none";
                //document.getElementById("waitimage").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('window_result').innerHTML = response;
                }
            }
        }
        else {
            display_loading_gif();
        }
    }
    catch (e) {
    }
    finally {
    }
}

function sndReqUpdateProgressiveWins(winid, comment, paid, payment_date, session){
    sndurl = '/update_progressive_wins.php?winid=' + winid + '&comment=' + comment + '&paid=' + paid + '&payment_date=' + payment_date;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateProgressiveWins; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseUpdateProgressiveWins(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    closeWin();
                    document.getElementById('payment_date').value = '';
                    document.getElementById('comment').value = '';
                    document.getElementById('winid').value = '';
                    document.getElementById('paid').checked = false;
                }
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqViewCommissionWindow(start_date, end_date, session_member_id, session_login_id, select_list, currencyid, timezonetype, IsParentCommission, IsShowProgressive, session, commission_type_id, entity_list_xml){
    
	if (!commission_type_id) {
		var commission_type_id = '';
	}
	
	if (!entity_list_xml) {
		var entity_list_xml = '';
	}
	
	sndurl = '/get_commission_calculation.php?start_date=' + start_date + '&end_date=' + end_date + '&session_member_id=' + session_member_id + '&session_login_id=' + session_login_id + '&commission_type_id=' + commission_type_id + '&entityListXML=' + entity_list_xml + '&select_list=' + select_list + '&currencyid=' + currencyid + '&timezonetype=' + timezonetype + '&IsParentCommission=' + IsParentCommission + '&IsShowProgressive=' + IsShowProgressive;
    
	if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    
	http.open('GET', sndurl); //sends request
    
	http.onreadystatechange = handleResponseViewCommissionWindow; //ensures the response is handled by the correct function
    
	http.send(null);
}

function sndReqViewPokerTournamentsByPlayerWindow(startdate, enddate, memberid, currencyid, CurrencyRateTypeId, EntityList_XML, EntityTypeId, SearchType, PokerTournamentTypeId, PokerTournamentHostTypeId, IsOnlyGuaranteedPrizeAmount, CustomerTypeId, SessionLoginId, TournamentId, session){
    AccountNumberPart = ''
    params = /*'SessionLoginId-' + SessionLoginId + '$$' + */'CustomerTypeId-' + CustomerTypeId + '$$' + 'CurrencyId-' + currencyid + '$$' + 'CurrencyRateTypeId-' + CurrencyRateTypeId + '$$' + 'EntityList_XML-' + EntityList_XML + '$$' + 'AccountNumberPart-' + AccountNumberPart + '$$' + 'EntityTypeId-' + EntityTypeId + '$$' + 'SearchType-' + SearchType + '$$' + 'PokerTournamentTypeId-' + PokerTournamentTypeId + '$$' + 'PokerTournamentHostTypeId-' + PokerTournamentHostTypeId + '$$' + 'IsOnlyGuaranteedPrizeAmount-' + IsOnlyGuaranteedPrizeAmount + '$$' + 'TournamentId-' + TournamentId;
    var free_text = '';
    var chart_name = '';
    sndurl = '/get_generic_report.php?report_name=PokerPlayerTournamentReport&start_date=' + startdate + '&end_date=' + enddate + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseViewPokerTournamentsByPlayerWindow; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqViewPokerSettlementReportDetailedWindow(startdate, enddate, memberid, CurrencyRateTypeId,  session){
    AccountNumberPart = ''
    params = 'CurrencyRateTypeId-' + CurrencyRateTypeId + '$$' + 'MemberId-' + memberid + '$$' + 'Top-' + 500;;
    var free_text = '';
    var chart_name = '';
    sndurl = '/get_generic_report.php?report_name=PokerSettlementReportDetailed&start_date=' + startdate + '&end_date=' + enddate + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseViewPokerTournamentsByPlayerWindow; //ensures the response is handled by the correct function
    http.send(null);
}

function sndReqViewPokerSettlementReportWindow(startdate, enddate, memberid, CurrencyRateTypeId,  session){
    
    AccountNumberPart = ''
    params = 'CurrencyRateTypeId-' + CurrencyRateTypeId + '$$' + 'MemberId-' + memberid + '$$' + 'Top-' + 500;
    var free_text = '';
    var chart_name = '';
    sndurl = '/get_generic_report.php?report_name=PokerSettlementReport&start_date=' + startdate + '&end_date=' + enddate + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseViewPokerTournamentsByPlayerWindow; //ensures the response is handled by the correct function
    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseViewPokerTournamentsByPlayerWindow(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (document.getElementById("loader_gif")) {
                    document.getElementById("loader_gif").style.display = "none";
                }
                if (document.getElementById("loader_gif1")) {
                    document.getElementById("loader_gif1").style.display = "none";
                }
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('window_result').innerHTML = response;
                }
            }
        }
        else {
            if (document.getElementById("loader_gif")) {
                document.getElementById("loader_gif").style.display = "block";
            }
            if (document.getElementById("loader_gif1")) {
                document.getElementById("loader_gif1").style.display = "block";
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

/**
* For Detailed Casino Earning Report by Location 
*
* @return
*/
function sndReqDCERL(startdate, enddate, LocationId, name, repName, session, isExcel, isCasino) {
    AccountNumberPart = ''
    rowsToShow = '500';
    params = /*'SessionLoginId-' + SessionLoginId + '$$' + */'LocationId-' + LocationId + '$$' + 'Location-' + name + '$$' + 'Top-' + rowsToShow;
    var free_text = '';
    var chart_name = '';
    sndurl = '/get_generic_report.php?report_name='+repName+'&start_date=' + startdate + '&end_date=' + enddate + '&params=' + params + '&free_text=' + free_text + '&chart_name=' + chart_name;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    if (!isExcel) {
        http.onreadystatechange = handleResponseDCERL; //ensures the response is handled by the correct function
    } else {
        http.onreadystatechange = function() {
            handleResponseDCERLExcel(isCasino); //ensures the response is handled by the correct function
        }
    }

    http.send(null);
}

/// ----------------------------------------------------------\\\
// this function is handling response for all functions that are related to node addition / editing.
function handleResponseDCERL(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif1").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("cont1").innerHTML = '<div id="error1">' + response + '</div>'; //Fill in response
                }
                else {
                    document.getElementById('cont1').innerHTML = '<div id="window_result" style="padding:10px;">' + response + '</div>';
                }
            }
        }
        else {
            try {
                document.getElementById("loader_gif1").style.display = "block";
            } 
            catch (e) {
                alert("8 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function handleResponseDCERLExcel(isCasino){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                //document.getElementById("loader_gif1").style.display = "none";
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                else {
                    //debugger;
                    if (isCasino) {
                        submit_xml_export('CasinoTotalEarningReportLocationDetailed0,CasinoTotalEarningReportLocationDetailed1');
                    } else {
                        submit_xml_export('PokerEarningReportLocationDetailed0,PokerEarningReportLocationDetailed1');
                    }

                    document.getElementById("waitimage").style.display = 'none'; //Fill in response

                }
            }
        }
        else {
           
        }
    }
    catch (e) {
    }
    finally {
    }
}

function handleResponseViewCommissionWindow(){
    try {
        
		if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            if (response) {
                if (document.getElementById("loader_gif1")) {
					document.getElementById("loader_gif1").style.display = "none";
				}
				else if (document.getElementById("loader_gif")) {
					document.getElementById("loader_gif").style.display = "none";
				}
				
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById('window_result').innerHTML = response;
                    document.getElementById('window_result').style.position = 'relative';
                    document.getElementById('window_result').style.zIndex = 999;
                }
            }
        }
        else {
            try {
                if (document.getElementById("loader_gif1")) {
					document.getElementById("loader_gif1").style.display = "block";
				}
				else if (document.getElementById("loader_gif")) {
					document.getElementById("loader_gif").style.display = "block";
				}
            } 
            catch (e) {
                alert("9 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

/// ----------------------------------------------------------\\\
// function updating agent
function sndReqUpdateCommission(memberid, commission_value, commission_type, rolling, session){
	
    sndurl = '/update_commission.php?memberid=' + memberid + '&commission_value=' + commission_value + '&commission_type=' + commission_type + '&rolling=' + rolling;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateCommission; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseUpdateCommission(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                else if(response.search('comission_fault') != -1){
                    disable_submit_button(); 
                    document.getElementById('wind2_text').innerHTML=response;
                    document.getElementById('wind2_button_ok').onclick = function() {
                        closeWin();
                        if(document.getElementById("block_1"))
                            document.getElementById("block_1").style.display='block';
                        if(document.getElementById("notification_block"))
                            document.getElementById("notification_block").style.display='none';
                        document.getElementById('based_on_netcash').disabled ?
                            set_focus(document.getElementById('based_on_netwin')) : 
                            set_focus(document.getElementById('based_on_netcash'));
                        enable_submit_button();
                        document.getElementById('wind2_button_cancel').style.display=''
                    };
                    
                    document.getElementById('wind2_button_cancel').style.display='none'
                    
                    openWin('wind2','cont2',-250,100,400,250);
                    if (document.getElementById('loader_gif')) {
                    document.getElementById('loader_gif').style.display = "none";
                    }

                    if (document.getElementById('loader_gif1')) {
                        document.getElementById('loader_gif1').style.display = "none";
                    }
                    return false;
                }
                else {
					if (response == 'admin') {
						location.href = '/oldocadmin/head_office_list.php';
					}
					else {
						location.href = '/agents_list.php';
					}
                }
                document.getElementById("loader_gif").style.display = "none";
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}


function sndReqGetRate(currency, acc_currency_id, related_product, session){
    sndurl = 'getRate.php?currency=' + currency + '&acc_currency_id=' + acc_currency_id + '&related_product=' + related_product;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetRate; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseGetRate(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('error') != -1) {
                    //enable_submit_button();
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
                //				else
                //				{
                //					location.href='agents_list.php';
                //				}	
                document.getElementById("loader_gif").style.display = "none";
            }
        }
        else {
            display_loading_gif();
        }
    } 
    catch (e) {
    }
    finally {
    }
}

/// ----------------------------------------------------------\\\
// function for reports
function sndReqPrintReport(reports, session){
    sndurl = "/print_report.php";
    if (session != '') 
        sndurl += '?' + session;
    document.getElementById("file_names").value = reports;
    document.getElementById("xml_export_form").target = '_blank';
    document.getElementById("xml_export_form").action = sndurl;
    document.getElementById("xml_export_form").submit();
    //window.open(sndurl,'print_window');
}

//Reconc. window

function sndReqGetReconciliation(MemberId, ReconciliationId, EntityName, PeriodName, OutstandingBalance, CurrencyName, CurrencyId, session){
    sndurl = '/get_reconciliation.php?MemberId=' + MemberId + '&ReconciliationId=' + ReconciliationId + '&EntityName=' + EntityName + '&PeriodName=' + PeriodName + '&OutstandingBalance=' + OutstandingBalance + '&CurrencyName=' + CurrencyName + '&CurrencyId=' + CurrencyId;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseGetReconciliation; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseGetReconciliation(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response) {
                document.getElementById("loader_gif").style.display = "none";
                document.getElementById("window_result").innerHTML = response;
            }
        }
        else {
            try {
                document.getElementById("loader_gif").style.display = "block";
            } 
            catch (e) {
                alert("10 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqSetReconciliation(MemberId, ReconciliationId, CurrencyId, amount, type, session){
    sndurl = '/set_reconciliation.php?MemberId=' + MemberId + '&ReconciliationId=' + ReconciliationId + '&CurrencyId=' + CurrencyId + '&amount=' + amount + '&type=' + type;
    if (session != '') 
        sndurl += '&' + session;
    //	alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseSetReconciliation; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseSetReconciliation(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            document.getElementById("loader_gif").style.display = "none";
            var response = http.responseText;
            //alert(response);
            if (response) {
                if (response.search('error') != -1) {
                    enable_submit_button();
                    document.getElementById("error1").innerHTML = response; //Fill in response
                }
                else {
                    document.getElementById("error1").innerHTML = "";
                    closeWin();
                    SubmitReport();
                }
            }
        }
        else {
            try {
                //document.getElementById("loader_gif").style.display = "block";
            } 
            catch (e) {
                alert("11 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}

function sndReqUpdateReconciliationStatus(ReconciliationId, Status, session){
    sndurl = '/update_reconciliation_status.php?ReconciliationId=' + ReconciliationId + '&Status=' + Status;
    if (session != '') 
        sndurl += '&' + session;
    //alert(sndurl);
    http.open('GET', sndurl); //sends request
    http.onreadystatechange = handleResponseUpdateReconciliationStatus; //ensures the response is handled by the correct function
    http.send(null);
}

function handleResponseUpdateReconciliationStatus(){
    try {
        if ((http.readyState == 4) && (http.status == 200)) {
			http_session_error(http);
            var response = http.responseText;
            //alert(response);
            if (response == '') 
                SubmitReport();
            else {
                document.getElementById("waitimage").style.display = "none";
                if (response.search('error') != -1) {
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
            }
        }
        else {
            try {
                document.getElementById("waitimage").style.display = "block";
            } 
            catch (e) {
                alert("12 display div undefined");
            }
        }
    } 
    catch (e) {
    }
    finally {
    }
}


//var httpExcel = createRequestObject();
function exportCustomerListToExcel(type, memberId, includeRemovedCustomers, email) {
    var httpExcel = createRequestObject();
    if (ValidateEmail(email)) {
        displayMessage(true);
        sndurl = '/customer_list_to_excel.php?type=' + type + '&memberId=' + memberId + '&includeRemovedCustomers=' + includeRemovedCustomers + '&email=' + email;
        if (session != '')
            sndurl += '&' + session;
        httpExcel.open('GET', sndurl, true); //sends request
        httpExcel.onreadystatechange = handleResponseExportCustomerListToExcel; //ensures the response is handled by the correct function
        httpExcel.send(null);
    }
    else {
        displayMessage(false);
    }
    /*sndurl = '/customer_list_to_excel.php?type=' + type + '&memberId=' + memberId + '&includeRemovedCustomers=' + includeRemovedCustomers;
    if (session != '')
        sndurl += '&' + session;
    httpExcel.open('GET', sndurl, true); //sends request
    httpExcel.onreadystatechange = handleResponseExportCustomerListToExcel; //ensures the response is handled by the correct function
    httpExcel.send(null);*/
}

function handleResponseExportCustomerListToExcel(){
    /*try {
        if ((httpExcel.readyState == 4) && (httpExcel.status == 200)) {
			http_session_error(http);
            var response = httpExcel.responseText;
            //alert(response);
            document.getElementById("loader_gif").style.display = "none";
            if (response.search('error') != -1) {
                if (document.getElementById('st_error')) {
                    document.getElementById("st_error").innerHTML = response;
                    document.getElementById("st_error").parentNode.style.display = 'table-row';

                }
                else if (document.getElementById('st_error')) {
                    document.getElementById("pl_error").innerHTML = response;
                    document.getElementById("pl_error").parentNode.style.display = 'table-row';
                }
                else {
                    document.getElementById("error").innerHTML = response; //Fill in response
                }
            }
            else {
                window.open(response, '_blank');
            }
        }
        else {
            try {
                document.getElementById("loader_gif").style.display = "block";
            }
            catch (e) {
                //alert("12 display div undefined");
            }
        }
    }
    catch (e) {
    }
    finally {
    }*/
}


function sndReqShowAgents(sign, elmId, page) {
    var httpList = createRequestObject();

    if (!page) {
        page = 1;
    }

    if (sign == null) {
        document.getElementById('agentsContainerTD' + elmId).innerHTML = '<div style="padding: 10px; text-align: center;"><img src="./images/ajax-loader_bar.gif" alt="Loading..." /></div>'

        sndurl = '/get_agents_for_list.php?memberId=' + elmId + '&page=' + page;

        //sends request
        httpList.open('GET', sndurl);

        //ensures the response is handled by the correct function
        httpList.onreadystatechange = function() {
            handleResponseShowAgents(httpList, elmId);
        };
        httpList.send(null);
    }
    else {
        if (sign.className == 'cmt_plus') {

            sign.className = 'cmt_minus';

            if (document.getElementById('agentsContainerTD' + elmId).innerHTML == 'Here will be Agent list') {
                document.getElementById('agentsContainerTD' + elmId).innerHTML = '<div style="padding: 10px; text-align: center;"><img src="./images/ajax-loader_bar.gif" alt="Loading..." /></div>'

                sndurl = '/get_agents_for_list.php?memberId=' + elmId + '&page=' + page;

                //sends request
                httpList.open('GET', sndurl);

                //ensures the response is handled by the correct function
                httpList.onreadystatechange = function() {
                    handleResponseShowAgents(httpList, elmId);
                };
                httpList.send(null);
            }
            document.getElementById('agentsContainer' + elmId).style.display = 'table-row';
        }
        else {
            sign.className = 'cmt_plus';
            document.getElementById('agentsContainer' + elmId).style.display = 'none';
        }
    }
}
function handleResponseShowAgents(httpList, elmId) {
    if ((httpList.readyState == 4) && (httpList.status == 200)) {
		http_session_error(http);
        var response = httpList.responseText;

        if (response.search('error') != -1) {
            document.getElementById("error").innerHTML = response; //Fill in response
        }
        else {
            document.getElementById('agentsContainerTD' + elmId).innerHTML = response;
        }
    }
}

function sndReqShowGamesByAccount(sign, start_date, end_date, params, account) {
    var httpReport = createRequestObject();
    if (sign == null) {
        document.getElementById('drillReportContainerTD' + account).innerHTML = '<div style="padding: 10px; text-align: center;"><img src="./images/ajax-loader_bar.gif" alt="Loading..." /></div>'

        sndurl = '/get_generic_report.php?report_name=CasinoGameProfitabilityReport&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&free_text=&chart_name=';

        //sends request
        httpReport.open('GET', sndurl);

        //ensures the response is handled by the correct function
        httpReport.onreadystatechange = function () {
            handleResponseShowGamesByAccount(httpReport, account);
        };
        httpReport.send(null);
    }
    else {
        if (sign.className == 'cmt_plus') {

            sign.className = 'cmt_minus';

            if (document.getElementById('drillReportContainerTD' + account).innerHTML == 'drill down report') {
                document.getElementById('drillReportContainerTD' + account).innerHTML = '<div style="padding: 10px; text-align: center;"><img src="./images/ajax-loader_bar.gif" alt="Loading..." /></div>';

                sndurl = '/get_generic_report.php?report_name=CasinoGameProfitabilityReport&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&free_text=&chart_name=';

                //sends request
                httpReport.open('GET', sndurl);

                //ensures the response is handled by the correct function
                httpReport.onreadystatechange = function () {
                    handleResponseShowGamesByAccount(httpReport, account);
                };
                httpReport.send(null);
            }
            document.getElementById('drillReportContainer' + account).style.display = 'table-row';
        }
        else {
            sign.className = 'cmt_plus';
            document.getElementById('drillReportContainer' + account).style.display = 'none';
        }
    }
}

function handleResponseShowGamesByAccount(httpReport, account) {
    if ((httpReport.readyState == 4) && (httpReport.status == 200)) {
		http_session_error(http);
        var response = httpReport.responseText;

        if (response.search('error') != -1) {
            document.getElementById("error").innerHTML = response; //Fill in response
        }
        else {
            document.getElementById('drillReportContainerTD' + account).innerHTML = response;
        }
    }
}

//====================================//
// Export Report to Excel call        //
//====================================//
function submitGenericExport(params) {
    var httpReportExcel = createRequestObject();
    
    var parameters = (typeof params) == 'string' ? eval('(' + params + ')') : params;

    //debugger;
    var today = new Date;
    today.setMinutes(today.getMinutes() + (today.getTimezoneOffset() * 1));
    
    parameters.createdDateUI = today.toLocaleDateString() + ' ' + ho + today.getHours() + ':' + min + today.getMinutes();
    
    if (ValidateEmail(parameters.email)) {
        displayMessage(true);
        sndurl = '/get_generic_excel.php?json=' + JSON.stringify(parameters);
        if (session != '')
            sndurl += '&' + session;
        httpReportExcel.open('GET', sndurl, true); //sends request
        httpReportExcel.onreadystatechange = handleResponseGenericExport; //ensures the response is handled by the correct function
        httpReportExcel.send(null);
    }
    else {
        displayMessage(false);
    }
}

function handleResponseGenericExport() {
    
}

function submitExport(report_name, start_date, end_date, params) {
    
    display_waitimage();
    
    var httpExcel = createRequestObject();
    
    var sndurl = '/get_generic_report.php?report_name=' + report_name + '&start_date=' + start_date + '&end_date=' + end_date + '&params=' + params + '&free_text=&chart_name=';
    
	//debugger;
	
	if (session != '') 
        sndurl += '&' + session;
    
    httpExcel.open('GET', sndurl); //sends request
    httpExcel.onreadystatechange = function() {
        handleResponseSubmitExport(httpExcel);
    }
    
    httpExcel.send(null);
}

function handleResponseSubmitExport(httpExcel) {
    if ((httpExcel.readyState == 4) && (httpExcel.status == 200)) {
		http_session_error(http);
        if (document.getElementById('waitimage')) {
            document.getElementById('waitimage').style.display = 'none';
        }
        
        var response = httpExcel.responseText;

        if (response.search('error') != -1) {
            document.getElementById("error").innerHTML = response; //Fill in response
        }
        else {
            submit_xml_export(response);
        }
    }
}

function showExportedReports() {
    if (document.getElementById('exportedReportsPopup')) {
        if (document.getElementById('exportedReportsPopup').style.display == 'none') {
            var x = document.getElementById('exportedReportsPopup').parentNode.offsetWidth - 12;
            
            document.getElementById('exportedReportsPopup').style.width = x + 'px';
            document.getElementById('exportedReportsPopup').style.display = '';
        }
        else {
            hideExportedReports();
        }
    }
}

function hideExportedReports() {
    if (document.getElementById('exportedReportsPopup')) {
        document.getElementById('exportedReportsPopup').style.display = 'none';
    }
}

function creditBalanceSort(elem, sort_type) 
{

	function transpositionRow(i,j) {
		try {
			temp = rows.item(i).outerHTML;
			rows.item(i).outerHTML = rows.item(j).outerHTML;
			rows.item(j).outerHTML = temp
		} catch (e) {
			table.moveRow(j,i) // ie
		}
	}
	
	function attachExpandedRow(i) {
		if (rows.item(i).innerHTML.search('plus') != -1 || rows.item(i).innerHTML.search('minus') != -1) {
			var acc_number = rows.item(i).getElementsByTagName('div')[0].innerHTML.replace(/(&nbsp;)+|\s+/g, '');
			var expanded_row = document.getElementById('row_' + acc_number + '_2');
			var pos_expanded_row = -1;
			for (var k = 1; k < rows_length; k++) {
				if (rows.item(k) == expanded_row) {
					pos_expanded_row = k;
					break;
				}
			}
			if (pos_expanded_row != -1 && pos_expanded_row != i+1) {
				try {
					table.moveRow(pos_expanded_row, i);
				} catch (e) { // mozilla
					table.insertRow(i+1);
					if (pos_expanded_row > i) {
						transpositionRow(i+1, pos_expanded_row+1);
						table.deleteRow(pos_expanded_row+1);
					} else {
						transpositionRow(i+1, pos_expanded_row);
						table.deleteRow(pos_expanded_row);
					}
				}
			}
		}
	}
	
	var is_server_inform = false;
	var arraw_element = document.getElementById("creditBalance_sort");
	if (sort_type == 'arraw') {
		if (arraw_element.style.visibility == 'hidden') {
			arraw_element.style.visibility = 'visible'
			sort_type = 'asc';
		} else if (arraw_element.getAttribute('src') == '/images/sort_d.gif') {
			sort_type = 'asc';
			arraw_element.setAttribute('src', '/images/sort_a.gif');
		} else if (arraw_element.getAttribute('src') == '/images/sort_a.gif') {
			sort_type = 'desc';
			arraw_element.setAttribute('src', '/images/sort_d.gif');
		}
		is_server_inform = true
	}else if (sort_type == 'desc') {
		arraw_element.style.visibility = 'visible'
		arraw_element.setAttribute('src', '/images/sort_d.gif');
	}else if (sort_type == 'asc') {
		arraw_element.style.visibility = 'visible'
		arraw_element.setAttribute('src', '/images/sort_a.gif');
	} else {
		return;
	}
	var tbody = elem.parentNode.parentNode.parentNode;
	var table = tbody.parentNode;
	// remove arraw pointer from others column
	var imgs = document.images;
	var imgs_length = imgs.length;
	for (var i = 0; i < imgs_length; i++) {
		if (imgs[i] != arraw_element 
				&& (imgs[i].src.search('images/sort_a.gif') != -1 || imgs[i].src.search('images/sort_d.gif') != -1)) {
			imgs[i].style.visibility = 'hidden';
		}
	}
	// find position of element
	var tr_element = elem.parentNode.parentNode;
	var tds = tr_element.getElementsByTagName('td');
	var tds_length = tds.length;
	var b_pos = 0; //position in <tr> creditBalance element
	for (var i = 0; i < tds_length; i++) {
		if (tds[i] == elem.parentNode) {
			b_pos = i;
			break;
		}
	}
	var rows = table.rows;
	var rows_length = rows.length;
	var temp = '';
	try {
		for (var i = 1; i < rows_length; i++) {
			if (rows[i].cells.length == 1) {
				if (rows[i].innerHTML.search('table') == -1) {
					table.deleteRow(i);
					creditBalanceSort(elem, sort_type);
				}
				continue;
			}
			for (var j = i + 1; j < rows_length; j++) {
				if (rows[j].cells.length == 1) {
					continue;
				}
				val_i = rows[i].cells[b_pos].getElementsByTagName('div')[0].innerHTML;
				val_i = Number(val_i.replace(/\D/g, ''));
				val_j = rows[j].cells[b_pos].getElementsByTagName('div')[0].innerHTML;
				val_j = Number(val_j.replace(/\D/g, ''));
				if (sort_type == 'desc') {
					if (val_j > val_i) {
						transpositionRow(i,j);
					}
				}
				if (sort_type == 'asc') {
					if (val_j < val_i) {
						transpositionRow(i,j);
					}
				}
			}
		}
	} catch (e) {
	}
	try {
		for (var i = 1; i < rows_length; i++) {
			attachExpandedRow(i);
		}
	} catch (e) {
	}
	if (is_server_inform) {
		var url =  '/get_list.php?balance_sort='+sort_type;
		if (window.location.href.search('stations_list') != -1) {
			url = url + '&type_list=stations_list';
		} else if (window.location.href.search('players_list') != -1) {
			url = url + '&type_list=players_list';
		}
		var req=false;
		try {
			req=new ActiveXObject('Msxml2.XMLHTTP');
		} catch (e) {
			try {
				req=new ActiveXObject('Microsoft.XMLHTTP');
			} catch (e) {
				if(window.XMLHttpRequest){
				   req=new XMLHttpRequest();
				}
			}
		}
		if (req){
		   req.onreadystatechange = function() {};
		   req.open("GET", url, true);
		   req.send(null);
		}
	}
}

function http_session_error(http) {
	if (/SESSIONEXPIRED/.test(http.responseText) || /LOGINISNOTLOGGEDIN/.test(http.responseText)) {
		setTimeout(function() {
			window.location.href = "/";
		}, 10000);
	}   
}
