import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public final class aud
{
  public static final String DISPLAY_DENSITY_PARAM = "display_density";
  public static final String EMPTY_MAP = "{}";
  public static final double KB_IN_GB = 1048576.0D;
  public static final String NUM_PROCESSORS_PARAM = "num_processors";
  private static final int PRE_2010 = 2009;
  public static final String TAG = "DeviceUtils";
  public static final String TOTAL_MEMORY_PARAM = "total_memory";
  public static final String YEAR_CLASS_PARAM = "year_class";
  private static final aud sInstance = new aud();
  private Map<String, String> mYearClass;
  
  private static double a(String paramString)
  {
    paramString = paramString.split(" kB")[0].split(" ");
    double d;
    try
    {
      d = Double.parseDouble(paramString[(paramString.length - 1)]);
      if (d <= 0.0D) {
        return 0.0D;
      }
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        d = 0.0D;
      }
    }
    return Math.pow(2.0D, Math.floor(Math.getExponent(d - 1.0D)) + 1.0D);
  }
  
  public static aud a()
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
    //   0: aconst_null
    //   1: astore_1
    //   2: new 120	java/io/RandomAccessFile
    //   5: dup
    //   6: ldc 122
    //   8: ldc 124
    //   10: invokespecial 127	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   13: astore_0
    //   14: aload_0
    //   15: invokevirtual 130	java/io/RandomAccessFile:readLine	()Ljava/lang/String;
    //   18: astore_1
    //   19: aload_0
    //   20: invokestatic 136	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   23: aload_1
    //   24: areturn
    //   25: astore_0
    //   26: aconst_null
    //   27: astore_0
    //   28: aload_0
    //   29: invokestatic 136	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   32: ldc -118
    //   34: areturn
    //   35: astore_0
    //   36: aload_1
    //   37: invokestatic 136	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   40: aload_0
    //   41: athrow
    //   42: astore_2
    //   43: aload_0
    //   44: astore_1
    //   45: aload_2
    //   46: astore_0
    //   47: goto -11 -> 36
    //   50: astore_1
    //   51: goto -23 -> 28
    // Local variable table:
    //   start	length	slot	name	signature
    //   13	7	0	localRandomAccessFile	java.io.RandomAccessFile
    //   25	1	0	localIOException1	java.io.IOException
    //   27	2	0	localCloseable	java.io.Closeable
    //   35	9	0	localObject1	Object
    //   46	1	0	localObject2	Object
    //   1	44	1	localObject3	Object
    //   50	1	1	localIOException2	java.io.IOException
    //   42	4	2	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	25	java/io/IOException
    //   2	14	35	finally
    //   14	19	42	finally
    //   14	19	50	java/io/IOException
  }
  
  public final Map<String, String> b()
  {
    int j = 2015;
    Runtime localRuntime = Runtime.getRuntime();
    DisplayMetrics localDisplayMetrics = SnapchatApplication.b().getResources().getDisplayMetrics();
    Object localObject = akr.bg();
    if ((mYearClass != null) && (mYearClass.containsKey("year_class"))) {
      return mYearClass;
    }
    Type localType = new TypeToken() {}.getType();
    mYearClass = ((Map)aul.a().fromJson((String)localObject, localType));
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
      ((Map)localObject).put("display_density", awf.a(localDisplayMetrics));
      if (m < 640) {
        break label365;
      }
    }
    for (;;)
    {
      ((Map)localObject).put("year_class", Integer.toString(Math.max(k, Math.max(i, j))));
      akr.s(aul.a().toJson(localObject));
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
 * Qualified Name:     aud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */