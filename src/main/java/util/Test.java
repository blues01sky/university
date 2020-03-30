package util;

public class Test {
	
	@org.junit.Test
	public void name() {
		String score = "50";
		String maxscore = String.valueOf(Integer.valueOf(score)+50);
		System.out.println(maxscore);
	}
}
