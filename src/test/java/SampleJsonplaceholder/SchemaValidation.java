package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class SchemaValidation {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("SchemaValidation")
                .relativeTo(getClass())
                .tags("@jobPosts");

    }
}
