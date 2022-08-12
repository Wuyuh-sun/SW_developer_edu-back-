-- 1 sosi 테이블 신규저장 프로시저 CK_sosi 생성
-- ID NAME SALARY BIRTH EMAIL GRADE hit필드
create or replace procedure CK_sosi                               
is
begin dbms_output.put_line('sosi테이블 데이터입력 test');
insert into sosi(id, name, salary, birth, email, grade, hit)
values(3333, '윤하', 999, sysdate, 'wjh0970@kakao.com', 'A+', 0);
end;
/

-- 2 emp 테이블 select * from ~~~
-- 부하직원없는 출력 SMITH, ALLEN참조하지 않음

select empno, ename, job ,hiredate, sal, comm, deptno from emp where empno > 7500;

select  * from emp where empno not in (select nvl(mgr, 0) from emp);