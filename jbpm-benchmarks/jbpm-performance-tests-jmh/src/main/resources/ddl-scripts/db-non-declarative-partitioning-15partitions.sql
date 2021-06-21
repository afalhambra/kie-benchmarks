CREATE TABLE audittaskimpl_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 16667 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 16667 AND processInstanceId < 33334 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 33334 AND processInstanceId < 50001 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50001 AND processInstanceId < 66668 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 66668 AND processInstanceId < 83335 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000005(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 83335 AND processInstanceId < 100002 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000006(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100002 AND processInstanceId < 116669 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000007(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 116669 AND processInstanceId < 133336 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000008(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 133336 AND processInstanceId < 150003 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000009(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150003 AND processInstanceId < 166670 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000010(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 166670 AND processInstanceId < 183337 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000011(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 183337 AND processInstanceId < 200004 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000012(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200004 AND processInstanceId < 216671 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000013(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 216671 AND processInstanceId < 233338 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000014(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 233338 AND processInstanceId < 250005 )) INHERITS (audittaskimpl);
CREATE TABLE audittaskimpl_000015(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 250000 AND processInstanceId < 250010 )) INHERITS (audittaskimpl);

CREATE TABLE nodeinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 16667 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 16667 AND processInstanceId < 33334 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 33334 AND processInstanceId < 50001 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50001 AND processInstanceId < 66668 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 66668 AND processInstanceId < 83335 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000005(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 83335 AND processInstanceId < 100002 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000006(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100002 AND processInstanceId < 116669 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000007(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 116669 AND processInstanceId < 133336 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000008(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 133336 AND processInstanceId < 150003 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000009(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150003 AND processInstanceId < 166670 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000010(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 166670 AND processInstanceId < 183337 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000011(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 183337 AND processInstanceId < 200004 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000012(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200004 AND processInstanceId < 216671 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000013(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 216671 AND processInstanceId < 233338 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000014(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 233338 AND processInstanceId < 250005 )) INHERITS (nodeinstancelog);
CREATE TABLE nodeinstancelog_000015(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 250000 AND processInstanceId < 250010 )) INHERITS (nodeinstancelog);

CREATE TABLE processinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 16667 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 16667 AND processInstanceId < 33334 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 33334 AND processInstanceId < 50001 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50001 AND processInstanceId < 66668 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 66668 AND processInstanceId < 83335 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000005(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 83335 AND processInstanceId < 100002 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000006(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100002 AND processInstanceId < 116669 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000007(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 116669 AND processInstanceId < 133336 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000008(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 133336 AND processInstanceId < 150003 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000009(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150003 AND processInstanceId < 166670 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000010(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 166670 AND processInstanceId < 183337 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000011(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 183337 AND processInstanceId < 200004 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000012(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200004 AND processInstanceId < 216671 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000013(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 216671 AND processInstanceId < 233338 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000014(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 233338 AND processInstanceId < 250005 )) INHERITS (processinstancelog);
CREATE TABLE processinstancelog_000015(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 250000 AND processInstanceId < 250010 )) INHERITS (processinstancelog);

CREATE TABLE taskevent_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 16667 )) INHERITS (taskevent);
CREATE TABLE taskevent_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 16667 AND processInstanceId < 33334 )) INHERITS (taskevent);
CREATE TABLE taskevent_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 33334 AND processInstanceId < 50001 )) INHERITS (taskevent);
CREATE TABLE taskevent_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50001 AND processInstanceId < 66668 )) INHERITS (taskevent);
CREATE TABLE taskevent_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 66668 AND processInstanceId < 83335 )) INHERITS (taskevent);
CREATE TABLE taskevent_000005(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 83335 AND processInstanceId < 100002 )) INHERITS (taskevent);
CREATE TABLE taskevent_000006(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100002 AND processInstanceId < 116669 )) INHERITS (taskevent);
CREATE TABLE taskevent_000007(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 116669 AND processInstanceId < 133336 )) INHERITS (taskevent);
CREATE TABLE taskevent_000008(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 133336 AND processInstanceId < 150003 )) INHERITS (taskevent);
CREATE TABLE taskevent_000009(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150003 AND processInstanceId < 166670 )) INHERITS (taskevent);
CREATE TABLE taskevent_000010(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 166670 AND processInstanceId < 183337 )) INHERITS (taskevent);
CREATE TABLE taskevent_000011(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 183337 AND processInstanceId < 200004 )) INHERITS (taskevent);
CREATE TABLE taskevent_000012(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200004 AND processInstanceId < 216671 )) INHERITS (taskevent);
CREATE TABLE taskevent_000013(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 216671 AND processInstanceId < 233338 )) INHERITS (taskevent);
CREATE TABLE taskevent_000014(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 233338 AND processInstanceId < 250005 )) INHERITS (taskevent);
CREATE TABLE taskevent_000015(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 250000 AND processInstanceId < 250010 )) INHERITS (taskevent);

CREATE TABLE variableinstancelog_000000(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 1 AND processInstanceId < 16667 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000001(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 16667 AND processInstanceId < 33334 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000002(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 33334 AND processInstanceId < 50001 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000003(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 50001 AND processInstanceId < 66668 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000004(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 66668 AND processInstanceId < 83335 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000005(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 83335 AND processInstanceId < 100002 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000006(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 100002 AND processInstanceId < 116669 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000007(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 116669 AND processInstanceId < 133336 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000008(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 133336 AND processInstanceId < 150003 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000009(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 150003 AND processInstanceId < 166670 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000010(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 166670 AND processInstanceId < 183337 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000011(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 183337 AND processInstanceId < 200004 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000012(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 200004 AND processInstanceId < 216671 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000013(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 216671 AND processInstanceId < 233338 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000014(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 233338 AND processInstanceId < 250005 )) INHERITS (variableinstancelog);
CREATE TABLE variableinstancelog_000015(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= 250000 AND processInstanceId < 250010 )) INHERITS (variableinstancelog);

CREATE OR REPLACE FUNCTION archived() RETURNS TRIGGER AS $$
   DECLARE
      table_archive text := '';
      numberOfRows integer := 16667;
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