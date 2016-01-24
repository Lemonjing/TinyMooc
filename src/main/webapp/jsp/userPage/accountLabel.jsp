<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/resource/jspf/commons.jspf" %>
 <%@ taglib prefix="sicd" uri="/sicd-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>标签</title>
<link rel="Shortcut Icon" href="<c:url value="/resource/pic/icon.ico" />" />
<script type="text/javascript" src="<c:url value="/resource/js/label.js"/>"></script>
</head>
<body class="flats-theme">

<jsp:include page="/jsp/include/head2.jsp"></jsp:include>


<section class="container clearfix" style="margin-top: 60px;">
  <div id="me" class="me clearfix">
    <div class="main">
      <div class="wrap">
      <div class="main-head">
  		<h2>帐户设置</h2>
		</div>


    <div class="mod">
  <div class="tabs clearfix">
  <ul>
    <li><a href="account.htm">个人资料</a></li>
    <li><a href="goAccountAvatar.htm">更新头像</a></li>
    <li><a href="goAccountPassword.htm">修改密码</a></li>
    <li class="on"><a href="queryLabel.htm?type=user">添加标签</a></li>
    
  </ul>
</div>  
    <div class="mod">
    	<div class="addLabels" style=" height:200px; width:400px;float:left;" align="left"> 
						<form action="editLabel.htm" method="post" id="labelForm">
							<div class="keywords">
                                当前标签编辑类型：<c:if test="${type=='course'}"><font color="red">课程</font></c:if>
                                <c:if test="${type=='user'}"><font color="red">用户</font></c:if>
                                <c:if test="${type=='team'}"><font color="red">小组</font></c:if>
								<sicd:label previousLabels="${previousLabels}" hotLabels="${labels}"/>
								<input type="hidden" value="${type}" name="type">
                                <input type="hidden" value="${courseId}" name="courseId">
                                <input type="hidden" value="${teamId}" name="teamId">
                                <%--${type}--%>
								<%--<input type="hidden" value="${tagType}" name="type">--%>
							</div>
							<br>
							<button  class="btn btn-success" type="submit" value="" id="checkl" >保存</button>
							
							<button class="btn" type="button" value="" id="cancelll">取消</button>
						</form>
					</div> 
  	</div>

</div>
</div>
    </div>
    <div class="side">

      <div class="avatar-mod clearfix">
        <a href="" class="avatar"><img src="<c:url value="${user.headImage.imageMid}"/>" /></a>
        <div class="infos">
          <div class="nickname"><a href="" title="${user.userName}">${user.userName}</a></div>
          <div class="icons">
           <a class="user-level user-level-6" title="努力升级吧!" href="" target="_blank">${level.lv}级</a>
            <a class="user-level user-level-6">${level.title}</a>
          </div>
        </div>
      </div>

      <div class="stats-mod">
          <ul class="user-stats clearfix">
            <li><a href=""><strong>${user.credit}</strong>学分</a></li>
            <li><a href=""><strong>${user.gold}</strong>金币</a></li>
          </ul>
      </div>

     <jsp:include page="/jsp/include/leftside.jsp"></jsp:include> 

    </div>
  </div>
</section>

<jsp:include page="/jsp/include/foot.jsp"></jsp:include>

</body>
</html>