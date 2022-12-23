package SampleJsonplaceholder.fileupload;

import com.intuit.karate.junit5.Karate;

public class fileUpload {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("fileUpload")
                .relativeTo(getClass());


    }
}
