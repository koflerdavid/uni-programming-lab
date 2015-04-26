package crawler;

public class Utils {
	public static int HTTP_SLEEP = 3000;
    public static int HTTP_TIMEOUT = 3000;

	// C-style printf
	public static void println(String msg, Object... args) {
		System.out.printf(msg + '\n', args);
	}

	public static String trim(String s, int width) {
		if (s.length() > width)
			return s.substring(0, width - 1);
		else
			return s;
	}

}
