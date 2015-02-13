var ie5 =  (document.getElementById && document.all);
var ns6 = (!document.all && document.getElementById);
var timerID = null;
var active = 0;

function start(windowName, contentName){
	if(ie5 || ns6){
		dragWind = document.getElementById(windowName);
		dragCont = document.getElementById(contentName);
		y = coordsY-parseInt(dragWind.style.top);
		x = coordsX-parseInt(dragWind.style.left);
		dragWind.style.zIndex = start.zCount++;
		active=1;
	}
}

start.zCount=0;
function drag(e){
	if(ie5 || ns6){
		coordsY = ns6 ? e.clientY : event.clientY;
		coordsX = ns6 ? e.clientX : event.clientX;
		if(active){
			dragWind.style.top = (coordsY-y)+'px';
			dragWind.style.left = (coordsX-x)+'px';
		}
	}
}

function closeWin(){
	if(document.getElementById('wind1'))
		document.getElementById('wind1').style.visibility = "";
	
	if (document.getElementById('inner_cont')) {
		document.getElementById('inner_cont').style.display = "none";
	}	

    if (document.getElementById('container')) {
		document.getElementById('container').style.display = "none";
	}

	if(ie5 || ns6){
		dragWind.style.left= -3000+'px';
	}
}

function maxWin(winMaxWidth, winMaxHeight){
	if(ie5 || ns6){
		dragWind.style.width = winMaxWidth;
		dragWind.style.height = winMaxHeight;
		dragCont.style.width = ns6?winMaxWidth:winMaxWidth-6;
		dragCont.style.height = ns6?winMaxHeight-20:winMaxHeight-24;
	}
}

function minWin(winMinWidth, winMinHeight){
	if(ie5 || ns6){
		dragWind.style.width = winMinWidth;
		dragWind.style.height = winMinHeight;
		dragCont.style.width = ns6?winMinWidth:winMinWidth-6;
		dragCont.style.height = ns6?winMinHeight-20:winMinHeight-24;
	}
}

function openWin(windowName, contentName, topWin, leftWin, winMinWidth, winMinHeight, percent){
    document.getElementById('container').style.display = "";
    dragWind = document.getElementById(windowName);
		dragCont = document.getElementById(contentName);
    percent = percent != 1 ? 0 : 1;
	if (document.getElementById('inner_cont')) {
		document.getElementById('inner_cont').parentNode.style.position = 'fixed';
		
        if(percent){
            document.getElementById('inner_cont').style.width = '100%';
            document.getElementById('inner_cont').style.height = '100%';
            document.getElementById('inner_cont').parentNode.style.width = winMinWidth+'%';
            document.getElementById('inner_cont').parentNode.style.height = winMinWidth+'%';
            dragWind.style.overflowX = 'scroll';
            dragWind.style.background = 'white';
            dragWind.style.left = '0';
            document.getElementById('titlebar_span').style.position='fixed';
            document.getElementById('titlebar_span').style.width=winMinWidth+'%';
            document.getElementById('loader_gif1').style.position='absolute';
        
        }
        else{document.getElementById('inner_cont').parentNode.style.top = '50%';
		document.getElementById('inner_cont').parentNode.style.left = '50%';}
		document.getElementById('inner_cont').parentNode.style.marginLeft = percent ? Math.floor((100-winMinWidth) / 2) + '%' : '-' + Math.floor(winMinWidth / 2) + 'px';
		document.getElementById('inner_cont').parentNode.style.marginTop = percent ? Math.floor((100-winMinHeight) / 2) + '%' : '-' + Math.floor(winMinHeight / 2) + 'px';
        
        document.getElementById('inner_cont').style.display = "";
        document.getElementById('inner_cont').style.top = "0";
        document.getElementById('inner_cont').style.left = "0";
	}
    
	if(ie5 || ns6){
		
        
		dragWind.style.visibility = "visible";
		dragWind.style.top = topWin+'px';
		dragWind.style.left = leftWin+'px';
		dragWind.style.width = percent ? '100%' : winMinWidth+'px';
		dragWind.style.height = percent ? '100%' : winMinHeight+'px';
        
        
		dragCont.style.top = 18+'px';
		dragCont.style.left = 0+'px';
		dragCont.style.width = percent ? 'auto' :  (ns6?winMinWidth:winMinWidth-0)+'px';
		dragCont.style.height = percent ? 'auto' : (ns6?winMinHeight-20:winMinHeight-18)+'px';
		dragWind.style.zIndex = start.zCount++;
	}
}

function dragInit(){
	if(ie5 || ns6){
		imgs = document.getElementById("container").getElementsByTagName("IMG");
		for(var i=0; i<imgs.length;i++){
			imgs[i].style.cursor = (ie5)?"hand":"pointer";
			imgs[i].ondragstart = new Function("return false");
		}
		openWin('wind1','cont1',50,300,300,200);
	}
}

document.onmousemove = drag;
document.onmouseup = new Function("active=0");
//document.onselectstart = new Function("return false");


//Edit the counter/limiter value as your wish
var count = "400";   //Example: var count = "175";
function limiter(notes){
	var tex = notes.value;
	var len = tex.length;
	if(len > count){
	        tex = tex.substring(0,count);
	        notes.value =tex;
	        return false;
	}
}

function scaleWin()
{
	var wind_width=document.getElementById('winMinWidth').value;
	var wind_height=document.getElementById('winMinHeight').value;
	if(document.getElementById('titlebar_span'))
	{
		document.getElementById('titlebar_span').style.width=wind_width;
		document.getElementById('titlebar_span').style.position='absolute';
	}
	if(document.getElementById('inner_cont') && document.getElementById('scale_select'))
    {
    	document.getElementById('inner_cont').style.zoom=document.getElementById('scale_select').value+'%';
    	document.getElementById('inner_cont').style.width=wind_width*document.getElementById('scale_select').value/100+'px';
    	document.getElementById('inner_cont').style.height=wind_height*document.getElementById('scale_select').value/100+'px';
    }
}
function check_scale()
{				
	if (navigator.appName!="Microsoft Internet Explorer" && document.getElementById('scale_span'))
	{
		document.getElementById('scale_span').style.display='none';
	}
}
