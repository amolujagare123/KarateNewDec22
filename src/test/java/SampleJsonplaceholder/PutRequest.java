package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class PutRequest {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("PutRequest")
                .relativeTo(getClass());

    }
}
