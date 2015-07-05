import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.IpRoutingErrorTask;
import com.snapchat.android.api2.IpRoutingErrorTask.ErrorType;

public final class pv
  extends th
{
  public static final String PATH = "/bq/ip_routing";
  private final Gson mGson;
  final bft mUrlRoutingManager;
  private final ajx mUserPrefs;
  
  public pv()
  {
    this(bft.a(), ajx.a(), atn.a());
  }
  
  private pv(@cgb bft parambft, @cgb ajx paramajx, @cgb Gson paramGson)
  {
    mUrlRoutingManager = parambft;
    mUserPrefs = paramajx;
    mGson = paramGson;
  }
  
  private static void a(IpRoutingErrorTask.ErrorType paramErrorType, String paramString)
  {
    new IpRoutingErrorTask(paramErrorType, paramString).f();
  }
  
  /* Error */
  @caq
  public final void a(@cgb uc paramuc)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 71	uc:d	()Z
    //   4: ifne +37 -> 41
    //   7: aload_1
    //   8: getfield 75	uc:mCaughtException	Ljava/lang/Exception;
    //   11: ifnonnull +19 -> 30
    //   14: aload_1
    //   15: getfield 79	uc:mResponseCode	I
    //   18: invokestatic 85	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_1
    //   22: getstatic 91	com/snapchat/android/api2/IpRoutingErrorTask$ErrorType:NETWORK_ERROR	Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    //   25: aload_1
    //   26: invokestatic 93	pv:a	(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    //   29: return
    //   30: aload_1
    //   31: getfield 75	uc:mCaughtException	Ljava/lang/Exception;
    //   34: invokevirtual 98	java/lang/Exception:toString	()Ljava/lang/String;
    //   37: astore_1
    //   38: goto -16 -> 22
    //   41: aload_1
    //   42: invokevirtual 101	uc:e	()Ljava/lang/String;
    //   45: astore_1
    //   46: aload_0
    //   47: getfield 50	pv:mGson	Lcom/google/gson/Gson;
    //   50: aload_1
    //   51: ldc 9
    //   53: invokevirtual 107	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   56: checkcast 9	pv$b
    //   59: astore_2
    //   60: aload_0
    //   61: getfield 46	pv:mUrlRoutingManager	Lbft;
    //   64: astore_1
    //   65: aload_2
    //   66: getfield 110	pv$b:serializedUrlRoutingMap	Ljava/lang/String;
    //   69: astore_2
    //   70: aload_1
    //   71: getfield 114	bft:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   74: invokeinterface 120 1 0
    //   79: invokeinterface 125 1 0
    //   84: aload_2
    //   85: invokestatic 131	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifne +37 -> 125
    //   91: aload_1
    //   92: aload_2
    //   93: invokevirtual 134	bft:b	(Ljava/lang/String;)Ljava/util/Map;
    //   96: astore_2
    //   97: aload_1
    //   98: getfield 138	bft:mUrlRoutingMap	Ljava/util/Map;
    //   101: aload_2
    //   102: invokeinterface 144 2 0
    //   107: aload_1
    //   108: aload_1
    //   109: getfield 138	bft:mUrlRoutingMap	Ljava/util/Map;
    //   112: invokestatic 149	aty:a	(Ljava/util/Map;)Ljava/lang/String;
    //   115: putfield 152	bft:mSerializedUrlRoutingMap	Ljava/lang/String;
    //   118: aload_1
    //   119: getfield 152	bft:mSerializedUrlRoutingMap	Ljava/lang/String;
    //   122: invokestatic 156	ajx:t	(Ljava/lang/String;)V
    //   125: aload_1
    //   126: getfield 114	bft:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   129: invokeinterface 120 1 0
    //   134: invokeinterface 159 1 0
    //   139: return
    //   140: astore_1
    //   141: getstatic 162	com/snapchat/android/api2/IpRoutingErrorTask$ErrorType:JSON_ERROR	Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    //   144: aload_1
    //   145: invokevirtual 165	java/lang/Throwable:toString	()Ljava/lang/String;
    //   148: invokestatic 93	pv:a	(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    //   151: return
    //   152: astore_2
    //   153: aload_1
    //   154: getfield 114	bft:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   157: invokeinterface 120 1 0
    //   162: invokeinterface 159 1 0
    //   167: aload_2
    //   168: athrow
    //   169: astore_1
    //   170: goto -29 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	pv
    //   0	173	1	paramuc	uc
    //   59	43	2	localObject1	Object
    //   152	16	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   41	60	140	com/google/gson/JsonSyntaxException
    //   84	125	152	finally
    //   41	60	169	java/lang/StackOverflowError
  }
  
  public final String d()
  {
    return "/bq/ip_routing";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("currentUrlEntities")
    String serializedUrlRoutingMap = mUrlRoutingManager.c();
    @SerializedName("userId")
    String username = ajx.l();
    
    public a() {}
  }
  
  static class b
  {
    @SerializedName("url_server_json")
    @cgc
    String serializedUrlRoutingMap;
  }
}

/* Location:
 * Qualified Name:     pv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */