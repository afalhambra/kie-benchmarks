package org.jbpm.test.performance.scenario.load.services;

import org.jbpm.process.instance.ProcessInstance;
import org.jbpm.test.performance.jbpm.constant.ProcessStorage;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.openjdk.jmh.infra.Blackhole;
import org.openjdk.jmh.results.format.ResultFormatType;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import org.openjdk.jmh.runner.options.TimeValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;

import static java.lang.String.valueOf;
import static org.jbpm.test.performance.jbpm.util.JbpmJmhPerformanceUtil.writeObjectToFile;
import static org.jbpm.test.performance.scenario.load.services.QueryProcessesAndTasksByVariables.PROCESS_VARIABLES_FILENAME;
import static org.jbpm.test.performance.scenario.load.services.QueryProcessesAndTasksByVariables.TASK_VARIABLES_FILENAME;

@RunWith(Parameterized.class)
public class DatabasePartitioningTest extends AbstractQueryProcessesAndTasksByVariablesBaseTest {

    private static final Logger log = LoggerFactory.getLogger(DatabasePartitioningTest.class);
    private int iteration;

    public DatabasePartitioningTest(int iteration) {
        this.iteration = iteration;
    }

    @Parameterized.Parameters(name = "Iteration {0}")
    public static Iterable<? extends Object> data() {
        return Arrays.asList(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    }

    @Before
    public void loadScenario() throws Exception {
        // We need to disable Hibernate entity checks
        System.setProperty("org.kie.api.persistence.disableEntityChecks", Boolean.TRUE.toString());
        startUpProcessInstances(ProcessStorage.DatabasePartitioningProcess);
        updateProcessAndTaskVariables(1);
        waitForProcessesToComplete(ProcessStorage.DatabasePartitioningProcess.getProcessDefinitionId());

        writeObjectToFile(processVariables, PROCESS_VARIABLES_FILENAME);
        writeObjectToFile(taskVariables, TASK_VARIABLES_FILENAME);
    }

    @After
    public void cleanScenario() {
        assertProcessInstancesStatus(ProcessInstance.STATE_COMPLETED, true);
        clean();
        System.clearProperty("org.kie.api.persistence.disableEntityChecks");
    }

    @Test
    public void launchBenchmark() throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(DatabasePartitioning.class.getSimpleName())
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
                .result("results-" + iteration + ".csv")
                .build();
        new Runner(opt).run();
    }

    public static void main(String[] args) throws Exception {
        setup();
        //loadScenario();
        DatabasePartitioning queries = new DatabasePartitioning();
        Blackhole blackhole = new Blackhole("Today's password is swordfish. I understand instantiating Blackholes directly is dangerous.");
        queries.init();
//        queries.averageTimeQueryProcessByVariables(blackhole);
//        queries.averageTimeQueryProcessByVariablesAndTask(blackhole);
//        queries.averageTimeQueryUserTasksByVariables(blackhole);
//        queries.averageTimeQueryAuditTasks(blackhole);
//        queries.averageTimeQueryVariableLog(blackhole);
//        queries.averageTimeQueryNodeLog(blackhole);
//        queries.averageTimeQueryProcessInstanceLog(blackhole);
//        queries.averageTimeQueryTaskEvents(blackhole);
        queries.averageTimeLogCleanUp(blackhole);
//        queries.throughputQueryProcessByVariables(blackhole);
//        queries.throughputQueryProcessByVariablesAndTask(blackhole);
//        queries.throughputQueryUserTasksByVariables(blackhole);
//        queries.sampleTimeQueryProcessByVariables(blackhole);
//        queries.sampleTimeQueryProcessByVariablesAndTask(blackhole);
//        queries.sampleTimeQueryUserTasksByVariables(blackhole);
        clean();
        System.out.println("finished main");
    }
}
