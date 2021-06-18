CREATE TABLE audittaskimpl_000000 PARTITION OF AuditTaskImpl FOR VALUES FROM (1) TO (50000);
CREATE TABLE audittaskimpl_000001 PARTITION OF AuditTaskImpl FOR VALUES FROM (50000) TO (100000);
CREATE TABLE audittaskimpl_000002 PARTITION OF AuditTaskImpl FOR VALUES FROM (100000) TO (150000);
CREATE TABLE audittaskimpl_000003 PARTITION OF AuditTaskImpl FOR VALUES FROM (150000) TO (200000);
CREATE TABLE audittaskimpl_000004 PARTITION OF AuditTaskImpl FOR VALUES FROM (200000) TO (250010);

CREATE TABLE bamtasksummary_000000 PARTITION OF BAMTaskSummary FOR VALUES FROM (1) TO (50000);
CREATE TABLE bamtasksummary_000001 PARTITION OF BAMTaskSummary FOR VALUES FROM (50000) TO (100000);
CREATE TABLE bamtasksummary_000002 PARTITION OF BAMTaskSummary FOR VALUES FROM (100000) TO (150000);
CREATE TABLE bamtasksummary_000003 PARTITION OF BAMTaskSummary FOR VALUES FROM (150000) TO (200000);
CREATE TABLE bamtasksummary_000004 PARTITION OF BAMTaskSummary FOR VALUES FROM (200000) TO (250010);

CREATE TABLE nodeinstancelog_000000 PARTITION OF NodeInstanceLog FOR VALUES FROM (1) TO (50000);
CREATE TABLE nodeinstancelog_000001 PARTITION OF NodeInstanceLog FOR VALUES FROM (50000) TO (100000);
CREATE TABLE nodeinstancelog_000002 PARTITION OF NodeInstanceLog FOR VALUES FROM (100000) TO (150000);
CREATE TABLE nodeinstancelog_000003 PARTITION OF NodeInstanceLog FOR VALUES FROM (150000) TO (200000);
CREATE TABLE nodeinstancelog_000004 PARTITION OF NodeInstanceLog FOR VALUES FROM (200000) TO (250010);

CREATE TABLE processinstancelog_000000 PARTITION OF ProcessInstanceLog FOR VALUES FROM (1) TO (50000);
CREATE TABLE processinstancelog_000001 PARTITION OF ProcessInstanceLog FOR VALUES FROM (50000) TO (100000);
CREATE TABLE processinstancelog_000002 PARTITION OF ProcessInstanceLog FOR VALUES FROM (100000) TO (150000);
CREATE TABLE processinstancelog_000003 PARTITION OF ProcessInstanceLog FOR VALUES FROM (150000) TO (200000);
CREATE TABLE processinstancelog_000004 PARTITION OF ProcessInstanceLog FOR VALUES FROM (200000) TO (250010);

CREATE TABLE taskevent_000000 PARTITION OF TaskEvent FOR VALUES FROM (1) TO (50000);
CREATE TABLE taskevent_000001 PARTITION OF TaskEvent FOR VALUES FROM (50000) TO (100000);
CREATE TABLE taskevent_000002 PARTITION OF TaskEvent FOR VALUES FROM (100000) TO (150000);
CREATE TABLE taskevent_000003 PARTITION OF TaskEvent FOR VALUES FROM (150000) TO (200000);
CREATE TABLE taskevent_000004 PARTITION OF TaskEvent FOR VALUES FROM (200000) TO (250010);

CREATE TABLE variableinstancelog_000000 PARTITION OF VariableInstanceLog FOR VALUES FROM (1) TO (50000);
CREATE TABLE variableinstancelog_000001 PARTITION OF VariableInstanceLog FOR VALUES FROM (50000) TO (100000);
CREATE TABLE variableinstancelog_000002 PARTITION OF VariableInstanceLog FOR VALUES FROM (100000) TO (150000);
CREATE TABLE variableinstancelog_000003 PARTITION OF VariableInstanceLog FOR VALUES FROM (150000) TO (200000);
CREATE TABLE variableinstancelog_000004 PARTITION OF VariableInstanceLog FOR VALUES FROM (200000) TO (250010);


create index IDX_AuditTaskImpl_partition_000000 on AuditTaskImpl_000000(processInstanceId);
create index IDX_AuditTaskImpl_partition_000001 on AuditTaskImpl_000001(processInstanceId);
create index IDX_AuditTaskImpl_partition_000002 on AuditTaskImpl_000002(processInstanceId);
create index IDX_AuditTaskImpl_partition_000003 on AuditTaskImpl_000003(processInstanceId);
create index IDX_AuditTaskImpl_partition_000004 on AuditTaskImpl_000004(processInstanceId);

create index IDX_BAMTaskSummary_partition_000000 on BAMTaskSummary_000000(processInstanceId);
create index IDX_BAMTaskSummary_partition_000001 on BAMTaskSummary_000001(processInstanceId);
create index IDX_BAMTaskSummary_partition_000002 on BAMTaskSummary_000002(processInstanceId);
create index IDX_BAMTaskSummary_partition_000003 on BAMTaskSummary_000003(processInstanceId);
create index IDX_BAMTaskSummary_partition_000004 on BAMTaskSummary_000004(processInstanceId);

create index IDX_NodeInstanceLog_partition_000000 on NodeInstanceLog_000000(processInstanceId);
create index IDX_NodeInstanceLog_partition_000001 on NodeInstanceLog_000001(processInstanceId);
create index IDX_NodeInstanceLog_partition_000002 on NodeInstanceLog_000002(processInstanceId);
create index IDX_NodeInstanceLog_partition_000003 on NodeInstanceLog_000003(processInstanceId);
create index IDX_NodeInstanceLog_partition_000004 on NodeInstanceLog_000004(processInstanceId);

create index IDX_ProcessInstanceLog_partition_000000 on ProcessInstanceLog_000000(processInstanceId);
create index IDX_ProcessInstanceLog_partition_000001 on ProcessInstanceLog_000001(processInstanceId);
create index IDX_ProcessInstanceLog_partition_000002 on ProcessInstanceLog_000002(processInstanceId);
create index IDX_ProcessInstanceLog_partition_000003 on ProcessInstanceLog_000003(processInstanceId);
create index IDX_ProcessInstanceLog_partition_000004 on ProcessInstanceLog_000004(processInstanceId);

create index IDX_TaskEvent_partition_000000 on TaskEvent_000000(processInstanceId);
create index IDX_TaskEvent_partition_000001 on TaskEvent_000001(processInstanceId);
create index IDX_TaskEvent_partition_000002 on TaskEvent_000002(processInstanceId);
create index IDX_TaskEvent_partition_000003 on TaskEvent_000003(processInstanceId);
create index IDX_TaskEvent_partition_000004 on TaskEvent_000004(processInstanceId);

create index IDX_VariableInstanceLogpartition_000000 on VariableInstanceLog_000000(processInstanceId);
create index IDX_VariableInstanceLogpartition_000001 on VariableInstanceLog_000001(processInstanceId);
create index IDX_VariableInstanceLogpartition_000002 on VariableInstanceLog_000002(processInstanceId);
create index IDX_VariableInstanceLogpartition_000003 on VariableInstanceLog_000003(processInstanceId);
create index IDX_VariableInstanceLogpartition_000004 on VariableInstanceLog_000004(processInstanceId);
