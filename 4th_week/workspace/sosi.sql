drop  table  sosi ;  
 create  table  sosi ( 
       id number(4)  primary key ,
       name varchar2(20)  ,
       salary number  ,
       birth date  ,
       email varchar2(20)  ,
       grade  varchar2(4)
  ) ;
   
 commit ;
 desc sosi ;
 select * from  sosi ;
