/*Add validator methods*/
$.validator.addMethod("alpha", function(value, element) {
    return this.optional(element) || /^[a-z\s.]+$/i.test(value);
}, "This field contains invalid characters.");
$.validator.messages.digits = 'Please enter a valid number.';
	
function togglePasswordFields(el, showIfCheck){
	var condition = showIfCheck ? ":not(:checked)" : ":checked"; 
	if($(el).is(condition)){
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
		debug: false,
		errorElement:"span",
		rules : {
			confirmPassword : {
				equalTo : "#password"
			},
			commRate : {
				range : [1, 100]
			}
		},
		messages : {
			confirmPassword : {
				equalTo : "Passwords do not match."
			},
			commRate : {
				range: "Commrate must be 1-100 only."
			}
		}
	}
	$(form).validate(validationRules);
}

function initLoginFormValidation(form){
	var validationRules = {
		debug: false,
		errorElement:"span",
		rules : {
			username : {
				required : true,
			},
			password : {
				required : true,
			}
		},
		messages : {
		}
	}
	$(form).validate(validationRules);
}