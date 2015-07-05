import android.content.Context;
import android.net.http.HttpResponseCache;
import android.os.Build.VERSION;
import java.io.IOException;

public final class bpn
  implements bos
{
  static volatile Object a;
  private static final Object b = new Object();
  private static final ThreadLocal<StringBuilder> c = new ThreadLocal() {};
  private final Context d;
  
  public bpn(Context paramContext)
  {
    d = paramContext.getApplicationContext();
  }
  
  /* Error */
  public final bos.a a(android.net.Uri paramUri, int paramInt)
  {
    // Byte code:
    //   0: getstatic 45	android/os/Build$VERSION:SDK_INT	I
    //   3: bipush 14
    //   5: if_icmplt +70 -> 75
    //   8: aload_0
    //   9: getfield 36	bpn:d	Landroid/content/Context;
    //   12: astore 7
    //   14: getstatic 47	bpn:a	Ljava/lang/Object;
    //   17: ifnonnull +58 -> 75
    //   20: getstatic 23	bpn:b	Ljava/lang/Object;
    //   23: astore 9
    //   25: aload 9
    //   27: monitorenter
    //   28: getstatic 47	bpn:a	Ljava/lang/Object;
    //   31: ifnonnull +41 -> 72
    //   34: aload 7
    //   36: invokestatic 52	bpo:b	(Landroid/content/Context;)Ljava/io/File;
    //   39: astore 10
    //   41: invokestatic 58	android/net/http/HttpResponseCache:getInstalled	()Landroid/net/http/HttpResponseCache;
    //   44: astore 8
    //   46: aload 8
    //   48: astore 7
    //   50: aload 8
    //   52: ifnonnull +15 -> 67
    //   55: aload 10
    //   57: aload 10
    //   59: invokestatic 61	bpo:a	(Ljava/io/File;)J
    //   62: invokestatic 65	android/net/http/HttpResponseCache:install	(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    //   65: astore 7
    //   67: aload 7
    //   69: putstatic 47	bpn:a	Ljava/lang/Object;
    //   72: aload 9
    //   74: monitorexit
    //   75: new 67	java/net/URL
    //   78: dup
    //   79: aload_1
    //   80: invokevirtual 73	android/net/Uri:toString	()Ljava/lang/String;
    //   83: invokespecial 76	java/net/URL:<init>	(Ljava/lang/String;)V
    //   86: invokevirtual 80	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   89: checkcast 82	java/net/HttpURLConnection
    //   92: astore 7
    //   94: aload 7
    //   96: sipush 15000
    //   99: invokevirtual 86	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   102: aload 7
    //   104: sipush 20000
    //   107: invokevirtual 89	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   110: aload 7
    //   112: iconst_1
    //   113: invokevirtual 93	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   116: iload_2
    //   117: ifeq +21 -> 138
    //   120: iload_2
    //   121: invokestatic 98	bpa:c	(I)Z
    //   124: ifeq +82 -> 206
    //   127: ldc 100
    //   129: astore_1
    //   130: aload 7
    //   132: ldc 102
    //   134: aload_1
    //   135: invokevirtual 106	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: aload 7
    //   140: invokevirtual 110	java/net/HttpURLConnection:getResponseCode	()I
    //   143: istore_3
    //   144: iload_3
    //   145: sipush 300
    //   148: if_icmplt +123 -> 271
    //   151: aload 7
    //   153: invokevirtual 113	java/net/HttpURLConnection:disconnect	()V
    //   156: new 115	bos$b
    //   159: dup
    //   160: new 117	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   167: iload_3
    //   168: invokevirtual 122	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   171: ldc 124
    //   173: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload 7
    //   178: invokevirtual 130	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   181: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: iload_2
    //   188: iload_3
    //   189: invokespecial 134	bos$b:<init>	(Ljava/lang/String;II)V
    //   192: athrow
    //   193: astore 7
    //   195: aload 9
    //   197: monitorexit
    //   198: aload 7
    //   200: athrow
    //   201: astore 7
    //   203: goto -128 -> 75
    //   206: getstatic 26	bpn:c	Ljava/lang/ThreadLocal;
    //   209: invokevirtual 140	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   212: checkcast 117	java/lang/StringBuilder
    //   215: astore_1
    //   216: aload_1
    //   217: iconst_0
    //   218: invokevirtual 143	java/lang/StringBuilder:setLength	(I)V
    //   221: iload_2
    //   222: invokestatic 145	bpa:a	(I)Z
    //   225: ifne +10 -> 235
    //   228: aload_1
    //   229: ldc -109
    //   231: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: iload_2
    //   236: invokestatic 149	bpa:b	(I)Z
    //   239: ifne +24 -> 263
    //   242: aload_1
    //   243: invokevirtual 152	java/lang/StringBuilder:length	()I
    //   246: ifle +10 -> 256
    //   249: aload_1
    //   250: bipush 44
    //   252: invokevirtual 155	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   255: pop
    //   256: aload_1
    //   257: ldc -99
    //   259: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: pop
    //   263: aload_1
    //   264: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: astore_1
    //   268: goto -138 -> 130
    //   271: aload 7
    //   273: ldc -97
    //   275: iconst_m1
    //   276: invokevirtual 163	java/net/HttpURLConnection:getHeaderFieldInt	(Ljava/lang/String;I)I
    //   279: i2l
    //   280: lstore 4
    //   282: aload 7
    //   284: ldc -91
    //   286: invokevirtual 169	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   289: invokestatic 172	bpo:a	(Ljava/lang/String;)Z
    //   292: istore 6
    //   294: new 174	bos$a
    //   297: dup
    //   298: aload 7
    //   300: invokevirtual 178	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   303: iload 6
    //   305: lload 4
    //   307: invokespecial 181	bos$a:<init>	(Ljava/io/InputStream;ZJ)V
    //   310: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	311	0	this	bpn
    //   0	311	1	paramUri	android.net.Uri
    //   0	311	2	paramInt	int
    //   143	46	3	i	int
    //   280	26	4	l	long
    //   292	12	6	bool	boolean
    //   12	165	7	localObject1	Object
    //   193	6	7	localObject2	Object
    //   201	98	7	localIOException	IOException
    //   44	7	8	localHttpResponseCache	HttpResponseCache
    //   39	19	10	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   28	46	193	finally
    //   55	67	193	finally
    //   67	72	193	finally
    //   72	75	193	finally
    //   195	198	193	finally
    //   20	28	201	java/io/IOException
    //   198	201	201	java/io/IOException
  }
  
  public final void a()
  {
    Object localObject;
    if ((Build.VERSION.SDK_INT >= 14) && (a != null)) {
      localObject = a;
    }
    try
    {
      ((HttpResponseCache)localObject).close();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bpn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */