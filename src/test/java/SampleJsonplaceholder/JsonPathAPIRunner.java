package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class JsonPathAPIRunner {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("jsonpathAPI")
                .relativeTo(getClass());

    }
}
