package org.jbpm.test.performance.scenario.load.services;

import org.junit.BeforeClass;
import org.junit.Test;
import org.openjdk.jmh.infra.Blackhole;
import org.openjdk.jmh.results.format.ResultFormatType;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import org.openjdk.jmh.runner.options.TimeValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.TimeUnit;

import static java.lang.String.valueOf;
import static org.jbpm.test.performance.jbpm.util.JbpmJmhPerformanceUtil.writeObjectToFile;
import static org.jbpm.test.performance.scenario.load.services.QueryProcessesAndTasksByVariables.PROCESS_VARIABLES_FILENAME;
import static org.jbpm.test.performance.scenario.load.services.QueryProcessesAndTasksByVariables.TASK_VARIABLES_FILENAME;

public class DatabasePartitioningTest extends AbstractQueryProcessesAndTasksByVariablesBaseTest {
    private static final Logger log = LoggerFactory.getLogger(QueryProcessesAndTasksByVariablesTest.class);

    @BeforeClass
    public static void loadScenario() throws Exception {

        startUpProcessInstances();
        updateProcessAndTaskVariables(1);
        stopProcessInstances();

        writeObjectToFile(processVariables, PROCESS_VARIABLES_FILENAME);
        writeObjectToFile(taskVariables, TASK_VARIABLES_FILENAME);

    }

    @Test
    public void launchBenchmark() throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(QueryProcessesAndTasksByVariables.class.getSimpleName())
                .param("processes", valueOf(processes))
                .threads(threads)
                .shouldFailOnError(failOnError)
                .shouldDoGC(doGc)
                .measurementIterations(measurementIterations)
                .forks(forks)
                .measurementTime(new TimeValue(iterationTime, TimeUnit.SECONDS))
                .warmupTime(new TimeValue(warmupTime, TimeUnit.SECONDS))
                .timeout(new TimeValue(timeout, TimeUnit.MINUTES))
                .jvmArgsAppend(jvmArgsAppend.toArray(new String[0]))
                .resultFormat(ResultFormatType.CSV)
                .result("dbpartitioning-results.csv")
                .build();
        new Runner(opt).run();
    }

    public static void main(String[] args) throws Exception {
        setup();
        loadScenario();
        QueryProcessesAndTasksByVariables queries = new QueryProcessesAndTasksByVariables();
        Blackhole blackhole = new Blackhole("Today's password is swordfish. I understand instantiating Blackholes directly is dangerous.");
        queries.init();
        queries.averageTimeQueryProcessByVariables(blackhole);
        queries.averageTimeQueryProcessByVariablesAndTask(blackhole);
        queries.averageTimeQueryUserTasksByVariables(blackhole);
        queries.throughputQueryProcessByVariables(blackhole);
        queries.throughputQueryProcessByVariablesAndTask(blackhole);
        queries.throughputQueryUserTasksByVariables(blackhole);
        queries.sampleTimeQueryProcessByVariables(blackhole);
        queries.sampleTimeQueryProcessByVariablesAndTask(blackhole);
        queries.sampleTimeQueryUserTasksByVariables(blackhole);
        System.out.println("finished main");
    }
}
