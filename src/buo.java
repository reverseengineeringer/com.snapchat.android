import android.os.ConditionVariable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

public final class buo
  implements bun, Runnable
{
  ConditionVariable a = new ConditionVariable(false);
  volatile long b = 10000L;
  private List c = new LinkedList();
  private URL d = null;
  private long e = System.currentTimeMillis();
  private ConditionVariable f = new ConditionVariable(false);
  private brv g;
  private volatile boolean h = false;
  private final Object i = new Object();
  private int j = 50;
  
  public buo(brv parambrv, URL paramURL)
  {
    this(parambrv, paramURL, (byte)0);
  }
  
  private buo(brv parambrv, URL paramURL, byte paramByte)
  {
    g = parambrv;
    d = paramURL;
    j = 50;
    b = 10000L;
  }
  
  private long a()
  {
    long l2 = 0L;
    long l3 = b;
    long l4 = System.currentTimeMillis() - e;
    long l1 = l3;
    if (l4 > 0L)
    {
      l3 -= l4;
      l1 = l3;
      if (l3 < 0L) {
        l1 = l2;
      }
    }
    for (;;)
    {
      l2 = b;
      return l1;
    }
  }
  
  private static boolean a(HttpURLConnection paramHttpURLConnection, JSONObject paramJSONObject)
  {
    boolean bool = false;
    try
    {
      paramHttpURLConnection.getOutputStream().write(paramJSONObject.toString().getBytes("UTF8"));
      int k = paramHttpURLConnection.getResponseCode();
      paramHttpURLConnection.disconnect();
      if (k == 202) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramHttpURLConnection)
    {
      return false;
    }
    catch (IOException paramHttpURLConnection) {}
    return false;
  }
  
  private HttpURLConnection b()
  {
    try
    {
      localHttpURLConnection = (HttpURLConnection)d.openConnection();
      new StringBuilder("Failed to instantiate URLConnection to APM server: ").append(localIOException1.getMessage());
    }
    catch (IOException localIOException1)
    {
      try
      {
        localHttpURLConnection.setConnectTimeout(2500);
        localHttpURLConnection.setRequestProperty("User-Agent", "4.5.4");
        localHttpURLConnection.setRequestProperty("Content-Type", "application/json");
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setRequestMethod("POST");
        return localHttpURLConnection;
      }
      catch (IOException localIOException2)
      {
        HttpURLConnection localHttpURLConnection;
        for (;;) {}
      }
      localIOException1 = localIOException1;
      localHttpURLConnection = null;
    }
    bue.e();
    return localHttpURLConnection;
  }
  
  private boolean c()
  {
    return (!h) && (c.size() < j);
  }
  
  public final void a(btc parambtc)
  {
    if (!c()) {
      return;
    }
    synchronized (i)
    {
      if (!c()) {
        return;
      }
    }
    c.add(parambtc);
    f.open();
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 61	buo:h	Z
    //   4: ifne +160 -> 164
    //   7: aload_0
    //   8: getfield 59	buo:a	Landroid/os/ConditionVariable;
    //   11: invokevirtual 180	android/os/ConditionVariable:block	()V
    //   14: aload_0
    //   15: getfield 57	buo:f	Landroid/os/ConditionVariable;
    //   18: invokevirtual 180	android/os/ConditionVariable:block	()V
    //   21: aload_0
    //   22: getfield 61	buo:h	Z
    //   25: istore_1
    //   26: iload_1
    //   27: ifne +137 -> 164
    //   30: aload_0
    //   31: invokespecial 182	buo:a	()J
    //   34: lconst_0
    //   35: lcmp
    //   36: ifle +10 -> 46
    //   39: aload_0
    //   40: invokespecial 182	buo:a	()J
    //   43: invokestatic 188	java/lang/Thread:sleep	(J)V
    //   46: aload_0
    //   47: invokestatic 48	java/lang/System:currentTimeMillis	()J
    //   50: putfield 50	buo:e	J
    //   53: aload_0
    //   54: invokespecial 190	buo:b	()Ljava/net/HttpURLConnection;
    //   57: astore_2
    //   58: aload_2
    //   59: ifnonnull +12 -> 71
    //   62: aload_0
    //   63: iconst_1
    //   64: putfield 61	buo:h	Z
    //   67: invokestatic 158	bue:e	()V
    //   70: return
    //   71: aload_0
    //   72: getfield 63	buo:i	Ljava/lang/Object;
    //   75: astore_3
    //   76: aload_3
    //   77: monitorenter
    //   78: aload_0
    //   79: getfield 40	buo:c	Ljava/util/List;
    //   82: astore 4
    //   84: aload_0
    //   85: new 37	java/util/LinkedList
    //   88: dup
    //   89: invokespecial 38	java/util/LinkedList:<init>	()V
    //   92: putfield 40	buo:c	Ljava/util/List;
    //   95: aload_0
    //   96: getfield 57	buo:f	Landroid/os/ConditionVariable;
    //   99: invokevirtual 193	android/os/ConditionVariable:close	()V
    //   102: aload_3
    //   103: monitorexit
    //   104: aload_0
    //   105: getfield 71	buo:g	Lbrv;
    //   108: aload 4
    //   110: invokestatic 198	bra:a	(Lbrv;Ljava/util/List;)Lbra;
    //   113: astore_3
    //   114: aload_3
    //   115: ifnonnull +33 -> 148
    //   118: aload_0
    //   119: iconst_1
    //   120: putfield 61	buo:h	Z
    //   123: invokestatic 158	bue:e	()V
    //   126: return
    //   127: astore_2
    //   128: new 143	java/lang/StringBuilder
    //   131: dup
    //   132: ldc -56
    //   134: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: aload_2
    //   138: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: return
    //   143: astore_2
    //   144: aload_3
    //   145: monitorexit
    //   146: aload_2
    //   147: athrow
    //   148: aload_2
    //   149: aload_3
    //   150: getfield 206	bra:a	Lorg/json/JSONObject;
    //   153: invokestatic 208	buo:a	(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)Z
    //   156: pop
    //   157: goto -157 -> 0
    //   160: astore_2
    //   161: goto -115 -> 46
    //   164: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	buo
    //   25	2	1	bool	boolean
    //   57	2	2	localHttpURLConnection1	HttpURLConnection
    //   127	11	2	localException	Exception
    //   143	6	2	localHttpURLConnection2	HttpURLConnection
    //   160	1	2	localInterruptedException	InterruptedException
    //   82	27	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   0	26	127	java/lang/Exception
    //   30	46	127	java/lang/Exception
    //   46	58	127	java/lang/Exception
    //   62	70	127	java/lang/Exception
    //   71	78	127	java/lang/Exception
    //   104	114	127	java/lang/Exception
    //   118	126	127	java/lang/Exception
    //   144	148	127	java/lang/Exception
    //   148	157	127	java/lang/Exception
    //   78	104	143	finally
    //   30	46	160	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     buo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */