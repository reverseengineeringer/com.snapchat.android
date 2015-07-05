package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class eb
{
  private static final String a = eb.class.getSimpleName();
  private static String b;
  private static String c;
  
  /* Error */
  public static String a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 24	com/flurry/sdk/eb:b	Ljava/lang/String;
    //   6: invokestatic 30	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifne +12 -> 21
    //   12: getstatic 24	com/flurry/sdk/eb:b	Ljava/lang/String;
    //   15: astore_0
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload_0
    //   20: areturn
    //   21: getstatic 32	com/flurry/sdk/eb:c	Ljava/lang/String;
    //   24: invokestatic 30	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   27: ifne +10 -> 37
    //   30: getstatic 32	com/flurry/sdk/eb:c	Ljava/lang/String;
    //   33: astore_0
    //   34: goto -18 -> 16
    //   37: invokestatic 34	com/flurry/sdk/eb:b	()Ljava/lang/String;
    //   40: astore_0
    //   41: aload_0
    //   42: putstatic 32	com/flurry/sdk/eb:c	Ljava/lang/String;
    //   45: goto -29 -> 16
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   15	27	0	str	String
    //   48	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	16	48	finally
    //   21	34	48	finally
    //   37	45	48	finally
  }
  
  public static void a(String paramString)
  {
    b = paramString;
  }
  
  private static String b()
  {
    try
    {
      Object localObject = do.a().b();
      localObject = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 0);
      if (versionName != null) {
        return versionName;
      }
      if (versionCode != 0)
      {
        localObject = Integer.toString(versionCode);
        return (String)localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      el.a(6, a, "", localThrowable);
    }
    return "Unknown";
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */