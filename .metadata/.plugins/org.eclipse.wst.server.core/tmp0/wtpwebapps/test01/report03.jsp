<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%@ page import="org.kh.dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "system";
	String userpw = "1234";
	String sql = "";
	List<Usertable> uList = new ArrayList<>();
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, userid, userpw);
		
		sql = "select owner,table_name,tablespace_name,pct_used,pct_free from all_tables where owner='SYSTEM' and tablespace_name='SYSTEM' and num_rows is null";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while(rs.next()){
			Usertable data = new Usertable(rs.getString("owner"), 
					rs.getString("table_name"),
					rs.getString("tablespace_name"),
					rs.getInt("pct_used"),
					rs.getInt("pct_free"));
			uList.add(data);
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		if(rs!=null){
			try {
				rs.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	pageContext.setAttribute("uList", uList);
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBMS 데이터베이스 객체 정보</title>
<style>
	.title { text-align:center; }
    .tb th { border-top:3px solid #333;
         border-bottom:3px solid #333; line-height:40px; }
    .tb td { border-bottom:1px solid #333; line-height: 30px; 
    text-align: center; } 
    .img1 {display:block; width:800px; margin:10px auto; }
    hr { clear:both; width:100%; margin:30px 0px; padding:0; } 
</style>
</head>
<body>
<h1 class="title">데이터베이스 오브젝트 생성 완료 보고서</h1>
<%@ include file="menu.jsp" %>
<hr>
<h2 class="title">테이블 목록</h2>
<table style="width:1400px;margin:30px auto" class="tb">
	<thead>
		<tr>
			<th>owner</th><th>table_name</th><th>tablespace_name</th>
			<th>pct_used</th><th>pct_free</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="data" items="${uList }" varStatus="status">
		<tr>
			<td>${data.owner }</td><td>${data.table_name }</td>
			<td>${data.tablespace_name }</td><td>${data.pct_used }</td>
			<td>${data.pct_free }</td>
		</tr>
	</c:forEach>	
	</tbody>
</table>
<hr>
<h2 class="title">데이터베이스 ERD</h2>
<div class="img1">
	<img src="./Relational_1.png" alt="데이터베이스 ERD" class="img1" />
</div>
<hr>
<br>
<h2 class="title">테이블 정의서</h2>
<br>
<div class="img1">
	<h3>Member</h3>
	<img src="./Member.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>Member1</h3>
	<img src="./Member1.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>Book</h3>
	<img src="./Book.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>Sales</h3>
	<img src="./Sales.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>Student</h3>
	<img src="./Student.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>TB_MEMBER</h3>
	<img src="./TB_MEMBER.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>TB_GRADE</h3>
	<img src="./TB_GRADE.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<div class="img1">
	<h3>TB_AREA</h3>
	<img src="./TB_AREA.PNG" alt="데이터베이스 ERD" class="img1" />
</div>
<br>
<h1>테이블(Table, 표) 관련 요소</h1>
    <table id="tb1" border="1" cellspacing="0" cellpadding="10"/>
        <!--가장 큰 요소(Table)-->
        <caption><h2>테이블 정의서</h2></caption>
        <!--caption은 필수요소 아님.-->
        <thead>
            <!--항목 레이블을 묶어주는 요소(행 머리글)(thead)-->
            <!--행과 열(순서 기억)-->
            <tr><td rowspan="1"><!--줄 합치기-->업무영역</td><th colspan="7">사원<!--열 합치기--></th></tr>
                <!-- 한 줄(tr)-->
                <tr><td>사용자</td><td colspan="3">SCOTT</td><td>테이블 스페이스</td><td colspan="3">hr_data</td></tr>
        		<tr><td>테이블 한글명</td><td colspan="3">사원</td><td>테이블 영문명</td><td colspan="3">EMP</td></tr>
        		<tr><td>PCTUSED</td><td colspan="3">70</td><td>PCTFREE</td><td colspan="3">50</td></tr>
        </thead>
        <tbody>
            <tr>
                <td><!--열 데이터(td)-->컬럼 한글명</td><td>컬럼 영문명</td><td>데이터 타입</td><td>길이</td><td>NN여부</td><td>PK</td><td>FK</td><td>기본 값</td>
            </tr>
            <tr>
                <td><!--열 데이터(td)-->사원 번호</td><td>EMPNO</td><td>VARCHAR2</td><td>6</td><td>Y</td><td>Y</td><td> </td><td> </td>
            </tr>
            <tr>
                <td><!--열 데이터(td)-->사원명</td><td>EMPNM</td><td>VARCHAR2</td><td>40</td><td>Y</td><td> </td><td> </td><td> </td>
            </tr>
            <tr>
                <td><!--열 데이터(td)-->주민번호</td><td>JUMINNO</td><td>VARCHAR2</td><td>13</td><td>N</td><td> </td><td> </td><td> </td>
            </tr>
            <tr>
                <td><!--열 데이터(td)-->부서번호</td><td>DEPTNO</td><td>VARCHAR2</td><td>2</td><td>Y</td><td> </td><td>Y</td><td> </td>
            </tr>
            <tr>
                <td><!--열 데이터(td)-->입사일자</td><td>HREDATE</td><td>DATE</td><td> </td><td>Y</td><td> </td><td> </td><td>SYSDATE</td>
            </tr>
        </tbody>
    </table>
</body>
</html>