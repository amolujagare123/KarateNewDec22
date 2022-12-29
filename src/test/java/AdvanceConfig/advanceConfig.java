package AdvanceConfig;

import com.intuit.karate.junit5.Karate;

public class advanceConfig {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("advanceConfig",
                        "commonChatCreateUser")
                .relativeTo(getClass())

                ;

    }
}
