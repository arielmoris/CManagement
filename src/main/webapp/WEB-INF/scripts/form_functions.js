/*Add validator methods*/
$.validator.addMethod("alpha", function(value, element) {
    return this.optional(element) || /^[a-z\s.]+$/i.test(value);
}, "This field contains invalid characters.");
$.validator.messages.digits = 'Please enter a valid number.';
	
function togglePasswordFields(el){
	if($(el).is(":checked")){
		$("#passwordTR").hide();
		$("#confirmPasswordTR").hide();
		$("#password").val("").prop("disabled",true).removeClass("error");
		$("#confirmPassword").val("").prop("disabled",true).removeClass("error");
		$("span.error").remove();
	}else{
		$("#passwordTR").show();
		$("#confirmPasswordTR").show();
		$("#password").prop("disabled",false);
		$("#confirmPassword").prop("disabled",false);
	}
}

function initFormValidation(form){
	var validationRules = {
		debug: true,
		errorElement:"span",
		rules : {
			confirmPassword : {
				equalTo : "#password"
			}
		},
		messages : {
			confirmPassword : {
				equalTo : "Passwords do not match."
			}
		}
	}
	$(form).validate(validationRules);
}