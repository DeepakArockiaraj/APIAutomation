package com.api.automation;





import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class testRUnner {

	@Test
	public Karate runTest()
	{
	return	Karate.run("Fuzzymatcher").relativeTo(getClass());
	}

	
	

	
}
