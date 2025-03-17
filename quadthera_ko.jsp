<%@ page import="cknb.qrjoy.iqr.model.iqrModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires", 1L);

String lang = (String)request.getAttribute("lang");
String srno = (String)request.getAttribute("srno");

String reg_page = (String)request.getAttribute("reg_page");
reg_page = reg_page.substring(0, reg_page.lastIndexOf(".jsp"));

iqrModel model = (iqrModel)request.getAttribute("model"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에코디엠랩 정품인증</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> <!-- 추가 -->
<style>
* {
	list-style: none;
	margin: 0;
	padding: 0;
	border: none;
	text-decoration: none;
}

html {
	font-family: 'Nanum Gothic', '맑은 고딕', Arial, sans-serif;
	background: #e9e9e9;

}

div.srno {
	position: absolute;
    width: 80%;
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    background-color: transparent;
    top: 50vw;
    left: 15%;
    font-size: 0.8em;
    font-weight: 700;
    letter-spacing: 0;
    color: #000;
}


#content {
	width: 96%;
	margin: 0 auto;
	padding: 2%;
	border-top: 3px solid #000;
	background: rgba(255, 255, 255, 0.8);
}

#content .clear {
	clear: both;
	padding: 1% 5%;
	width: 90%;
	margin: 0 auto;
}

#content .clear span {
	color: #4b2f1a;
	font-size: 0.7em;
	font-weight: bold;
	clear: both;
	float: left;
	width: 20%;
	padding: 4% 1%;
	text-align: left;
}



#content .clear input[type=text] {
	border: none;
	font-size: 0.7em;
	color: #333;
	resize: none;
	padding: 3%;
	/* width: 72%; */ /* wg */
	clear: both;
	margin: 1% 0;
	-webkit-appearance: none;
	-moz-appearance: none;
}

input::placeholder {
  font-size: 0.7em;
  font-style: italic;
}

#numberCheckBtn {
	border-radius: 5px;
    background-color: #dedede;
    color: black;
    padding: 1% 1%;
}
/*버튼 눌리는 효과*/
#numberCheckBtn:active {
    box-shadow: inset -.3rem -.1rem 1.4rem  #FBFBFB, inset .3rem .4rem .8rem #BEC5D0; 
    cursor: pointer;
}

button {
    list-style: initial; /* 기본 스타일로 되돌림 */
    margin: initial;     /* 기본 스타일로 되돌림 */
    padding: initial;    /* 기본 스타일로 되돌림 */
    text-decoration: initial; /* 기본 스타일로 되돌림 */
}

#reg_number {
	width: 50%!important;
}
#reg_name {
	width: 50%;
}
#reg_email {
	width: 50%;
}
#purchase_at {
	width: 50%;
}

#content .clear input[type=number] {
	border: none;
	font-size: 0.7em;
	color: #333;
	resize: none;
	padding: 3%;
	width: 13%;
	clear: both;
	margin: 1% 0;
	-webkit-appearance: none;
	-moz-appearance: none;
}

#content .clear select[name=select_product] {
	border: none;
	font-size: 0.7em;
	color: #333;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	no-repeat: 95% 50%;
	margin: 1% 0;
	border: none;
	padding: 3%;
	width: 78%;
	height: 50%;
	clear: both;
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%;
	background-color: #fff;
}

#content .clear input[type=select_product] {
	border: none;
	font-size: 0.7em;
	color: #333;
	margin-left: 22%;
	resize: none;
	padding: 3%;
	width: 72%;
	clear: both;
}

#content .clear select[name=select_country] {
	border: none;
	font-size: 0.7em;
	color: #333;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	no-repeat: 95% 50%;
	margin: 1% 0;
	border: none;
	padding: 3%;
	width: 78%;
	height: 50%;
	clear: both;
	background-color: #fff;
}

#content .clear input[type=select_country] {
	border: none;
	font-size: 0.7em;
	color: #333;
	margin-left: 22%;
	resize: none;
	padding: 3%;
	width: 72%;
	clear: both;
}

#check_all {
	width: 90%;
	margin: 0 auto;
	padding: 5% 5% 7% 5%;
	border-top: 3px solid #000;
	background: rgba(255, 255, 255, 0.8);
}

#check_all input[type=checkbox] {
	border: 1px solid #ff0000;
	color: #333;
	resize: none;
	padding: 1% 2%;
	width: 30px;
	height: 1.0em;
	float: left;
	margin: 0 2% 2% 0;
}

#check_all label {
	font-size: 0.6em;
	display: block;
	text-align: left;
	float: left;
	padding: 0% 1%;
}

#check_all a {
	font-size: 0.7em;
	display: block;
	text-align: left;
	float: left;
	color: #ff7200;
}

.txt {
	clear: both;
	width: 90%;
	margin: 0 auto;
	padding: 3% 5% 7% 5%;
	background: rgba(255, 255, 255, 0.5);
	font-size:0.7em;
}

.txt span {
	width: 100%;
	display: block;
	text-align: left;
	line-height: 160%;
}

#send {
	display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(255, 255, 255, 0.8);
    gap: 0.5rem;
	width: 100%;
	margin: 0 auto;
	border: 0;
	text-align: center;	
	padding: 10px 0;
}

#send a {
	border-radius: 10px;
	padding: 3% 10%;
	background: rgba(235, 127, 40, 1);
	color: #fff;
	font-size: 0.8em;
}


</style>
<script type="text/javascript">
var category = "<%=model.getIqrcategory()%>";
var customerCd = "<%=model.getCustomer_cd()%>";

window.onload = function() {
	window.history.forward(0);
	document.getElementById("reg_name").focus();
}

function keyCode() {					// 숫자만 입력
	if(event.keyCode < 48 || event.keyCode > 57) {
		event.returnValue = false;
	}
}

function maxLengthCheck(object){		// 숫자 maxlength 체크
	if (object.value.length > object.maxLength) {
	    object.value = object.value.slice(0, object.maxLength);
	}    
}

function open1(){
	 if(document.getElementById("op").style.display == "none"){
		document.getElementById("op").style.display = '';	
	}else{
		document.getElementById("op").style.display = 'none';
	} 
}

function submit() {
	var yyyy = document.getElementById("purchase_yyyy").value;
	var mm = document.getElementById("purchase_mm").value;
	var dd = document.getElementById("purchase_dd").value;
	if ((yyyy !== null && yyyy !== "") || (mm !== null && mm !== "") || (dd !== null && dd !== "")) {
    	document.getElementById("purchase_date").value = frm.col7_yyyy.value + "-" + frm.col7_mm.value + "-" + frm.col7_dd.value;
	} 

	if(document.getElementById("reg_number").value == "") {
		alert("제품번호를 입력하세요.")
		document.getElementById("reg_number").focus();
	} else if(document.getElementById("numberDuplication").value == "unchecked") {
		alert("제품번호 중복 확인을 해주세요.");
		document.getElementById("reg_number").focus();
	} else if(document.getElementById("reg_name").value == "") {
		alert("이름을 입력하세요.")
		document.getElementById("reg_name").focus();
	} else if(document.getElementById("birth_yyyy").value == "") {
		alert("생년월일을 입력하세요.")
		document.getElementById("birth_yyyy").focus();
	} else if(document.getElementById("birth_mm").value == "") {
		alert("생년월일을 입력하세요.")
		document.getElementById("birth_mm").focus();
	} else if(document.getElementById("birth_dd").value == "") {
		alert("생년월일을 입력하세요.")
		document.getElementById("birth_dd").focus();
	} else if(document.getElementById("reg_tel1").value == "") {
		alert("연락처를 입력하세요.")
		document.getElementById("reg_tel1").focus();
	} else if(document.getElementById("reg_tel2").value == "") {
		alert("연락처를 입력하세요.")
		document.getElementById("reg_tel2").focus();
	} else if(document.getElementById("reg_tel3").value == "") {
		alert("연락처를 입력하세요.")
		document.getElementById("reg_tel3").focus();
	} else if(document.getElementById("check1").checked == false) {
		alert("개인정보 수집 동의에 체크하세요.")
	} else if(confirm("등록하시겠습니까?")) {
		document.getElementById("reg_tel").value = frm.col4_upper.value + "-" + frm.col4_middle.value + "-" + frm.col4_lower.value;
		document.getElementById("reg_birth").value = frm.col3_yyyy.value + "-" + frm.col3_mm.value + "-" + frm.col3_dd.value;
		frm.submit();
	}
}

function cancel() {
	if(confirm("취소하시겠습니까?")) {
		history.back();
	}
}

function checkNumber() {
	var productNumber = document.getElementById("reg_number").value;
	var numberDuplicationElement = document.getElementById("numberDuplication");
	 if (productNumber === "") {
	 	alert("제품번호를 입력하세요.");
	 	return;
	 }

	$.ajax({
		url: './checkColumn.asp',
		type: 'POST',
		data: { columnName: 'col1', colValue: productNumber, iqrcategory: category, customer_cd: customerCd },
		//crossDomain: true,
		success: function(response) {
			console.log(response);
			if (response === "true") {
				alert("이미 등록된 제품번호입니다.");
				numberDuplicationElement.value = "unchecked";
				
			} else {
				alert("등록 가능한 제품번호입니다.");
				numberDuplicationElement.value = "checked";
			}
		},
		error: function() {
			alert("서버 오류가 발생했습니다. 나중에 다시 시도해주세요.");
		}
	});
	
}
</script>
</head>
<body style="padding:0px;margin:0px;">
<div style="width:100%; text-align:center; clear:both;">
	<img style="width:100%;" src="https://d19cvjpkp3cfnf.cloudfront.net/landing/quadthera/img/quadthera_01.png"/>
</div>
<div style="width:100%; text-align:center; clear:both;">
	<img style="width:100%;" src="https://d19cvjpkp3cfnf.cloudfront.net/landing/quadthera/img/quadthera_09.png"/>
</div>
<form action="insertRegistration.asp" method="post" id="frm" name="frm">
	<input type="hidden" id="lang" name="col15" value="<%=lang%>">
	<input type="hidden" id="customer_cd" name="customer_cd" value="<%=model.getCustomer_cd()%>">
	<input type="hidden" id="iqrcategory" name="iqrcategory" value="<%=model.getIqrcategory()%>">
	<input type="hidden" id="idx" name="idx" value="<%=model.getNo()%>">
	<input type="hidden" id="ser_no" name="ser_no" value="<%=srno%>">
	<input type="hidden" id="reg_page" name="reg_page" value="<%=reg_page%>">
	<input type="hidden" id="reg_birth" name="col3">
	<input type="hidden" id="reg_tel" name="col4">
	<input type="hidden" id="purchase_date" name="col7">
	<input type="hidden" id="numberDuplication" name="numberDuplication" value="unchecked">

<div id="content">	
		<div class="clear">
			<span>제품번호&#42;</span>
			<input type="number" name="col1" id="reg_number" pattern="\d*" placeholder="기기에 있는 10~11자리 번호를 입력해주세요.">
			<!-- <a id="numberCheckBtn" onclick="checkNumber()">중복확인</a> -->
			<button type="button" id="numberCheckBtn" onclick="checkNumber()">중복확인</button>
		</div>
		<div class="clear">
			<span>고객명&#42;</span>
			<input type="text" name="col2" id="reg_name" maxlength="20" placeholder="이름을 입력해주세요.">
		</div>
		<div class="clear">
			<span>생년월일&#42;</span>
			<input type="number" name="col3_yyyy" id="birth_yyyy" maxlength="4" max="9999" placeholder="연도" style="width: 8%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
			<input type="number" name="col3_mm" id="birth_mm" maxlength="2" max="12" placeholder="월" style="width: 7%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
			<input type="number" name="col3_dd" id="birth_dd" maxlength="2" max="31" placeholder="일" style="width: 7%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">
		</div>
		<div class="clear">
			<span>연락처&#42;</span>
			<input type="number" name="col4_upper" id="reg_tel1" maxlength="3" placeholder="010" onkeypress="keyCode();" oninput="maxLengthCheck(this)">
			<input type="number" name="col4_middle" id="reg_tel2" maxlength="4" placeholder="1234" onkeypress="keyCode();" oninput="maxLengthCheck(this)">
			<input type="number" name="col4_lower" id="reg_tel3" maxlength="4" placeholder="5678" onkeypress="keyCode();" oninput="maxLengthCheck(this)">
		</div>
		
		<div class="clear">
			<span>이메일</span>
			<input type="text" name="col5" id="reg_email" maxlength="50" placeholder="이메일">
		</div>
		

		<div class="clear">
			<span>구매처</span>
			<input type="text" name="col6" id="purchase_at" placeholder="구매처">
		</div>
		
		<div class="clear">
			<span>구매시기</span>
			<input type="number" name="col7_yyyy" id="purchase_yyyy" maxlength="4" max="9999" placeholder="연도" style="width: 8%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
			<input type="number" name="col7_mm" id="purchase_mm" maxlength="2" max="12" placeholder="월" style="width: 7%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
			<input type="number" name="col7_dd" id="purchase_dd" maxlength="2" max="31" placeholder="일" style="width: 7%; IME-MODE:disabled;" 
			onkeypress="keyCode();" oninput="maxLengthCheck(this)">
		</div>
	</div>
</form>
<div id="check_all">
	<input type="checkbox" name="check1" id="check1" value="1">
	<label for="check1">개인정보 수집이용 및 제 3자 제공에 동의합니다.</label>
	<a href="javascript:void(0)" onclick="open1();">[ 전문보기 ]</a> 
</div>
<div class="txt" id="op" style="display:none;">
	<span>
		<strong>개인정보 수집/이용 동의 및 제 3자 제공에 대한 동의사항</strong><br /><br />
		&lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.<br />
		&lt;주식회사 씨케이앤비&gt;('히든태그') 은(는) 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br /><br />
		○ 본 방침은 2016년 2월 18일부터 시행됩니다.<br /><br />
		<strong>1. 개인정보의 처리 목적 &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</strong><br />
		가. 민원사무 처리<br />
		사실조사를 위한 연락·통지, 처리결과 통보 및 전달 등을 목적으로 개인정보를 처리합니다.<br />
		나. 재화 또는 서비스 제공<br />
		서비스 제공, 콘텐츠 제공, 맞춤 서비스 제공 등을 목적으로 개인정보를 처리합니다.<br />
		<br />
		<strong>2. 개인정보 파일 현황</strong><br />
		1. 개인정보 파일명: 주식회사 씨케이앤비 개인정보취급방침<br />
		- 개인정보 항목: 시공점, 시공점연락처, 시공일, 시공담당, 성명, 전화번호, 주소, 모델명, 차량번호, 차량색, 차량등록번호<br />
		- 수집방법: 생성정보 수집 툴을 통한 수집<br />
		- 보유기간: 3년<br />
		- 관련법령: 소비자의 불만 또는 분쟁처리에 관한 기록: 3년<br />
		<br />
		<strong>3. 개인정보의 처리 및 보유 기간</strong><br />
		① &lt;주식회사 씨케이앤비&gt;('히든태그')은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체인 이용자로부터 개인정보를 수집시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를   처리, 보유합니다.<br />
		② &lt;주식회사 씨케이앤비&gt;('히든태그')은(는) 법령에 따른 개인정보를 수집시에 명시된 보유기간을 포함해 고객사인 ㈜에코디엠랩과의 계약이 철회될 때까지의 기간 동안 정보주체인 이용자로부터 동의 받은 개인정보를 처리, 보유합니다.<br />
		③ 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.<br />
		1.&lt;민원사무 처리&gt;<br />
		&lt;민원사무 처리&gt;와 관련한 개인정보는 수집, 이용에 관한 동의일로부터&lt;3년&gt;까지 위 이용목적을 위하여 보유, 이용됩니다.<br />
		- 관련법령: 소비자의 불만 또는 분쟁처리에 관한 기록: 3년<br />
		- 예외사유: (주)에코디엠랩과의 계약이 철회되기 전까지 수집된 개인정보의 처리, 보유가능<br />
		<br />
		<strong>4. 개인정보처리 위탁</strong><br />
		- 해당없음<br />
		<br />
		<strong>5. 정보주체의 권리, 의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.</strong><br />
		① 정보주체(이용자)는 &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br />
		1. 개인정보 열람요구<br />
		2. 오류 등이 있을 경우 정정 요구<br />
		3. 삭제요구<br />
		4. 처리정지 요구<br />
		② 제1항에 따른 권리 행사는 &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며&lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')은(는) 이에 대해 지체 없이 조치하겠습니다.<br />
		③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')은(는) 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br />
		④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br />
		<br />
		<strong>6. 처리하는 개인정보의 항목 작성</strong><br /> 
		① &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그')은(는) 다음의 개인정보 항목을 처리하고 있습니다.<br />
		1&lt;민원사무 처리&gt;<br />
		- 필수항목: 이름, 연락처, 이메일, 제품명, 국가, 구매처<br />
		- 선택항목: 구입일자, IQR넘버<br />
		<br />
		<strong>7. 개인정보의 파기&lt;주식회사 씨케이앤비&gt;('히든태그')은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.</strong><br />
		-파기절차이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br />
		-파기기한이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br />
		-파기방법<br />
		전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.<br />
		종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br />
		<br />
		<strong>8. 개인정보의 안전성 확보 조치 &lt;주식회사 씨케이앤비&gt;('히든태그')은(는) 개인정보보호법 제29조에 따라 다음과 같이안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</strong><br />
		1. 정기적인 자체 감사 실시<br />
		개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.<br />
		2. 개인정보 취급 직원의 최소화 및 교육<br />
		개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br />
		3. 접속기록의 보관 및 위변조 방지<br />
		개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.<br />
		4. 개인정보에 대한 접근 제한<br />
		개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br />
		<br />
		<strong>9. 개인정보 보호책임자 작성</strong><br />
		① &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그') 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br />
		▶ 개인정보 보호책임자 <br />
		성명: 김현태<br />
		직급: 이사<br />
		연락처: 02-453-8416, 이메일: partners@cknb.co.kr, 팩스: 02-453-8417<br />
		※ 개인정보 보호 담당부서로 연결됩니다.<br />
		▶ 개인정보 보호 담당부서<br />
		부서명: 개발 운영부<br />
		연락처: 02-453-8416, 이메일: partners@cknb.co.kr, 팩스: 02-453-8417<br />
		② 정보주체께서는 &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그') 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. &lt;주식회사 씨케이앤비&gt;('http://www.hiddentag.com/'이하 '히든태그') 은(는) 정보주체의문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.<br />
		<br />
		<strong>10. 개인정보 열람청구 ① 정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. &lt;주식회사 씨케이앤비&gt;(‘http://www.hiddentag.com'이하 '히든태그')은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.</strong><br />
		▶ 개인정보 열람청구 접수·처리 부서 <br />
		부서명: 서비스 사업부<br />
		연락처: 02-453-8416, 이메일: partners@cknb.co.kr, 팩스: 02-453-8417<br />
		② 정보주체께서는 제1항의 열람청구 접수․처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.<br />
		▶ 행정안전부 개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람등 요구 (본인확인을 위하여 아이핀(I-PIN)이 있어야 함)<br />
		<br />
		<strong>11. 개인정보 처리방침 변경 </strong><br />
		①이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br /><br /><br /><br /><br />
		</span>
</div>
<div id="send">
	<a href="javascript:void(0)" onclick="submit()">등록</a>
	<a href="javascript:void(0)" onclick="cancel()">취소</a>	
</div>
<script>	
    // 숫자 이외의 입력을 실시간으로 제한하는 코드
    document.getElementById('reg_number').addEventListener('keydown', function (e) {
	  console.log("타이핑중");
      // 현재 입력값의 길이를 가져옴
      let value = e.target.value;
      // 숫자와 제어 키(백스페이스, 화살표 등)를 허용
      if (e.key.match(/[^0-9]/) && !e.key.match(/Backspace|ArrowLeft|ArrowRight|ArrowUp|ArrowDown|Delete/)) {
        e.preventDefault();
      }
      
    });
</script>
</body>
</html>
