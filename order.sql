-- 데이베이스 선택 명령
select path, space as "테이블스페이스명" 


-- 현재 데이터 베이스의 전체 테이블 목록
show tables;

use mysql;

-- 사용자 정보 조회
select user, host from user;

-- 현재 사용자의 권한 조회
show grants;

-- 현재 데이터베이스에 설정된 파라미터 값 출력
show variables;

-- 현재 데이터베이스의 상태 확인
show status;

