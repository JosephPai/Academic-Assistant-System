<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">系统设置</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">教材</a></li> 
    <li><a href="#tab2">教研/教改</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
    
    <ul class="seachform">
    
    
    <li><label>学院</label>  
    <div class="vocation">
    <select class="select3" name="xueyuan">
    <option value="01">经管学院</option>
    <option value="02">计通学院</option>
    <option value="03">冶金学院</option>
    </select>
    </div>
    </li>
    
    <li><label>专业</label>  
    <div class="vocation" name="zhuanye">
    <select class="select3" style="width:200px;">
    <option>计算机</option>
    <option>法学</option>
    </select>
    </div>
    </li>
    
    <li><label>学号</label><input name="" type="text" class="scinput" /></li>
    
    
    <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>教材名称</th>
        <th>第一作者工号</th>
        <th>申请时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
        //查看所有待立项的项目并输出
        String sql = "select textbook_id,textbook_name,first_author_id,apply_time from textbook WHERE status = 1";
        ResultSet rs = MyBean.executeQuery(sql);
        while(rs.next()){
        	out.println("<tr>");
        	out.println("<td>"+rs.getString(1)+"</td>");//编号
        	String srtpid = rs.getString(1);
        	//log("srtpid为："+srtpid);
        	out.println("<td>"+rs.getString(2)+"</td>");//教材名称
        	out.println("<td>"+rs.getString(3)+"</td>");//学生姓名
        	out.println("<td>"+rs.getString(4)+"</td>");//指导教师姓名
        	StringBuffer sss = new StringBuffer("<td>"+"<a href=\"T1Detailed2.jsp?id=");
        	sss.append(srtpid);
        	sss.append("\" class=\"tablelink\" > 查看详细信息</a></td>");
        	out.println(sss);
        	out.println("</tr>");
        }
        rs.close();
        %>
        </tbody>
    </table>
    

    </div> 
    
    
 <div id="tab2" class="tabson">
    
    
    <ul class="seachform">
    
    
    <li><label>学院</label>  
    <div class="vocation">
    <select class="select3" name="xueyuan">
    <option value="01">经管学院</option>
    <option value="02">计通学院</option>
    <option value="03">冶金学院</option>
    </select>
    </div>
    </li>
    
    <li><label>专业</label>  
    <div class="vocation" name="zhuanye">
    <select class="select3" style="width:200px;">
    <option>计算机</option>
    <option>法学</option>
    </select>
    </div>
    </li>
    
    <li><label>学号</label><input name="" type="text" class="scinput" /></li>
    
    
    <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>项目名称</th>
        <th>负责人工号</th>
        <th>申请时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
      <%
        //查看所有待立项的项目并输出
        String sql2 = "select teachReserch_id,teachReserch_name,first_id,apply_time from teachReserch where status = 1";
        ResultSet rs2 = MyBean.executeQuery(sql2);
        while(rs2.next()){
        	out.println("<tr>");
        	out.println("<td>"+rs2.getString(1)+"</td>");//编号
        	String srtpid1 = rs2.getString(1);
        	//log("srtpid为："+srtpid);
        	out.println("<td>"+rs2.getString(2)+"</td>");//教材名称
        	out.println("<td>"+rs2.getString(3)+"</td>");//学生姓名
        	out.println("<td>"+rs2.getString(4)+"</td>");//指导教师姓名
        	StringBuffer sss = new StringBuffer("<td>"+"<a href=\"T2Detailed2.jsp?id=");
        	sss.append(srtpid1);
        	sss.append("\" class=\"tablelink\" > 查看详细信息</a></td>");
        	out.println(sss);
        	out.println("</tr>");
        }
        rs2.close();
        %> 
        </tbody>
    </table>
    
   
  
    
    </div>  
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>

</body>
</html>