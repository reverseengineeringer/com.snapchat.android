import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.util.StartupPath;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class avv
{
  protected static final String APP_CREATION_TIMED_METRIC = "APP_CREATION_TIMED";
  private static final String TAG = "StartupContext";
  private static StartupPath mStartupPath = StartupPath.UNKNOWN;
  private static avv sStartupContext = new avv();
  private boolean isAppStart = false;
  public Long mAppCreationTime = null;
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  
  private avv()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  private avv(EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mEasyMetricFactory = paramEasyMetricFactory;
  }
  
  public static avv a()
  {
    return sStartupContext;
  }
  
  public static StartupPath b()
  {
    return mStartupPath;
  }
  
  public static long c()
  {
    try
    {
      int i = Class.forName("libcore.io.OsConstants").getField("_SC_CLK_TCK").getInt(null);
      Object localObject = Class.forName("libcore.io.Libcore").getField("os").get(null);
      long l = ((Long)localObject.getClass().getMethod("sysconf", new Class[] { Integer.TYPE }).invoke(localObject, new Object[] { Integer.valueOf(i) })).longValue();
      return l;
    }
    catch (Exception localException) {}
    return 100L;
  }
  
  /* Error */
  public static Long d()
  {
    // Byte code:
    //   0: invokestatic 130	android/os/Process:myPid	()I
    //   3: istore_0
    //   4: new 132	java/io/BufferedReader
    //   7: dup
    //   8: new 134	java/io/FileReader
    //   11: dup
    //   12: new 136	java/lang/StringBuilder
    //   15: dup
    //   16: ldc -118
    //   18: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: iload_0
    //   22: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   25: ldc -109
    //   27: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokespecial 155	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   36: invokespecial 158	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   39: astore_3
    //   40: aload_3
    //   41: astore 4
    //   43: aload_3
    //   44: invokevirtual 161	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   47: astore 5
    //   49: aload_3
    //   50: astore 4
    //   52: aload 5
    //   54: aload 5
    //   56: ldc -93
    //   58: invokevirtual 169	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   61: invokevirtual 173	java/lang/String:substring	(I)Ljava/lang/String;
    //   64: ldc -81
    //   66: invokevirtual 179	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   69: bipush 20
    //   71: aaload
    //   72: invokestatic 183	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   75: lstore_1
    //   76: aload_3
    //   77: invokestatic 188	bgo:a	(Ljava/io/Closeable;)V
    //   80: lload_1
    //   81: invokestatic 191	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   84: areturn
    //   85: astore 4
    //   87: aconst_null
    //   88: astore_3
    //   89: aload_3
    //   90: invokestatic 188	bgo:a	(Ljava/io/Closeable;)V
    //   93: aconst_null
    //   94: areturn
    //   95: astore_3
    //   96: aconst_null
    //   97: astore 4
    //   99: aload 4
    //   101: invokestatic 188	bgo:a	(Ljava/io/Closeable;)V
    //   104: aload_3
    //   105: athrow
    //   106: astore_3
    //   107: goto -8 -> 99
    //   110: astore 4
    //   112: goto -23 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	19	0	i	int
    //   75	6	1	l	long
    //   39	51	3	localBufferedReader1	java.io.BufferedReader
    //   95	10	3	localObject1	Object
    //   106	1	3	localObject2	Object
    //   41	10	4	localBufferedReader2	java.io.BufferedReader
    //   85	1	4	localException1	Exception
    //   97	3	4	localCloseable	java.io.Closeable
    //   110	1	4	localException2	Exception
    //   47	8	5	str	String
    // Exception table:
    //   from	to	target	type
    //   0	40	85	java/lang/Exception
    //   0	40	95	finally
    //   43	49	106	finally
    //   52	76	106	finally
    //   43	49	110	java/lang/Exception
    //   52	76	110	java/lang/Exception
  }
  
  public final void a(int paramInt)
  {
    switch (avv.1.$SwitchMap$com$snapchat$android$util$StartupContext$Checkpoint[(paramInt - 1)])
    {
    default: 
      mStartupPath = StartupPath.UNKNOWN;
      return;
    case 1: 
      mStartupPath = StartupPath.FROM_KILLED_STATE;
      isAppStart = true;
      return;
    case 2: 
      if (!isAppStart) {
        mStartupPath = StartupPath.FROM_DESTROYED_STATE;
      }
      for (;;)
      {
        isAppStart = false;
        return;
        if (mAppCreationTime != null)
        {
          Long localLong = mAppCreationTime;
          EasyMetric.EasyMetricFactory.a("APP_CREATION_TIMED").a(mAppCreationTime.longValue()).b(false);
        }
      }
    }
    mStartupPath = StartupPath.FROM_BACKGROUNDED_STATE;
  }
  
  public static enum a
  {
    static
    {
      ACTIVITY_CREATE_CHECKPOINT$6dad94c5 = 2;
      ACTIVITY_RESTART_CHECKPOINT$6dad94c5 = 3;
    }
    
    public static int[] a()
    {
      return (int[])$VALUES$25e79240.clone();
    }
  }
}

/* Location:
 * Qualified Name:     avv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */