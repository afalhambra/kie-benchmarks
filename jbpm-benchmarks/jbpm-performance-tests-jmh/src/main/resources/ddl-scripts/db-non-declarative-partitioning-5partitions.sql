CREATE TABLE audittaskimpl_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 50000 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50000 AND processInstanceId < 100000 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100000 AND processInstanceId < 150000 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150000 AND processInstanceId < 200000 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200000 AND processInstanceId < 250010 )) INHERITS (audittaskimpl);

CREATE TABLE nodeinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 50000 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50000 AND processInstanceId < 100000 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100000 AND processInstanceId < 150000 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150000 AND processInstanceId < 200000 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200000 AND processInstanceId < 250010 )) INHERITS (nodeinstancelog);

CREATE TABLE processinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 50000 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50000 AND processInstanceId < 100000 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100000 AND processInstanceId < 150000 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150000 AND processInstanceId < 200000 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200000 AND processInstanceId < 250010 )) INHERITS (processinstancelog);

CREATE TABLE taskevent_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 50000 )) INHERITS (taskevent);
CREATE TABLE taskevent_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50000 AND processInstanceId < 100000 )) INHERITS (taskevent);
CREATE TABLE taskevent_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100000 AND processInstanceId < 150000 )) INHERITS (taskevent);
CREATE TABLE taskevent_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150000 AND processInstanceId < 200000 )) INHERITS (taskevent);
CREATE TABLE taskevent_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200000 AND processInstanceId < 250010 )) INHERITS (taskevent);

CREATE TABLE variableinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 50000 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50000 AND processInstanceId < 100000 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100000 AND processInstanceId < 150000 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150000 AND processInstanceId < 200000 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200000 AND processInstanceId < 250010 )) INHERITS (variableinstancelog);

CREATE OR REPLACE FUNCTION archived() RETURNS TRIGGER AS $$
   DECLARE
      table_archive text := '';
      numberOfRows integer := 100000;
   BEGIN
      IF NEW.processInstanceId IS NULL THEN
      	RETURN NEW;
      END IF;
      table_archive := TG_TABLE_NAME || '_' || LPAD((NEW.processInstanceId / numberOfRows)::text, 6, '0');
      EXECUTE 'INSERT INTO ' || table_archive || ' VALUES ($1.*)' USING NEW;
      RETURN NULL;
   END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ProcessInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON ProcessInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER NodeInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON NodeInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER VariableInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON VariableInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER AuditTaskImpl_insert_trigger BEFORE INSERT OR UPDATE ON AuditTaskImpl FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER TaskEvent_insert_trigger BEFORE INSERT OR UPDATE ON TaskEvent FOR EACH ROW EXECUTE PROCEDURE archived();