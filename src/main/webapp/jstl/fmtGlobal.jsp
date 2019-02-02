<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- locale 임의 설정 --%>
<fmt:setLocale value="ko"/>

<%
	session.setAttribute("userId", "brown");
%>

<h2>fmt - bundle</h2>

<%-- msg, msg_en, msg_ja, msg_ko -> msg bundle --%>
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"/><br>
	<fmt:message key="visitor">
		<fmt:param value="${userId }"></fmt:param><br>
	</fmt:message>
</fmt:bundle>

<fmt:setLocale value="ja"/>
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<br>
	<fmt:message key="hello"/><br>
	<fmt:message key="visitor">
		<fmt:param value="${userId }"></fmt:param><br>
	</fmt:message>
</fmt:bundle>

<fmt:setLocale value="en"/>
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<br>
	<fmt:message key="hello"/><br>
	<fmt:message key="visitor">
		<fmt:param value="${userId }"></fmt:param><br>
	</fmt:message>
</fmt:bundle>


<h2>fmt - setBundle</h2>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg_en"/>
<fmt:message bundle="${msg_en }" key="hello"></fmt:message>
<fmt:message bundle="${msg_en }" key="visitor">
	<fmt:param value="${userId }"></fmt:param>
</fmt:message>

<br>
<fmt:setLocale value="ko"/>
<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg_en"/>
<fmt:message bundle="${msg_en }" key="hello"></fmt:message>
<fmt:message bundle="${msg_en }" key="visitor">
	<fmt:param value="${userId }"></fmt:param>
</fmt:message>

<br>
<fmt:setLocale value="ja"/>
<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg_en"/>
<fmt:message bundle="${msg_en }" key="hello"></fmt:message>
<fmt:message bundle="${msg_en }" key="visitor">
	<fmt:param value="${userId }"></fmt:param>
</fmt:message>


<br>
<br>
<br>

oa;si11djfksndfkj11asdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf joa;sidjfksndfkjasdflkjskdfjoiwerklsdjcmnzmxnvlksdjfoaieurfsldjksdkcjskldf jsdklfjiosjdf aksjdfkosjdflsdjf zskdjfoisdjfkzldjfksdjfoiefksldjf zsdjfoksdjfoksjdf sdjfoisdufiwueoriwuefklsd fjskdfj sdjfksdjf sjdf jksld fjksld fjiejfi jsdif ijsdijckxcjk zxj kfjdfioejf dkjfkzjdo fjos dfjosdf oskdjf ksdj foisdjrieirouqie rdif jzklsdjf lzkjd fjoiwejfksldfj ksdfjoasdkjf ksadjf klsdjf kdofj oskdjfokasjdfoksd fjsod fjosdkj foaserituaiwoerut osidf zokxjc vkxj vjksjdofiasreut oisdfj kzj dksfgj aosdkjf osakdjf osakdjf sokdjfaos keruoaskefgsadhvkjsdhvcsdouf sdf sdif usidofu oisaduf ioasjdf oisjdfio jsaoidj foisajdf oisjadf sjdfn jkasbdfu aisdufh ijsdh fjskdfh jskdhf kjsdhf jksadhfj sadhf jk<br><br>
</body>
</html>