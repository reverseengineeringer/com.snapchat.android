import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.IpRoutingErrorTask;
import com.snapchat.android.api2.IpRoutingErrorTask.ErrorType;

public final class qm
  extends tx
{
  public static final String PATH = "/bq/ip_routing";
  private final Gson mGson;
  final bgt mUrlRoutingManager;
  private final akr mUserPrefs;
  
  public qm()
  {
    this(bgt.a(), akr.a(), aul.a());
  }
  
  private qm(@chc bgt parambgt, @chc akr paramakr, @chc Gson paramGson)
  {
    mUrlRoutingManager = parambgt;
    mUserPrefs = paramakr;
    mGson = paramGson;
  }
  
  private static void a(IpRoutingErrorTask.ErrorType paramErrorType, String paramString)
  {
    new IpRoutingErrorTask(paramErrorType, paramString).execute();
  }
  
  public final String getPath()
  {
    return "/bq/ip_routing";
  }
  
  /* Error */
  @cbr
  public final void onResult(@chc us paramus)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 79	us:d	()Z
    //   4: ifne +37 -> 41
    //   7: aload_1
    //   8: getfield 83	us:mCaughtException	Ljava/lang/Exception;
    //   11: ifnonnull +19 -> 30
    //   14: aload_1
    //   15: getfield 87	us:mResponseCode	I
    //   18: invokestatic 93	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_1
    //   22: getstatic 99	com/snapchat/android/api2/IpRoutingErrorTask$ErrorType:NETWORK_ERROR	Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    //   25: aload_1
    //   26: invokestatic 101	qm:a	(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    //   29: return
    //   30: aload_1
    //   31: getfield 83	us:mCaughtException	Ljava/lang/Exception;
    //   34: invokevirtual 105	java/lang/Exception:toString	()Ljava/lang/String;
    //   37: astore_1
    //   38: goto -16 -> 22
    //   41: aload_1
    //   42: invokevirtual 108	us:e	()Ljava/lang/String;
    //   45: astore_1
    //   46: aload_0
    //   47: getfield 50	qm:mGson	Lcom/google/gson/Gson;
    //   50: aload_1
    //   51: ldc 9
    //   53: invokevirtual 114	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   56: checkcast 9	qm$b
    //   59: astore_2
    //   60: aload_0
    //   61: getfield 46	qm:mUrlRoutingManager	Lbgt;
    //   64: astore_1
    //   65: aload_2
    //   66: getfield 117	qm$b:serializedUrlRoutingMap	Ljava/lang/String;
    //   69: astore_2
    //   70: aload_1
    //   71: getfield 121	bgt:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   74: invokeinterface 127 1 0
    //   79: invokeinterface 132 1 0
    //   84: aload_2
    //   85: invokestatic 138	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifne +37 -> 125
    //   91: aload_1
    //   92: aload_2
    //   93: invokevirtual 141	bgt:b	(Ljava/lang/String;)Ljava/util/Map;
    //   96: astore_2
    //   97: aload_1
    //   98: getfield 145	bgt:mUrlRoutingMap	Ljava/util/Map;
    //   101: aload_2
    //   102: invokeinterface 151 2 0
    //   107: aload_1
    //   108: aload_1
    //   109: getfield 145	bgt:mUrlRoutingMap	Ljava/util/Map;
    //   112: invokestatic 156	auw:a	(Ljava/util/Map;)Ljava/lang/String;
    //   115: putfield 159	bgt:mSerializedUrlRoutingMap	Ljava/lang/String;
    //   118: aload_1
    //   119: getfield 159	bgt:mSerializedUrlRoutingMap	Ljava/lang/String;
    //   122: invokestatic 163	akr:t	(Ljava/lang/String;)V
    //   125: aload_1
    //   126: getfield 121	bgt:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   129: invokeinterface 127 1 0
    //   134: invokeinterface 166 1 0
    //   139: return
    //   140: astore_1
    //   141: getstatic 169	com/snapchat/android/api2/IpRoutingErrorTask$ErrorType:JSON_ERROR	Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    //   144: aload_1
    //   145: invokevirtual 172	java/lang/Throwable:toString	()Ljava/lang/String;
    //   148: invokestatic 101	qm:a	(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    //   151: return
    //   152: astore_2
    //   153: aload_1
    //   154: getfield 121	bgt:mUrlRoutingRWLock	Ljava/util/concurrent/locks/ReadWriteLock;
    //   157: invokeinterface 127 1 0
    //   162: invokeinterface 166 1 0
    //   167: aload_2
    //   168: athrow
    //   169: astore_1
    //   170: goto -29 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	qm
    //   0	173	1	paramus	us
    //   59	43	2	localObject1	Object
    //   152	16	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   41	60	140	com/google/gson/JsonSyntaxException
    //   84	125	152	finally
    //   41	60	169	java/lang/StackOverflowError
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("currentUrlEntities")
    String serializedUrlRoutingMap = mUrlRoutingManager.c();
    @SerializedName("userId")
    String username = akr.l();
    
    public a() {}
  }
  
  static class b
  {
    @SerializedName("url_server_json")
    @chd
    String serializedUrlRoutingMap;
  }
}

/* Location:
 * Qualified Name:     qm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */