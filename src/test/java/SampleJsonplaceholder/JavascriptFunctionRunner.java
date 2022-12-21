package SampleJsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class JavascriptFunctionRunner {

    @Karate.Test
    public Karate runner()
    {
        return Karate.run("JavaScriptFunction","EmbeddedExpressions")
                .relativeTo(getClass())
                .tags("@postJobXml");

    }
}
