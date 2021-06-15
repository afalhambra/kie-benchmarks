package org.jbpm.test.performance.scenario.load.services;

import org.jbpm.process.audit.AuditLogService;
import org.jbpm.process.audit.VariableInstanceLog;
import org.jbpm.services.task.audit.service.TaskJPAAuditService;
import org.jbpm.test.performance.jbpm.JBPMKieServicesController;
import org.jbpm.test.performance.jbpm.constant.ProcessStorage;
import org.kie.api.definition.process.NodeType;
import org.kie.api.runtime.manager.audit.NodeInstanceLog;
import org.kie.api.runtime.manager.audit.ProcessInstanceLog;
import org.kie.api.task.model.Status;
import org.kie.internal.query.QueryFilter;
import org.kie.internal.task.api.AuditTask;
import org.kie.internal.task.api.model.TaskEvent;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Threads;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import static java.util.Arrays.asList;
import static java.util.Collections.singletonList;
import static org.jbpm.test.performance.jbpm.util.JbpmJmhPerformanceUtil.readObjectFromFile;

@State(Scope.Benchmark)
@Fork(value = 1, jvmArgs = {"-Xms2G", "-Xmx2G"})
@Warmup(iterations = 1, time = 30)
@Measurement(iterations = 1, time = 30)
@Threads(1)
public class DatabasePartitioning extends AbstractQueryProcessesAndTasksByVariables {

    private static final Logger log = LoggerFactory.getLogger(DatabasePartitioning.class);

    @Param("")
    private String processes;

    @Setup
    public void init() throws Exception {
        processVariables = (Map<String, Object>) readObjectFromFile(PROCESS_VARIABLES_FILENAME);
        taskVariables = (Map<String, QueryTaskVariable>) readObjectFromFile(TASK_VARIABLES_FILENAME);
        processStorage = ProcessStorage.DatabasePartitioningProcess;
        runtimeDataService = JBPMKieServicesController
                .getInstance(singletonList(processStorage.getPath()), PU_NAME)
                .getRuntimeDataService();
        advanceRuntimeDataService = JBPMKieServicesController
                .getInstance(singletonList(processStorage.getPath()), PU_NAME)
                .getAdvanceRuntimeDataService();
        auditService = JBPMKieServicesController
                .getInstance(singletonList(processStorage.getPath()), PU_NAME)
                .getAuditService();
    }

//    @BenchmarkMode(Mode.Throughput)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void throughputQueryProcessByVariables(Blackhole blackhole) {
//        queryProcessByVariables(blackhole);
//    }

//    @BenchmarkMode(Mode.SampleTime)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void sampleTimeQueryProcessByVariables(Blackhole blackhole) {
//        queryProcessByVariables(blackhole);
//    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryProcessByVariables(Blackhole blackhole) {
        queryProcessByVariables(blackhole);
    }

//    @BenchmarkMode(Mode.Throughput)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void throughputQueryUserTasksByVariables(Blackhole blackhole) {
//        queryUserTasksByVariables(blackhole);
//    }

//    @BenchmarkMode(Mode.SampleTime)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void sampleTimeQueryUserTasksByVariables(Blackhole blackhole) {
//        queryUserTasksByVariables(blackhole);
//    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryUserTasksByVariables(Blackhole blackhole) {
        queryUserTasksByVariables(blackhole);
    }

//    @BenchmarkMode(Mode.Throughput)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void throughputQueryProcessByVariablesAndTask(Blackhole blackhole) {
//        queryProcessByVariablesAndTask(blackhole);
//    }

//    @BenchmarkMode(Mode.SampleTime)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void sampleTimeQueryProcessByVariablesAndTask(Blackhole blackhole) {
//        queryProcessByVariablesAndTask(blackhole);
//    }

//    @BenchmarkMode(Mode.AverageTime)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void averageTimeQueryProcessByVariablesAndTask(Blackhole blackhole) {
//        queryProcessByVariablesAndTask(blackhole);
//    }

//    @BenchmarkMode(Mode.Throughput)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void throughputQueryAuditTasks(Blackhole blackhole) {
//        queryProcessByVariables(blackhole);
//    }

//    @BenchmarkMode(Mode.SampleTime)
//    @OutputTimeUnit(TimeUnit.SECONDS)
//    @Benchmark
//    public void sampleTimeQueryAuditTasks(Blackhole blackhole) {
//        queryProcessByVariables(blackhole);
//    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryAuditTasks(Blackhole blackhole) {
        queryAuditTasks(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryVariableLog(Blackhole blackhole) {
        queryVariableLog(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryNodeLog(Blackhole blackhole) {
        queryNodeLog(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryProcessInstanceLog(Blackhole blackhole) {
        queryProcessInstanceLog(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void averageTimeQueryTaskEvents(Blackhole blackhole) {
        queryTaskEvents(blackhole);
    }

    private void queryTaskEvents(Blackhole blackhole) {
        List<TaskEvent> taskEvents = ((TaskJPAAuditService)auditService).taskEventQuery().
                type(TaskEvent.TaskEventType.COMPLETED).
                processInstanceIdRange(100L, 200L).
                build().
                getResultList();
        if (taskEvents == null || taskEvents.isEmpty()){
            throw new IllegalStateException("Number of task events returned by query is null or do not match with expected values");
        }
        blackhole.consume(taskEvents);
    }

    private void queryAuditTasks(Blackhole blackhole) {
        List<String> statuses = new ArrayList<>(asList(Status.Reserved.toString(),
                                                       Status.Completed.toString(),
                                                       Status.Exited.toString(),
                                                       Status.Obsolete.toString()));
        Map<String, Object> params = new HashMap<>();
        params.put("statuses", statuses);

        QueryFilter queryFilter = new QueryFilter();
        queryFilter.setParams(params);
        List<AuditTask> auditTasks = runtimeDataService.getAllAuditTaskByStatus("perfUser", queryFilter);
        if (auditTasks == null || auditTasks.isEmpty()){
            throw new IllegalStateException("Number of audit tasks returned by query is null or do not match with expected values");
        }
        blackhole.consume(auditTasks);
    }

    private void queryVariableLog(Blackhole blackhole) {
        Map.Entry<String, Object> entry = processVariables.entrySet().stream().findFirst().get();
        List<VariableInstanceLog> variableInstanceLogs = ((AuditLogService)auditService).findVariableInstancesByNameAndValue(entry.getKey(), entry.getValue().toString(), false);
        if (variableInstanceLogs == null || variableInstanceLogs.isEmpty()){
            throw new IllegalStateException("Number of variable instance logs returned by query is null or do not match with expected values");
        }
        blackhole.consume(variableInstanceLogs);
    }

    private void queryNodeLog(Blackhole blackhole) {
        List<NodeInstanceLog> nodeInstanceLogs = ((AuditLogService)auditService).nodeInstanceLogQuery().
                nodeType("HumanTaskNode").
                build().
                getResultList();
        if (nodeInstanceLogs == null || nodeInstanceLogs.isEmpty()){
            throw new IllegalStateException("Number of node instance logs returned by query is null or do not match with expected values");
        }
        blackhole.consume(nodeInstanceLogs);
    }

    private void queryProcessInstanceLog(Blackhole blackhole) {
        List<ProcessInstanceLog> processInstanceLogs = ((AuditLogService)auditService).processInstanceLogQuery().
                processId(ProcessStorage.DatabasePartitioningProcess.getProcessDefinitionId()).
                processInstanceIdRange(100L, 200L).
                build().
                getResultList();
        if (processInstanceLogs == null || processInstanceLogs.isEmpty()){
            throw new IllegalStateException("Number of process instance logs returned by query is null or do not match with expected values");
        }
        blackhole.consume(processInstanceLogs);
    }
}
