CREATE OR REPLACE FUNCTION archived() RETURNS TRIGGER AS $$
   DECLARE
      table_archive text := '';
      createTable text := '';
      numberOfRows integer := 10;
      isTable varchar := '';
      startPartition integer:= 0;
      endPartition integer := 10;
   BEGIN
      IF NEW.processInstanceId IS NULL THEN
      	RETURN NEW;
      END IF;
      table_archive := TG_TABLE_NAME || '_' || LPAD((NEW.processInstanceId / numberOfRows)::text, 10, '0');
      SELECT to_regclass(table_archive) INTO isTable;
      IF isTable IS NULL THEN
          startPartition := numberOfRows*(NEW.processInstanceId / numberOfRows);
          endPartition := numberOfRows*((NEW.processInstanceId / numberOfRows) + 1);
          createTable := 'CREATE TABLE '|| table_archive || '(CHECK (processInstanceId IS NOT NULL AND processInstanceId >= ' || startPartition || ' AND processInstanceId < ' || endPartition || ' )) INHERITS (' || TG_TABLE_NAME || ')';
          RAISE NOTICE '%', createTable;
          EXECUTE createTable;
      END IF;
      EXECUTE 'INSERT INTO ' || table_archive || ' VALUES ($1.*)' USING NEW;
      RETURN NULL;
   END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ProcessInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON ProcessInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER NodeInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON NodeInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER VariableInstanceLog_insert_trigger BEFORE INSERT OR UPDATE ON VariableInstanceLog FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER AuditTaskImpl_insert_trigger BEFORE INSERT OR UPDATE ON AuditTaskImpl FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER TaskEvent_insert_trigger BEFORE INSERT OR UPDATE ON TaskEvent FOR EACH ROW EXECUTE PROCEDURE archived();
CREATE TRIGGER CaseFileDataLog_insert_trigger BEFORE INSERT OR UPDATE ON CaseFileDataLog FOR EACH ROW EXECUTE PROCEDURE archived();