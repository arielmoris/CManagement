function replace_spaces(field)
{
    var re = / /g;

    if( field )
    {
    field.value = field.value.replace(re, "");
    return (field.value);
    }
}
function reset_focus_gif(reset_arr)
{
	for(i=0;i<reset_arr.length;i++)
	{
		if(document.getElementById(reset_arr[i]))
			document.getElementById(reset_arr[i]).style.borderColor='#CCCCCC';
		if(document.getElementById(reset_arr[i]+'_gif_yes'))
			document.getElementById(reset_arr[i]+'_gif_yes').style.display='none';
		if(document.getElementById(reset_arr[i]+'_gif_no'))
			document.getElementById(reset_arr[i]+'_gif_no').style.display='none';
	}
}
function set_focus(field)
{
	if(field)
	{
	if(field.style)
		field.style.borderColor='#CC0000';
	if(document.getElementById(field.name+'_gif_no')) document.getElementById(field.name+'_gif_no').style.display='inline';
	if(document.getElementById(field.name+'_gif_yes')) document.getElementById(field.name+'_gif_yes').style.display='none';
	if((field.name!='phone_ext') && (field.name!='lock'))
		field.focus();
	}
}

function unset_focus(field)
{
	if(field)
	{
	if(field.style)
		field.style.borderColor='#CCCCCC';
	if(document.getElementById(field.name+'_gif_no')) document.getElementById(field.name+'_gif_no').style.display='none';
	//else alert(field.name);
	if(document.getElementById(field.name+'_gif_yes')) document.getElementById(field.name+'_gif_yes').style.display='inline';
	//else alert(field.name);
	}
}