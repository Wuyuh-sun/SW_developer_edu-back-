drop table yunBbsUser;

create table yunBbsUser(
    email varchar(20) not null,
    pw varchar(20) not null,
    name varchar(20) not null,
    profileImg varchar(100) not null,
    primary key(email)
);
-- CREATE SEQUENCE yunBbsUser_seq START WITH 1 INCREMENT BY 1;

