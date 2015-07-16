import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.ArrayList;
import java.util.List;

public final class bma
{
  public List<bmc> a = new ArrayList(1);
  public Thread.UncaughtExceptionHandler b;
  
  static int a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      int i = getPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new RuntimeException(paramContext);
    }
  }
  
  /* Error */
  @chd
  static bme a(bmg parambmg, java.io.FileReader paramFileReader)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 59	java/io/BufferedReader
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 62	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   11: astore_1
    //   12: aload_0
    //   13: aload_1
    //   14: invokevirtual 67	bmg:a	(Ljava/io/BufferedReader;)J
    //   17: lstore_2
    //   18: lload_2
    //   19: ldc2_w 68
    //   22: lcmp
    //   23: ifne +12 -> 35
    //   26: aload 4
    //   28: astore_0
    //   29: aload_1
    //   30: invokestatic 74	bmd:a	(Ljava/io/Closeable;)V
    //   33: aload_0
    //   34: areturn
    //   35: aload_1
    //   36: invokestatic 77	bmg:b	(Ljava/io/BufferedReader;)Ljava/lang/String;
    //   39: astore 5
    //   41: aload 4
    //   43: astore_0
    //   44: aload 5
    //   46: invokestatic 83	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   49: ifne -20 -> 29
    //   52: aload 4
    //   54: astore_0
    //   55: aload 5
    //   57: ldc 85
    //   59: invokevirtual 90	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   62: ifne -33 -> 29
    //   65: new 92	bme
    //   68: dup
    //   69: lload_2
    //   70: aload 5
    //   72: invokespecial 95	bme:<init>	(JLjava/lang/String;)V
    //   75: astore_0
    //   76: goto -47 -> 29
    //   79: astore_0
    //   80: aload_0
    //   81: invokevirtual 98	java/io/IOException:printStackTrace	()V
    //   84: aload_1
    //   85: invokestatic 74	bmd:a	(Ljava/io/Closeable;)V
    //   88: aconst_null
    //   89: areturn
    //   90: astore_0
    //   91: aload_1
    //   92: invokestatic 74	bmd:a	(Ljava/io/Closeable;)V
    //   95: aload_0
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	parambmg	bmg
    //   0	97	1	paramFileReader	java.io.FileReader
    //   17	53	2	l	long
    //   1	52	4	localObject	Object
    //   39	32	5	str	String
    // Exception table:
    //   from	to	target	type
    //   12	18	79	java/io/IOException
    //   35	41	79	java/io/IOException
    //   44	52	79	java/io/IOException
    //   55	76	79	java/io/IOException
    //   12	18	90	finally
    //   35	41	90	finally
    //   44	52	90	finally
    //   55	76	90	finally
    //   80	84	90	finally
  }
  
  public final void a(bmc parambmc)
  {
    a.add(parambmc);
  }
}

/* Location:
 * Qualified Name:     bma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */