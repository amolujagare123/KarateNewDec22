package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class JsonplaceholderRunner {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("jsonplaceholder","SampleUser").relativeTo(getClass()).tags("@sampleGet");
    }
}
