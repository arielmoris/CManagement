/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function drawCredits(label) {
    
    if (!label) {
        label = 'credits';
    }

    var form = document.getElementById('deposit_form');

    if (form.AccountNumber.length) {
        for (i = 0; i < form.AccountNumber.length; i++) {
            if (form.AccountNumber[i].checked) {
                var account = form.AccountNumber[i].id;
            }

        }
    } else {
        account = form.AccountNumber.id;
    }

    account = account.split('_');

    var credits = false;

    if (account[2] != 'Poker') {
        credits = true;
    }

    var currency_to = account[3];
    var select_id = account[2].toLowerCase() + '_deposit_currency';
    var currency_from = document.getElementById(select_id).value;

    var rates = document.getElementById('rateFrom_' + currency_from + '|rateTo_' + currency_to).value.split('|');

    var output_amount = document.getElementById('deposit_amount').value;

    var credits_holder = document.getElementById('deposit_credits');
    
    var notification_block = document.getElementById('rounding_notification');
    
    if (GetCurrency(currency_from) === 'KRW') {
        notification_block.style.display = '';
        output_amount = Math.floor(output_amount / 10) * 10;
        rounded_amount = output_amount;
    }
    else {
        notification_block.style.display = 'none';
    }
    
    if (currency_from != currency_to) {
        output_amount = output_amount * rates[0];
    }

    if (credits) {
        output_amount = output_amount * rates[1];
    }
    else {
        label = GetCurrency(currency_to);
    }

    //debugger;

    if (output_amount > 0) {
		output_amount = output_amount.toString();
		if (output_amount.indexOf('.') == -1) {
			output_amount = output_amount + ".00";
		} else {
			output_amount = output_amount + "00";
		}
		credits_holder.innerHTML = output_amount.replace(/^(\d+\.\d{2})(\d*)$/, "$1 ") + label
    }
    else {
        credits_holder.innerHTML = '';
    }


    //debugger;


    return false;
}

function switchSelect(account) {

    account = account.id.split('_');

    var select_id = account[2].toLowerCase() + '_deposit_currency';

    var select = document.getElementById(select_id);
    //var select_container = select.parentNode;

    if (select.className != "current") {
        var container = document.getElementById("product_currencies");
        var current = container.getElementsByClassName('current')[0];
        current.style.display = 'none';
        current.className = '';
        select.className += 'current';
        select.style.display = '';
    }

    /*if (select_container.id == 'hidden_product_currency') {
        var container = document.getElementById('current_product_currency');
        var current_select = container.innerHTML;
        container.innerHTML = select_container.innerHTML;
        select_container.innerHTML = current_select;
    }*/

    drawCredits();
    //debugger;

    return false;
}

function set_action(player_type) {
    disable_submit_button();
    
    var session = '';
    //if (!document.cookie) {
    //   session='".session_name()."=".session_id()."';
    //}

    var form = document.getElementById('deposit_form');

    var reset_password = false;
    if (form.reset_password && form.reset_password.checked) {
        reset_password = true;
    }

    if (form.AccountNumber.length) {
        for (i = 0; i < form.AccountNumber.length; i++) {
            if (form.AccountNumber[i].checked) {
                var account = form.AccountNumber[i].id;
            }

        }
    } else {
        account = form.AccountNumber.id;
    }

    account = account.split('_');

    var deposit_currency = document.getElementById(account[2].toLowerCase() + '_deposit_currency').value;

    if (player_type == 'Station') {
        form.notify_print.value = true;
    }

    //debugger;

    sndReqDeposit(
        account[1],
        player_type,
        form.deposit_amount.value,
        form.notify_sms.value,
        form.notify_email.value,
        form.notify_print.value,
        reset_password,
        form.nick_name.value,
        form.last_transaction.value,
        form.first_name.value,
        form.last_name.value,
        deposit_currency,
        session);

}

function showNotification() {
    document.getElementById('block_1').style.display = 'none';
    document.getElementById('notification_block').style.display = 'block';
}

function set_focus(field) {
    field.style.border = "1px solid #ff0000";
}

function unset_focus(field) {
    document.getElementById("error").innerHTML = "";
    field.style.border = "1px solid #b2b2b2";
}

function switchAccounts(select) {
    if (select.options.length > 2) {
        var select_to = document.getElementById('transfer_to');
        var j = 0;
        select_to.options.length = 0;
        for (i = 0; i  < select.options.length; i++) {
            if (select.options[i].value != select.value) {
                select_to.options[j] = new Option(select.options[i].value, select.options[i].value, false, false);
                j++;
            }
        }
    }
    else {
        var form = document.getElementById('transfer_form');

        var index = (select.options.selectedIndex + 1) % 2;

        var container = document.getElementById('transfer_to');

        container.innerHTML = select.options[index].text;
        form.transfer_account_to.value = select.options[index].text;
    }
    //debugger;
}

function TransferCreditBalance(player_type){
	
    if (!player_type) {
        player_type = 'Station';
    }
    
    if (player_type == 'Station') {
        var notify_print = true;
    }

    var deposit_form = document.getElementById('deposit_form');

    var trans_id = deposit_form.last_transaction.value;
    var nick_name = deposit_form.nick_name.value;

    var form = document.getElementById('transfer_form');
    
    var defaultAccount = form.transfer_account_from.options[0].value;
    var fromAccount = form.transfer_account_from.value;
    var toAccount = form.transfer_account_to.value;

    var amount = document.getElementById('balance_' + fromAccount).value;
    if (amount == '0') {
        document.getElementById('error').innerHTML = form.error_balance.value;
        return false;
    }

    var session = '';
	
    sndReqTransferCreditBalance(
        fromAccount,
        toAccount,
        defaultAccount,
        trans_id,
        nick_name,
        notify_print,
        session
    );
        
	return false;
}

//TransferCreditBalance(fromAccount,toAccount,defaultAccount,trans_id,theform.nickname.value,theform.notify_print.value);