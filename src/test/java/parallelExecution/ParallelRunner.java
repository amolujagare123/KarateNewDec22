package parallelExecution;


import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Runner.Builder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.Collection;
import java.util.List;


public class ParallelRunner {


    @Test
    public void runner()
    {
        Builder aRunner = new Builder();
        aRunner.path("classpath:parallelExecution");
        Results result = aRunner.parallel(5);

        System.out.println("Feature count:"+result.getFeaturesTotal());
        System.out.println("Scenarios count:"+result.getScenariosTotal());
        System.out.println("Pass count:"+result.getScenariosPassed());
        System.out.println("Fail count:"+result.getFailCount());

        Assertions.assertEquals(0,result.getFailCount(),
                "some scenarios are failed");
    }

   /* void createReport(String reportPath)
    {
        File reportDirectory = new File(reportPath);

        String[] fileTypes = {"txt"};
        Collection<File> fileSets = FileUtils.listFiles(reportDirectory,fileTypes,true);

        List jsonFiles =

    }*/
}
