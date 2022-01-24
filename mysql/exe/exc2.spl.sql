insert into cafe(
 seq
	,name
	,tables
	,chairs
	,address
	,area
	,ceoname
) values (
	10
	,'얌다방'
	,3
	,6
	,'서울시 강남'
	,1
	,'고소영'
);

-- seq가 3인데이터 호출
select * from cafe where seq = 3;

select * from cafe where area = 5;

select * from cafe where name = '얌다방';

-- 조건이두가지인경우 and(모든조건이 만족) or(한가지라도만족)

select * from cafe where name ='얌다방' and area= 1;

select * from cafe where name='얌다방' or ceoname='장동건';

select * from cafe where area >5;
select * from cafe where area < 5;
select * from cafe where chairs <= 5;
select * from cafe where tables >= 3;
select * from cafe where tables <> 3; 
-- 3이아닌모든것alter

select * from cafe where name like '%다방'; 
-- 앞글자는 상관없고 끝글자는 다방인것 
-- 앞뒤글자 상관없이 다방이라는 글자 포함한 것 %다방%
-- 뒷글자는 상관없고 앞글자가 다방인것 다방%

select * from cafe where name like '%얌%'; 

select * from cafe where name like '얌%'; 