begin
    dbms_aqadm.create_queue_table (queue_table        => 'queues_qt',
                                   queue_payload_type => 'sys.aq$_jms_text_message');

    dbms_aqadm.create_queue (queue_name  => 'test_queue',
                             queue_table => 'queues_qt');
                           
    dbms_aqadm.start_queue (queue_name => 'test_queue');  
end;
/