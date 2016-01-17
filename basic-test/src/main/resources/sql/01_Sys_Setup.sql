create user testaq
identified by test1234
default tablespace users
quota unlimited on users;

grant create session   to testaq;
grant create table     to testaq;

grant execute on dbms_aqadm to testaq;
grant execute on dbms_aq    to testaq;
grant execute on dbms_aqin  to testaq;