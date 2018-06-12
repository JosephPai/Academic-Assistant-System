<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="MyBean" scope="page" class="Database.QueryUpdate"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	
    
    <dl class="leftmenu">
        

    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>教材/教改/教研管理
    </div>
    <%
    String teaid = session.getAttribute("account").toString();
    String sql1 = "SELECT textbook_id FROM textbook WHERE first_author_id = \'"+ teaid+"\'";
    ResultSet rs1 = MyBean.executeQuery(sql1);
    rs1.next();
    String id1 = rs1.getString(1);
    String sql2 = "SELECT teachReserch_id FROM teachreserch WHERE first_id = \'"+ teaid+"\'";
    ResultSet rs2 = MyBean.executeQuery(sql2);
    rs2.next();
    String id2 = rs1.getString(1);
    %>
    <ul class="menuson">
        <li><cite></cite><a href="TApply.jsp" target="rightFrame">填写申请</a><i></i></li>
        <li><cite></cite><a href="TApplyFund.jsp" target="rightFrame">填写经费信息</a><i></i></li>
        <li><cite></cite><a href="T1Detailedteacher.jsp?id=<%=id1%>" target="rightFrame">查看教材项目信息</a><i></i></li>
        <li><cite></cite><a href="T2Detailedteacher.jsp?id=<%=id2%>" target="rightFrame">查看教研/教改项目信息</a><i></i></li>
        
        </ul>     
    </dd> 
    
    
    </dd>   
    
    </dl>
</body>
</html>
