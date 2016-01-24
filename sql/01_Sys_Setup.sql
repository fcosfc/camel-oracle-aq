create user testaq
identified by test1234
default tablespace users
quota unlimited on users;

grant create session   to testaq;
grant create table     to testaq;

grant execute on dbms_aqadm to testaq;
grant execute on dbms_aq    to testaq;
grant execute on dbms_aqin  to testaq;

grant select on sys.dba_pending_transactions to testaq;
grant select on sys.pending_trans$ to testaq;
grant select on sys.dba_2pc_pending to testaq;
grant execute on sys.dbms_system to testaq;
grant force any transaction to testaq;