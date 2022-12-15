package SamleUser;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    public Karate runTest()
    {
        //return  Karate.run("src/test/java/SamleUser/SampleUser.feature");
        return  Karate.run("SampleUser").relativeTo(getClass());
    }
}
