begin
    dbms_aqadm.create_queue_table (queue_table        => 'queues_qt',
                                   queue_payload_type => 'sys.aq$_jms_text_message');

    dbms_aqadm.create_queue (queue_name  => 'basic_test_q',
                             queue_table => 'queues_qt');                           
    dbms_aqadm.start_queue (queue_name => 'basic_test_q');  

    dbms_aqadm.create_queue (queue_name  => 'perf_test_q',
                             queue_table => 'queues_qt');                           
    dbms_aqadm.start_queue (queue_name => 'perf_test_q');  

    dbms_aqadm.create_queue (queue_name  => 'xa_test_q',
                             queue_table => 'queues_qt');                           
    dbms_aqadm.start_queue (queue_name => 'xa_test_q');  
end;
/