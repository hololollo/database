<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강릉시 경포동 소개 페이지</title>
    <style>
    * { margin: 0; padding: 0; }
    ul { list-style: none; }
    a { text-decoration: none; color:#333; }
    #gnb { width:600px; margin:20px auto; text-align: center; position: fixed;  top: 10%; left: 50%; transform: translateX(-50%); }
    #gnb > ul > li { float:left; width: 200px; }
    #gnb > ul > li > a { font-size:30px; font-weight: bold; 
    display:block; text-align: center; line-height: 42px; border-bottom:3px solid #333; }
    #gnb > ul > li > ul { display:none; }
    #gnb > ul > li:hover > ul { display:block; }
    #gnb ul li a { display:block; text-align: center; line-height: 32px; }
    #gnb > ul > li:hover > a { color:darkgoldenrod;  border-bottom:3px solid darkgoldenrod; }
    #gnb > ul > li > ul :hover > a { color:darkgoldenrod;  border-bottom:3px solid darkgoldenrod; }   
    #gnb > ul > li > a {
    background-color:darkolivegreen; /* 배경색 지정 */
    padding: 10px 0; /* 상하 여백 조정 */
    border-radius: 20px; /* 모서리를 둥글게 만듦 */}
    .logo-container {text-align: center;}
    </style>
</head>
<body>
    <div class="logo-container"><img src="logo.jpg" art="로고"></a></div>
    <nav id="gnb">
        <ul>
            <li>
                <a href="">공지사항</a>
                <ul>
                    <li><a href="Notice.jsp">사이트 소개</a></li>
                    <li><a href="Traffic.jsp">교통편 소개</a></li>
                    <li><a href="">문화센터 소개</a></li>
                </ul>
            </li>
            <li>
                <a href="">지역소개</a>
                <ul>
                    <li><a href="Guide.jsp">경포동 소개</a></li>
                    <li><a href="">볼거리 소개</a></li>
                    <li><a href="">★맛 집 소개★</a></li>
                </ul>
            </li>
            <li>
                <a href="">회원참여</a>
                <ul>
                    <li><a href="Member.jsp">로그인</a></li>                    
                    <li><a href="Qna.jsp">자유게시판</a></li>
                    <li><a href="Data.jsp">자료실</a></li>                    
                </ul>
            </li>
        </ul>
    </nav>
</body>
</html>