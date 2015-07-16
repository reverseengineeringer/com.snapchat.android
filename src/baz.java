import android.os.SystemClock;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;

public final class baz
{
  private static final String SEPARATOR = ", ";
  protected static final long UNSUPPORTED = -1L;
  private static bhk mClock = null;
  private static Long sAppStartTime = null;
  protected static HashMap<String, Long> sEventStartTimeMap = new HashMap();
  
  private static long a(String paramString, int paramInt, boolean paramBoolean)
  {
    if (mClock == null) {
      mClock = bhlmClock;
    }
    long l2 = SystemClock.elapsedRealtime();
    long l1;
    if (sAppStartTime == null)
    {
      sAppStartTime = Long.valueOf(l2);
      l1 = 0L;
      switch (baz.1.$SwitchMap$com$snapchat$android$util$debug$TimeLogger$Type[(paramInt - 1)])
      {
      }
    }
    for (;;)
    {
      label72:
      l2 = -1L;
      long l3;
      do
      {
        return l2;
        l1 = l2 - sAppStartTime.longValue();
        break;
        sEventStartTimeMap.put(paramString, Long.valueOf(l2));
        if (!paramBoolean) {
          break label72;
        }
        new StringBuilder().append(l1).append(", ").append(paramString).append(" BEGIN");
        break label72;
        l3 = l2 - avb.a((Long)sEventStartTimeMap.get(paramString));
        l2 = l3;
      } while (!paramBoolean);
      new StringBuilder().append(l1).append(", ").append(paramString).append(" END ").append(l3);
      return l3;
      if (paramBoolean) {
        new StringBuilder().append(l1).append(", ").append(paramString);
      }
    }
  }
  
  public static void a()
  {
    sAppStartTime = null;
    sEventStartTimeMap.clear();
  }
  
  public static void a(String paramString)
  {
    a(paramString, baz.a.BEGIN$1a20a190, false);
  }
  
  public static long b(String paramString)
  {
    return a(paramString, baz.a.END$1a20a190, false);
  }
  
  public static String b()
  {
    StackTraceElement localStackTraceElement = Thread.currentThread().getStackTrace()[4];
    String str = localStackTraceElement.getClassName();
    str = str.substring(str.lastIndexOf('.') + 1);
    return str + "." + localStackTraceElement.getMethodName();
  }
  
  public static void c(String paramString)
  {
    if (ReleaseManager.f()) {
      a(paramString, baz.a.ONE_TIME_EVENT$1a20a190, true);
    }
  }
  
  static enum a
  {
    public static int[] a()
    {
      return (int[])$VALUES$16eae95.clone();
    }
  }
}

/* Location:
 * Qualified Name:     baz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */