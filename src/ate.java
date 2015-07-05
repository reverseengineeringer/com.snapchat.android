import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public final class ate
{
  public static final String DISPLAY_DENSITY_PARAM = "display_density";
  public static final String EMPTY_MAP = "{}";
  public static final double KB_IN_GB = 1048576.0D;
  public static final String NUM_PROCESSORS_PARAM = "num_processors";
  private static final int PRE_2010 = 2009;
  public static final String TAG = "DeviceUtils";
  public static final String TOTAL_MEMORY_PARAM = "total_memory";
  public static final String YEAR_CLASS_PARAM = "year_class";
  private static final ate sInstance = new ate();
  private Map<String, String> mYearClass;
  
  private static double a(String paramString)
  {
    String[] arrayOfString = paramString.split(" kB")[0].split(" ");
    double d;
    try
    {
      d = Double.parseDouble(arrayOfString[(arrayOfString.length - 1)]);
      if (d <= 0.0D) {
        return 0.0D;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        Timber.f("DeviceUtils", "There was an error parsing /proc/meminfo " + paramString, new Object[0]);
        d = 0.0D;
      }
    }
    return Math.pow(2.0D, Math.floor(Math.getExponent(d - 1.0D)) + 1.0D);
  }
  
  public static ate a()
  {
    return sInstance;
  }
  
  public static boolean a(Context paramContext)
  {
    return (getResourcesgetConfigurationscreenLayout & 0xF) >= 3;
  }
  
  public static int b(Context paramContext)
  {
    return ((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass();
  }
  
  /* Error */
  private static String c()
  {
    // Byte code:
    //   0: new 140	java/io/RandomAccessFile
    //   3: dup
    //   4: ldc -114
    //   6: ldc -112
    //   8: invokespecial 147	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_1
    //   13: astore_0
    //   14: aload_1
    //   15: invokevirtual 150	java/io/RandomAccessFile:readLine	()Ljava/lang/String;
    //   18: astore_2
    //   19: aload_1
    //   20: invokestatic 156	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   23: aload_2
    //   24: areturn
    //   25: astore_0
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_1
    //   29: astore_0
    //   30: ldc 26
    //   32: ldc -98
    //   34: iconst_0
    //   35: anewarray 4	java/lang/Object
    //   38: invokestatic 86	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload_1
    //   42: invokestatic 156	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   45: ldc -96
    //   47: areturn
    //   48: astore_1
    //   49: aconst_null
    //   50: astore_0
    //   51: aload_0
    //   52: invokestatic 156	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   55: aload_1
    //   56: athrow
    //   57: astore_1
    //   58: goto -7 -> 51
    //   61: astore_0
    //   62: goto -34 -> 28
    // Local variable table:
    //   start	length	slot	name	signature
    //   13	1	0	localRandomAccessFile1	java.io.RandomAccessFile
    //   25	1	0	localIOException1	java.io.IOException
    //   29	23	0	localRandomAccessFile2	java.io.RandomAccessFile
    //   61	1	0	localIOException2	java.io.IOException
    //   11	31	1	localRandomAccessFile3	java.io.RandomAccessFile
    //   48	8	1	localObject1	Object
    //   57	1	1	localObject2	Object
    //   18	6	2	str	String
    // Exception table:
    //   from	to	target	type
    //   0	12	25	java/io/IOException
    //   0	12	48	finally
    //   14	19	57	finally
    //   30	41	57	finally
    //   14	19	61	java/io/IOException
  }
  
  public final Map<String, String> b()
  {
    int j = 2015;
    Runtime localRuntime = Runtime.getRuntime();
    DisplayMetrics localDisplayMetrics = SnapchatApplication.b().getResources().getDisplayMetrics();
    Object localObject = ajx.bj();
    if ((mYearClass != null) && (mYearClass.containsKey("year_class"))) {
      return mYearClass;
    }
    Type localType = new TypeToken() {}.getType();
    mYearClass = ((Map)atn.a().fromJson((String)localObject, localType));
    if (mYearClass.containsKey("year_class")) {
      return mYearClass;
    }
    localObject = new HashMap();
    int i = localRuntime.availableProcessors();
    ((Map)localObject).put("num_processors", Integer.toString(i));
    int k;
    double d;
    label178:
    int m;
    if (i >= 8)
    {
      k = 2015;
      d = a(c()) / 1048576.0D;
      ((Map)localObject).put("total_memory", Double.toString(d));
      if (d < 4.0D) {
        break label300;
      }
      i = 2015;
      m = densityDpi;
      ((Map)localObject).put("display_density", avh.a(localDisplayMetrics));
      if (m < 640) {
        break label365;
      }
    }
    for (;;)
    {
      ((Map)localObject).put("year_class", Integer.toString(Math.max(k, Math.max(i, j))));
      ajx.s(atn.a().toJson(localObject));
      mYearClass = ((Map)localObject);
      return mYearClass;
      if (i >= 4)
      {
        k = 2013;
        break;
      }
      if (i >= 2)
      {
        k = 2011;
        break;
      }
      if (i > 0)
      {
        k = 2010;
        break;
      }
      k = 2009;
      break;
      label300:
      if (d >= 3.0D)
      {
        i = 2014;
        break label178;
      }
      if (d >= 2.0D)
      {
        i = 2012;
        break label178;
      }
      if (d >= 1.0D)
      {
        i = 2011;
        break label178;
      }
      if (d >= 0.5D)
      {
        i = 2010;
        break label178;
      }
      i = 2009;
      break label178;
      label365:
      if (m >= 480) {
        j = 2013;
      } else if (m >= 240) {
        j = 2012;
      } else if (m >= 160) {
        j = 2011;
      } else if (m >= 120) {
        j = 2010;
      } else {
        j = 2009;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */