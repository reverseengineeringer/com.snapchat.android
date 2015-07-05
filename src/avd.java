import com.snapchat.android.Timber;
import java.lang.reflect.Method;

public final class avd
{
  private static final String TAG = "SystemProperties";
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      Timber.a("SystemProperties", paramString1);
    }
    return paramString2;
  }
}

/* Location:
 * Qualified Name:     avd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */