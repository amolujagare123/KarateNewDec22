package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class VariableRunner {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("VariablesDemo").relativeTo(getClass());
    }
}
