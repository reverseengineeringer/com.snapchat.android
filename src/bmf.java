import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class bmf
{
  private static final Pattern a = Pattern.compile("\\$\\d+$");
  
  static void a()
  {
    c();
  }
  
  static void a(Throwable paramThrowable)
  {
    c();
    Log.getStackTraceString(paramThrowable);
  }
  
  static void b()
  {
    c();
  }
  
  private static String c()
  {
    String str = Thread.currentThread().getStackTrace()[4].getClassName();
    Matcher localMatcher = a.matcher(str);
    if (localMatcher.find()) {
      str = localMatcher.replaceAll("");
    }
    return str.substring(str.lastIndexOf('.') + 1);
  }
}

/* Location:
 * Qualified Name:     bmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */