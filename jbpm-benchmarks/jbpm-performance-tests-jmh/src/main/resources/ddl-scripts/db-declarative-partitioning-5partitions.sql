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