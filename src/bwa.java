import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings.Secure;
import java.io.File;
import java.lang.reflect.Field;
import java.security.MessageDigest;

public final class bwa
{
  public static String a = null;
  public static String b = null;
  public static String c = null;
  public static String d = null;
  public static String e = null;
  public static String f = null;
  public static String g = null;
  public static String h = null;
  
  private static int a(Context paramContext, PackageManager paramPackageManager)
  {
    int i = 0;
    try
    {
      paramContext = getApplicationInfogetPackageName128metaData;
      if (paramContext != null) {
        i = paramContext.getInt("buildNumber", 0);
      }
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public static File a()
  {
    File localFile = Environment.getExternalStorageDirectory();
    localFile = new File(localFile.getAbsolutePath() + "/HockeyApp");
    localFile.mkdirs();
    return localFile;
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar1 = "0123456789ABCDEF".toCharArray();
    char[] arrayOfChar2 = new char[paramArrayOfByte.length * 2];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      arrayOfChar2[(i * 2)] = arrayOfChar1[(j >>> 4)];
      arrayOfChar2[(i * 2 + 1)] = arrayOfChar1[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar2).replaceAll("(\\w{8})(\\w{4})(\\w{4})(\\w{4})(\\w{12})", "$1-$2-$3-$4-$5");
  }
  
  public static void a(Context paramContext)
  {
    e = Build.VERSION.RELEASE;
    f = Build.MODEL;
    g = Build.MANUFACTURER;
    if (paramContext != null) {}
    try
    {
      localObject = paramContext.getFilesDir();
      if (localObject != null) {
        a = ((File)localObject).getAbsolutePath();
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          paramContext = MessageDigest.getInstance("SHA-1");
          Object localObject = ((String)localObject).getBytes("UTF-8");
          paramContext.update((byte[])localObject, 0, localObject.length);
          h = a(paramContext.digest());
          return;
        }
        catch (Throwable paramContext) {}
        localException1 = localException1;
        localException1.printStackTrace();
      }
    }
    if (paramContext != null) {}
    try
    {
      localObject = paramContext.getPackageManager();
      PackageInfo localPackageInfo = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
      d = packageName;
      b = versionCode;
      c = versionName;
      int i = a(paramContext, (PackageManager)localObject);
      if ((i != 0) && (i > versionCode)) {
        b = String.valueOf(i);
      }
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        localException2.printStackTrace();
      }
    }
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if ((d != null) && (paramContext != null)) {
      localObject = d + ":" + paramContext + ":" + b();
    }
  }
  
  private static String b()
  {
    String str4 = "HA" + Build.BOARD.length() % 10 + Build.BRAND.length() % 10 + Build.CPU_ABI.length() % 10 + Build.PRODUCT.length() % 10;
    String str3 = "";
    String str1 = str3;
    if (Build.VERSION.SDK_INT >= 9) {}
    try
    {
      str1 = Build.class.getField("SERIAL").get(null).toString();
      return str4 + ":" + str1;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        String str2 = str3;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bwa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */