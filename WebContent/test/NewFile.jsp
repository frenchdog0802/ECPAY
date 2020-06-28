<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	https://payment-stage.ecPay.com.tw/Cashier/AioCheckOut/V5
	aioCheckOutCVS:
	<form id="allPayAPIForm"
	action="https://payment-stage.ecPay.com.tw/Cashier/AioCheckOut/V5"
	method="post">
	
	<input type="hidden" name="NeedExtraPaidInfo" value="N"> 
	<input type="hidden" name="ReturnURL" value="http://211.23.128.214:5000">
	
	<input type="hidden" name="CheckMacValue"
	value="50BE3989953C1734E32DD18EB23698241E035F9CBCAC74371CCCF09E0E15BD61">
	
	<input type="hidden" name="StoreExpireDate" value="3">
	
	<input type="hidden" name="InvoiceItemPrice" value="50">

	<input type="hidden" name="InvoiceItemTaxType" value="1">
	<input type="hidden" name="CustomerPhone" value="0911429215">
	<input type="hidden" name="CustomerIdentifier" value="">
	<input type="hidden" name="CustomerID" value="123456">
	<input type="hidden" name="PaymentInfoURL" value="">
	<input type="hidden" name="ClientRedirectURL" value="">
	<input type="hidden" name="StoreID" value="">
	<input type="hidden" name="EncryptType" value="1">
	<input type="hidden" name="InvoiceItemName" value="%E6%B8%AC%E8%A9%A6">
	<input type="hidden" name="TaxType" value="1">
	<input type="hidden" name="IgnorePayment" value="">
	<input type="hidden" name="PaymentType" value="aio">
	<input type="hidden" name="ClearanceMark" value="">
	<input type="hidden" name="InvoiceItemCount" value="1">
	<input type="hidden" name="OrderResultURL" value="">
	<input type="hidden" name="PlatformID" value="">
	<input type="hidden" name="LoveCode" value="X123456">
	<input type="hidden" name="CustomerEmail" value="">
	<input type="hidden" name="ItemName" value="腳踏車100元">
	<input type="hidden" name="InvoiceMark" value="Y">
	<input type="hidden" name="ChoosePayment" value="Credit">
	<input type="hidden" name="MerchantID" value="2000132">
	<input type="hidden" name="InvType" value="07">
	<input type="hidden" name="CustomerName" value="Mark">
	<input type="hidden" name="TradeDesc" value="gogoBike">
	<input type="hidden" name="ClientBackURL" value="">
	<input type="hidden" name="InvoiceRemark" value="">
	<input type="hidden" name="CarruerNum" value="">
	<input type="hidden" name="Print" value="0">
	<input type="hidden" name="CustomField4" value="">
	<input type="hidden" name="Desc_4" value="">
	<input type="hidden" name="TotalAmount" value="50">
	<input type="hidden" name="CustomField3" value="">
	<input type="hidden" name="Desc_3" value="">
	<input type="hidden" name="DelayDay" value="1">
	<input type="hidden" name="CustomerAddr" value="%E5%8F%B0%E5%8C%97%E5%B8%82%E5%8D%97%E6%B8%AF%E5%8D%80%E4%B8%89%E9%87%8D%E8%B7%AF">
	<input type="hidden" name="CustomField2" value="">
	<input type="hidden" name="Desc_2" value="">
	<input type="hidden" name="MerchantTradeDate" value="2017/01/01 08:05:23">
	<input type="hidden" name="CustomField1" value="">
	<input type="hidden" name="Desc_1" value="">
	<input type="hidden" name="ChooseSubPayment" value="">
	<input type="hidden" name="InvoiceItemWord" value="%E5%80%8B">
	<input type="hidden" name="MerchantTradeNo" value="c6743326e0e54819a2e1">
	<input type="hidden" name="ItemURL" value="">
	<input type="hidden" name="RelateNumber" value="test201217test">
	<input type="hidden" name="Remark" value="">
	<input type="hidden" name="DeviceSource" value="">
	<input type="hidden" name="Donation" value="2">
	<input type="hidden" name="CarruerType" value="1">
	<script language="JavaScript">
		allPayAPIForm.submit()
	</script>
</form>


</body>
</html>