import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import com.snapchat.android.SnapchatApplication;
import java.util.Locale;
import java.util.UUID;

public final class bgs
{
  public static final String AUTHORIZATION_EXCEPTION_HEADER_NAME = "X-Snapchat-AuthExp";
  public static final String AUTHORIZATION_HEADER_NAME = "X-Snapchat-Client-Auth-Token";
  public static final String AUTHORIZATION_OAUTH_TOKEN_PREFIX = "Bearer ";
  private static final String OS_INFO = "; Android " + Build.VERSION.RELEASE + "#" + Build.VERSION.INCREMENTAL + "#" + Build.VERSION.SDK_INT;
  private static final String USER_AGENT_SUFFIX = " (" + Build.MODEL + OS_INFO + "; gzip)";
  
  public static String a()
  {
    try
    {
      Object localObject = SnapchatApplication.b();
      localObject = getPackageManagergetPackageInfogetPackageName0versionName;
      return "Snapchat/" + (String)localObject + USER_AGENT_SUFFIX;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        String str = "3.0.2";
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;) {}
    }
  }
  
  public static String b()
  {
    String str2 = Locale.getDefault().getLanguage();
    String str1 = str2;
    if (!str2.equals(Locale.ENGLISH.getLanguage())) {
      str1 = str2 + ";q=1, en;q=0.9";
    }
    return str1;
  }
  
  public static String c()
  {
    return UUID.randomUUID().toString();
  }
}

/* Location:
 * Qualified Name:     bgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */