package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class DataDriven {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("DataDriven")
                .relativeTo(getClass())
                .tags("postJob");

    }
}
