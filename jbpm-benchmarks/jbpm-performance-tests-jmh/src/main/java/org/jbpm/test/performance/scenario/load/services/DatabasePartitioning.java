package org.jbpm.test.performance.scenario.load.services;

import org.jbpm.test.performance.jbpm.JBPMKieServicesController;
import org.jbpm.test.performance.jbpm.constant.ProcessStorage;
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

import java.util.Map;
import java.util.concurrent.TimeUnit;

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
        advanceRuntimeDataService = JBPMKieServicesController
                .getInstance(singletonList(processStorage.getPath()), PU_NAME)
                .getAdvanceRuntimeDataService();
    }

    @BenchmarkMode(Mode.Throughput)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void throughputQueryProcessByVariables(Blackhole blackhole) {
        queryProcessByVariables(blackhole);
    }

    @BenchmarkMode(Mode.SampleTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void sampleTimeQueryProcessByVariables(Blackhole blackhole) {
        queryProcessByVariables(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void averageTimeQueryProcessByVariables(Blackhole blackhole) {
        queryProcessByVariables(blackhole);
    }

    @BenchmarkMode(Mode.Throughput)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void throughputQueryUserTasksByVariables(Blackhole blackhole) {
        queryUserTasksByVariables(blackhole);
    }

    @BenchmarkMode(Mode.SampleTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void sampleTimeQueryUserTasksByVariables(Blackhole blackhole) {
        queryUserTasksByVariables(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void averageTimeQueryUserTasksByVariables(Blackhole blackhole) {
        queryUserTasksByVariables(blackhole);
    }

    @BenchmarkMode(Mode.Throughput)
    @OutputTimeUnit(TimeUnit.SECONDS)
    @Benchmark
    public void throughputQueryProcessByVariablesAndTask(Blackhole blackhole) {
        queryProcessByVariablesAndTask(blackhole);
    }

    @BenchmarkMode(Mode.SampleTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void sampleTimeQueryProcessByVariablesAndTask(Blackhole blackhole) {
        queryProcessByVariablesAndTask(blackhole);
    }

    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    @Benchmark
    public void averageTimeQueryProcessByVariablesAndTask(Blackhole blackhole) {
        queryProcessByVariablesAndTask(blackhole);
    }
}
