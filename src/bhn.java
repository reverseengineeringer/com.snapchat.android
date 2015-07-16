import android.os.Build;
import java.io.File;

public final class bhn
{
  private static bhn sInstance = new bhn();
  
  public static bhn a()
  {
    return sInstance;
  }
  
  public static boolean b()
  {
    String str = Build.TAGS;
    return (str != null) && (str.contains("test-keys"));
  }
  
  public static boolean c()
  {
    return new File("/system/app/Superuser.apk").exists();
  }
  
  public static boolean d()
  {
    int i = 0;
    while (i < 8)
    {
      if (new File(new String[] { "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su" }[i]).exists()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public static boolean e()
  {
    try
    {
      Process localProcess = Runtime.getRuntime().exec(new String[] { "/system/xbin/which", "su" });
      if (localProcess != null) {
        localProcess.destroy();
      }
      return true;
    }
    catch (Throwable localThrowable)
    {
      localThrowable = localThrowable;
      return false;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     bhn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */