<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>激活成功</title>
<link rel="Shortcut Icon" href="<c:url value="/resource/pic/icon.ico" />" />
<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.css"/>" media="screen">
<script type="text/javascript" src="<c:url value="/resource/bootstrap/js/jquery-1.8.3.min.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resource/css/components.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/css/site.css"/>">
<script type="text/javascript" src="<c:url value="/resource/js/register.js"/>"></script>
</head>
<body>

<jsp:include page="/jsp/include/head1.jsp"></jsp:include>

<section id="registersuc">
    <div class="register-suc">
    </div>

    <div class="register-suc">
        <h2><strong>${verify}</strong></h2>

    </div>
</section>

<div class="wrapper">
    <jsp:include page="/jsp/include/foot.jsp"></jsp:include>
</div>

</body></html>