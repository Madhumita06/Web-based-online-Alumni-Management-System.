<%@ include file="aheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*" import="details.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
int p=0,b=0,a=0,g=0,e=0;
String id=request.getParameter("id");
String qno=request.getParameter("qno");
Connection con = databasecon.getconnection();
Statement st1=con.createStatement();
String sql1=" select count(*) as cnt from surpoints where surid='"+id+"' and ques"+qno+"=1 group by ques"+qno+" ";
ResultSet rs1=st1.executeQuery(sql1);
while(rs1.next()){
	p=rs1.getInt("cnt");
}

Statement st2=con.createStatement();
String sql2=" select count(*) as cnt from surpoints where surid='"+id+"' and ques"+qno+"=2 group by ques"+qno+" ";
ResultSet rs2=st2.executeQuery(sql2);
while(rs2.next()){
	b=rs2.getInt("cnt");
}

Statement st3=con.createStatement();
String sql3=" select count(*) as cnt from surpoints where surid='"+id+"' and ques"+qno+"=3 group by ques"+qno+" ";
ResultSet rs3=st3.executeQuery(sql3);
while(rs3.next()){
	a=rs3.getInt("cnt");
}

Statement st4=con.createStatement();
String sql4=" select count(*) as cnt from surpoints where surid='"+id+"' and ques"+qno+"=4 group by ques"+qno+" ";
ResultSet rs4=st4.executeQuery(sql4);
while(rs4.next()){
	g=rs4.getInt("cnt");
}

Statement st5=con.createStatement();
String sql5=" select count(*) as cnt from surpoints where surid='"+id+"' and ques"+qno+"=5 group by ques"+qno+" ";
ResultSet rs5=st5.executeQuery(sql5);
while(rs5.next()){
	e=rs5.getInt("cnt");
}

%>
<center>
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Poor"); map.put("y", p); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Bad"); map.put("y", b); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Average"); map.put("y", a); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Good"); map.put("y", g); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Excellent"); map.put("y", e); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	axisY: {
		suffix: "%"
	},
	axisX: {
		title: "Rating"
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0\"\"",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</center>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<%@ include file="afooter.jsp"%>
