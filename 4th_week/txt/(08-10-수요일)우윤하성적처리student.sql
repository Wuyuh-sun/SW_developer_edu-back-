
--1. student테이블 idx, name, kor, eng, mat 총점, 평균, 결과  case ~ end

select idx, name, kor, eng, mat, (kor+eng+mat) total, round((kor+eng+mat)/3) AVG, 
case 
when round((kor+eng+mat)/3)>=80 then '합격' 
else '불합격' 
end "합격여부" 
from student;

--2. student테이블 idx, name, kor, eng, mat 총점, 평균, 순위 rank()

select idx, name, kor, eng, mat, (kor+eng+mat) total, round((kor+eng+mat)/3) AVG, 
rank() 
over (order by round((kor+eng+mat)/3) desc) rank 
from student; 

--3. student테이블 idx, name, kor, eng, mat 총점, 평균, 순위, 결과

select idx, name, kor, eng, mat, (kor+eng+mat) total, round((kor+eng+mat)/3) AVG, 
rank() over (order by round((kor+eng+mat)/3) desc) rank, 
case 
when round((kor+eng+mat)/3)>=80 then '합격' 
else '불합격' 
end "합격여부" 
from student;