function cons(){         
    window.location.href = '/restream/console';
}
function addUser(){         
    window.location.href = '/restream/add';
}
function cancelAdd(){
    window.location.href = '/restream/home/0';
}
function ecancelAdd(ca){
    window.location.href = '/categories/view/'+ca;
}
function ipLogger(){
    window.location.href = '/restream/log';
}
function home(){  
    window.location.href = '/restream/home/0';
}
function memb(){       
    window.location.href = '/members';
}
function cancelmem(){    
    window.location.href = '/members';
}
function usage(){         
    window.location.href = '/usage';
}
function addCat(){         
    window.location.href = '/categories';
}
function addBal(){         
    window.location.href = '/balancers';
}
function cedit(){         
    window.location.href = '/sedit';
}
function resel(){         
    window.location.href = '/resellers';
}
function editCh(){
    window.location.href = '../../categories/view/0';
}	
function rest()
{
var agree=confirm("Are you sure you want to restart!");
if (agree){
   setTimeout("window.location=window.location", 5000);
   window.location.href = '/rest';	
return true ;
}else{
return false ;
}
}

function confirmSubmit(ch)
{
var agree=confirm("Are you sure you want to delete! "+ch);
if (agree)
return true ;
else
return false ;
}

function mSubmit(ch)
{
alert("Channel "+ch+" edited successfully!");
}

function mSubmits()
{
alert("Please restart!");
}

function ten() {
    var fus = document.getElementsByName('username');
	var fusf = document.getElementsByName('usernamef');
    var fpa = document.getElementsByName('password');
	var fpaf = document.getElementsByName('passwordf');
	var fca = document.getElementsByName('captcha');
	var enc = CryptoJS.AES.encrypt(fusf[0].value,fca[0].value+'k4',{ mode: CryptoJS.mode.CTR });
	var ens = CryptoJS.AES.encrypt(fpaf[0].value,fca[0].value+'k4',{ mode: CryptoJS.mode.CTR });
	fus[0].value = enc;
	fusf[0].value = '';
	fpa[0].value = ens;
	fpaf[0].value = '';
}
