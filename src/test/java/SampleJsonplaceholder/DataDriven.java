package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class DataDriven {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("PutRequest")
                .relativeTo(getClass())
                .tags("@csv");

    }
}
