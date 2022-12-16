package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class JobPortalRunner {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("JobPortalGetRequests","JobPortalPostRequest")
                .relativeTo(getClass())
                .tags("@postJob");
    }
}
