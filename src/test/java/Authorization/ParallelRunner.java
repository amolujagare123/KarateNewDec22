package Authorization;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


public class ParallelRunner {


    @Karate.Test
    public Karate runner()
    {
        return Karate.run("JobPortal")
                .relativeTo(getClass())
               ;

    }
}
