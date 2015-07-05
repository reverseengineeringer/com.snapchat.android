package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;

public class ek
  extends fd
{
  private static final String a = ek.class.getSimpleName();
  private String b;
  private a c;
  private int d = 10000;
  private int e = 15000;
  private boolean f = true;
  private final ds<String, String> i = new ds();
  private c j;
  private HttpURLConnection k;
  private HttpClient l;
  private boolean m;
  private boolean n;
  private Exception o;
  private int p = -1;
  private final ds<String, String> q = new ds();
  private final Object r = new Object();
  
  private void a(InputStream paramInputStream)
  {
    if (j == null) {}
    while ((b()) || (paramInputStream == null)) {
      return;
    }
    j.a(this, paramInputStream);
  }
  
  private void a(OutputStream paramOutputStream)
  {
    if (j == null) {}
    while ((b()) || (paramOutputStream == null)) {
      return;
    }
    j.a(this, paramOutputStream);
  }
  
  /* Error */
  private void m()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: getfield 100	com/flurry/sdk/ek:n	Z
    //   10: ifeq +4 -> 14
    //   13: return
    //   14: new 102	java/net/URL
    //   17: dup
    //   18: aload_0
    //   19: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   22: invokespecial 107	java/net/URL:<init>	(Ljava/lang/String;)V
    //   25: astore_2
    //   26: aload_0
    //   27: aload_2
    //   28: invokevirtual 111	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   31: checkcast 113	java/net/HttpURLConnection
    //   34: putfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   37: aload_0
    //   38: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   41: aload_0
    //   42: getfield 59	com/flurry/sdk/ek:d	I
    //   45: invokevirtual 117	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   48: aload_0
    //   49: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   52: aload_0
    //   53: getfield 61	com/flurry/sdk/ek:e	I
    //   56: invokevirtual 120	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   59: aload_0
    //   60: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   63: aload_0
    //   64: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   67: invokevirtual 125	com/flurry/sdk/ek$a:toString	()Ljava/lang/String;
    //   70: invokevirtual 128	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   73: aload_0
    //   74: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   77: aload_0
    //   78: getfield 63	com/flurry/sdk/ek:f	Z
    //   81: invokevirtual 132	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   84: aload_0
    //   85: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   88: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   91: aload_0
    //   92: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   95: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   98: invokevirtual 140	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   101: aload_0
    //   102: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   105: iconst_1
    //   106: invokevirtual 143	java/net/HttpURLConnection:setDoInput	(Z)V
    //   109: aload_0
    //   110: getfield 68	com/flurry/sdk/ek:i	Lcom/flurry/sdk/ds;
    //   113: invokevirtual 146	com/flurry/sdk/ds:b	()Ljava/util/Collection;
    //   116: invokeinterface 152 1 0
    //   121: astore_2
    //   122: aload_2
    //   123: invokeinterface 157 1 0
    //   128: ifeq +48 -> 176
    //   131: aload_2
    //   132: invokeinterface 161 1 0
    //   137: checkcast 163	java/util/Map$Entry
    //   140: astore_3
    //   141: aload_0
    //   142: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   145: aload_3
    //   146: invokeinterface 166 1 0
    //   151: checkcast 168	java/lang/String
    //   154: aload_3
    //   155: invokeinterface 171 1 0
    //   160: checkcast 168	java/lang/String
    //   163: invokevirtual 175	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   166: goto -44 -> 122
    //   169: astore_2
    //   170: aload_0
    //   171: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   174: aload_2
    //   175: athrow
    //   176: getstatic 179	com/flurry/sdk/ek$a:b	Lcom/flurry/sdk/ek$a;
    //   179: aload_0
    //   180: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   183: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   186: ifne +27 -> 213
    //   189: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   192: aload_0
    //   193: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   196: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   199: ifne +14 -> 213
    //   202: aload_0
    //   203: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   206: ldc -75
    //   208: ldc -73
    //   210: invokevirtual 186	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   213: aload_0
    //   214: getfield 100	com/flurry/sdk/ek:n	Z
    //   217: istore_1
    //   218: iload_1
    //   219: ifeq +8 -> 227
    //   222: aload_0
    //   223: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   226: return
    //   227: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   230: aload_0
    //   231: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   234: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   237: istore_1
    //   238: iload_1
    //   239: ifeq +33 -> 272
    //   242: aload_0
    //   243: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   246: invokevirtual 190	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   249: astore_2
    //   250: new 192	java/io/BufferedOutputStream
    //   253: dup
    //   254: aload_2
    //   255: invokespecial 194	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   258: astore_3
    //   259: aload_0
    //   260: aload_3
    //   261: invokespecial 84	com/flurry/sdk/ek:a	(Ljava/io/OutputStream;)V
    //   264: aload_3
    //   265: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   268: aload_2
    //   269: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   272: aload_0
    //   273: aload_0
    //   274: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   277: invokevirtual 203	java/net/HttpURLConnection:getResponseCode	()I
    //   280: putfield 70	com/flurry/sdk/ek:p	I
    //   283: aload_0
    //   284: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   287: invokevirtual 207	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   290: invokeinterface 213 1 0
    //   295: invokeinterface 152 1 0
    //   300: astore_2
    //   301: aload_2
    //   302: invokeinterface 157 1 0
    //   307: ifeq +80 -> 387
    //   310: aload_2
    //   311: invokeinterface 161 1 0
    //   316: checkcast 163	java/util/Map$Entry
    //   319: astore_3
    //   320: aload_3
    //   321: invokeinterface 171 1 0
    //   326: checkcast 215	java/util/List
    //   329: invokeinterface 216 1 0
    //   334: astore 5
    //   336: aload 5
    //   338: invokeinterface 157 1 0
    //   343: ifeq -42 -> 301
    //   346: aload 5
    //   348: invokeinterface 161 1 0
    //   353: checkcast 168	java/lang/String
    //   356: astore 6
    //   358: aload_0
    //   359: getfield 72	com/flurry/sdk/ek:q	Lcom/flurry/sdk/ds;
    //   362: aload_3
    //   363: invokeinterface 166 1 0
    //   368: aload 6
    //   370: invokevirtual 219	com/flurry/sdk/ds:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   373: goto -37 -> 336
    //   376: aload_3
    //   377: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   380: aload 4
    //   382: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   385: aload_2
    //   386: athrow
    //   387: getstatic 179	com/flurry/sdk/ek$a:b	Lcom/flurry/sdk/ek$a;
    //   390: aload_0
    //   391: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   394: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   397: ifne +23 -> 420
    //   400: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   403: aload_0
    //   404: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   407: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   410: istore_1
    //   411: iload_1
    //   412: ifne +8 -> 420
    //   415: aload_0
    //   416: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   419: return
    //   420: aload_0
    //   421: getfield 100	com/flurry/sdk/ek:n	Z
    //   424: istore_1
    //   425: iload_1
    //   426: ifeq +8 -> 434
    //   429: aload_0
    //   430: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   433: return
    //   434: aload_0
    //   435: getfield 80	com/flurry/sdk/ek:k	Ljava/net/HttpURLConnection;
    //   438: invokevirtual 223	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   441: astore_2
    //   442: new 225	java/io/BufferedInputStream
    //   445: dup
    //   446: aload_2
    //   447: invokespecial 227	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   450: astore_3
    //   451: aload_0
    //   452: aload_3
    //   453: invokespecial 229	com/flurry/sdk/ek:a	(Ljava/io/InputStream;)V
    //   456: aload_3
    //   457: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   460: aload_2
    //   461: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   464: aload_0
    //   465: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   468: return
    //   469: astore_2
    //   470: aconst_null
    //   471: astore_3
    //   472: aload_3
    //   473: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   476: aload 4
    //   478: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   481: aload_2
    //   482: athrow
    //   483: astore 5
    //   485: aconst_null
    //   486: astore_3
    //   487: aload_2
    //   488: astore 4
    //   490: aload 5
    //   492: astore_2
    //   493: goto -21 -> 472
    //   496: astore 5
    //   498: aload_2
    //   499: astore 4
    //   501: aload 5
    //   503: astore_2
    //   504: goto -32 -> 472
    //   507: astore 5
    //   509: aconst_null
    //   510: astore_3
    //   511: aload_2
    //   512: astore 4
    //   514: aload 5
    //   516: astore_2
    //   517: goto -141 -> 376
    //   520: astore 5
    //   522: aload_2
    //   523: astore 4
    //   525: aload 5
    //   527: astore_2
    //   528: goto -152 -> 376
    //   531: astore_2
    //   532: aconst_null
    //   533: astore_3
    //   534: aload 5
    //   536: astore 4
    //   538: goto -162 -> 376
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	541	0	this	ek
    //   217	209	1	bool	boolean
    //   25	107	2	localObject1	Object
    //   169	6	2	localObject2	Object
    //   249	212	2	localObject3	Object
    //   469	19	2	localObject4	Object
    //   492	36	2	localObject5	Object
    //   531	1	2	localObject6	Object
    //   140	394	3	localObject7	Object
    //   1	536	4	localObject8	Object
    //   4	343	5	localIterator	java.util.Iterator
    //   483	8	5	localObject9	Object
    //   496	6	5	localObject10	Object
    //   507	8	5	localObject11	Object
    //   520	15	5	localObject12	Object
    //   356	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   26	122	169	finally
    //   122	166	169	finally
    //   176	213	169	finally
    //   213	218	169	finally
    //   227	238	169	finally
    //   264	272	169	finally
    //   272	301	169	finally
    //   301	336	169	finally
    //   336	373	169	finally
    //   376	387	169	finally
    //   387	411	169	finally
    //   420	425	169	finally
    //   456	464	169	finally
    //   472	483	169	finally
    //   434	442	469	finally
    //   442	451	483	finally
    //   451	456	496	finally
    //   250	259	507	finally
    //   259	264	520	finally
    //   242	250	531	finally
  }
  
  /* Error */
  private void n()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: getfield 100	com/flurry/sdk/ek:n	Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: aload_0
    //   12: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   15: aload_0
    //   16: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   19: invokevirtual 232	com/flurry/sdk/ek$a:a	(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    //   22: astore 6
    //   24: aload_0
    //   25: getfield 68	com/flurry/sdk/ek:i	Lcom/flurry/sdk/ds;
    //   28: invokevirtual 146	com/flurry/sdk/ds:b	()Ljava/util/Collection;
    //   31: invokeinterface 152 1 0
    //   36: astore 7
    //   38: aload 7
    //   40: invokeinterface 157 1 0
    //   45: ifeq +43 -> 88
    //   48: aload 7
    //   50: invokeinterface 161 1 0
    //   55: checkcast 163	java/util/Map$Entry
    //   58: astore 9
    //   60: aload 6
    //   62: aload 9
    //   64: invokeinterface 166 1 0
    //   69: checkcast 168	java/lang/String
    //   72: aload 9
    //   74: invokeinterface 171 1 0
    //   79: checkcast 168	java/lang/String
    //   82: invokevirtual 237	org/apache/http/client/methods/HttpRequestBase:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: goto -47 -> 38
    //   88: getstatic 179	com/flurry/sdk/ek$a:b	Lcom/flurry/sdk/ek$a;
    //   91: aload_0
    //   92: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   95: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   98: ifne +23 -> 121
    //   101: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   104: aload_0
    //   105: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   108: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   111: ifne +10 -> 121
    //   114: aload 6
    //   116: ldc -75
    //   118: invokevirtual 240	org/apache/http/client/methods/HttpRequestBase:removeHeaders	(Ljava/lang/String;)V
    //   121: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   124: aload_0
    //   125: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   128: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   131: ifeq +19 -> 150
    //   134: aload 6
    //   136: checkcast 242	org/apache/http/client/methods/HttpPost
    //   139: new 6	com/flurry/sdk/ek$1
    //   142: dup
    //   143: aload_0
    //   144: invokespecial 245	com/flurry/sdk/ek$1:<init>	(Lcom/flurry/sdk/ek;)V
    //   147: invokevirtual 249	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   150: new 251	org/apache/http/params/BasicHttpParams
    //   153: dup
    //   154: invokespecial 252	org/apache/http/params/BasicHttpParams:<init>	()V
    //   157: astore 7
    //   159: aload 7
    //   161: aload_0
    //   162: getfield 59	com/flurry/sdk/ek:d	I
    //   165: invokestatic 258	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   168: aload 7
    //   170: aload_0
    //   171: getfield 61	com/flurry/sdk/ek:e	I
    //   174: invokestatic 261	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   177: aload 7
    //   179: ldc_w 263
    //   182: aload_0
    //   183: getfield 63	com/flurry/sdk/ek:f	Z
    //   186: invokestatic 269	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   189: invokeinterface 275 3 0
    //   194: pop
    //   195: aload_0
    //   196: aload 7
    //   198: invokestatic 280	com/flurry/sdk/eh:a	(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    //   201: putfield 98	com/flurry/sdk/ek:l	Lorg/apache/http/client/HttpClient;
    //   204: aload_0
    //   205: getfield 98	com/flurry/sdk/ek:l	Lorg/apache/http/client/HttpClient;
    //   208: aload 6
    //   210: invokeinterface 286 2 0
    //   215: astore 6
    //   217: aload_0
    //   218: getfield 100	com/flurry/sdk/ek:n	Z
    //   221: ifeq +23 -> 244
    //   224: new 288	java/lang/Exception
    //   227: dup
    //   228: ldc_w 290
    //   231: invokespecial 291	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   234: athrow
    //   235: astore 6
    //   237: aload_0
    //   238: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   241: aload 6
    //   243: athrow
    //   244: aload 6
    //   246: ifnull +205 -> 451
    //   249: aload_0
    //   250: aload 6
    //   252: invokeinterface 297 1 0
    //   257: invokeinterface 302 1 0
    //   262: putfield 70	com/flurry/sdk/ek:p	I
    //   265: aload 6
    //   267: invokeinterface 306 1 0
    //   272: astore 7
    //   274: aload 7
    //   276: ifnull +72 -> 348
    //   279: aload 7
    //   281: arraylength
    //   282: istore_3
    //   283: iconst_0
    //   284: istore_1
    //   285: iload_1
    //   286: iload_3
    //   287: if_icmpge +61 -> 348
    //   290: aload 7
    //   292: iload_1
    //   293: aaload
    //   294: invokeinterface 312 1 0
    //   299: astore 9
    //   301: aload 9
    //   303: arraylength
    //   304: istore 4
    //   306: iconst_0
    //   307: istore_2
    //   308: iload_2
    //   309: iload 4
    //   311: if_icmpge +192 -> 503
    //   314: aload 9
    //   316: iload_2
    //   317: aaload
    //   318: astore 10
    //   320: aload_0
    //   321: getfield 72	com/flurry/sdk/ek:q	Lcom/flurry/sdk/ds;
    //   324: aload 10
    //   326: invokeinterface 317 1 0
    //   331: aload 10
    //   333: invokeinterface 319 1 0
    //   338: invokevirtual 219	com/flurry/sdk/ds:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   341: iload_2
    //   342: iconst_1
    //   343: iadd
    //   344: istore_2
    //   345: goto -37 -> 308
    //   348: getstatic 179	com/flurry/sdk/ek$a:b	Lcom/flurry/sdk/ek$a;
    //   351: aload_0
    //   352: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   355: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   358: ifne +25 -> 383
    //   361: getstatic 133	com/flurry/sdk/ek$a:c	Lcom/flurry/sdk/ek$a;
    //   364: aload_0
    //   365: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   368: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   371: istore 5
    //   373: iload 5
    //   375: ifne +8 -> 383
    //   378: aload_0
    //   379: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   382: return
    //   383: aload_0
    //   384: getfield 100	com/flurry/sdk/ek:n	Z
    //   387: ifeq +14 -> 401
    //   390: new 288	java/lang/Exception
    //   393: dup
    //   394: ldc_w 290
    //   397: invokespecial 291	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   400: athrow
    //   401: aload 6
    //   403: invokeinterface 323 1 0
    //   408: astore 6
    //   410: aload 6
    //   412: ifnull +39 -> 451
    //   415: aload 6
    //   417: invokeinterface 328 1 0
    //   422: astore 6
    //   424: new 225	java/io/BufferedInputStream
    //   427: dup
    //   428: aload 6
    //   430: invokespecial 227	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   433: astore 7
    //   435: aload_0
    //   436: aload 7
    //   438: invokespecial 229	com/flurry/sdk/ek:a	(Ljava/io/InputStream;)V
    //   441: aload 7
    //   443: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   446: aload 6
    //   448: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   451: aload_0
    //   452: invokespecial 177	com/flurry/sdk/ek:p	()V
    //   455: return
    //   456: astore 6
    //   458: aconst_null
    //   459: astore 7
    //   461: aload 7
    //   463: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   466: aload 8
    //   468: invokestatic 199	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   471: aload 6
    //   473: athrow
    //   474: astore 9
    //   476: aconst_null
    //   477: astore 7
    //   479: aload 6
    //   481: astore 8
    //   483: aload 9
    //   485: astore 6
    //   487: goto -26 -> 461
    //   490: astore 9
    //   492: aload 6
    //   494: astore 8
    //   496: aload 9
    //   498: astore 6
    //   500: goto -39 -> 461
    //   503: iload_1
    //   504: iconst_1
    //   505: iadd
    //   506: istore_1
    //   507: goto -222 -> 285
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	510	0	this	ek
    //   284	223	1	i1	int
    //   307	38	2	i2	int
    //   282	6	3	i3	int
    //   304	8	4	i4	int
    //   371	3	5	bool	boolean
    //   22	194	6	localObject1	Object
    //   235	167	6	localObject2	Object
    //   408	39	6	localObject3	Object
    //   456	24	6	localObject4	Object
    //   485	14	6	localObject5	Object
    //   36	442	7	localObject6	Object
    //   1	494	8	localObject7	Object
    //   58	257	9	localObject8	Object
    //   474	10	9	localObject9	Object
    //   490	7	9	localObject10	Object
    //   318	14	10	localObject11	Object
    // Exception table:
    //   from	to	target	type
    //   150	235	235	finally
    //   249	274	235	finally
    //   279	283	235	finally
    //   290	306	235	finally
    //   320	341	235	finally
    //   348	373	235	finally
    //   383	401	235	finally
    //   401	410	235	finally
    //   441	451	235	finally
    //   461	474	235	finally
    //   415	424	456	finally
    //   424	435	474	finally
    //   435	441	490	finally
  }
  
  private void o()
  {
    if (j == null) {}
    while (b()) {
      return;
    }
    j.a(this);
  }
  
  private void p()
  {
    if (m) {}
    do
    {
      return;
      m = true;
      if (k != null) {
        k.disconnect();
      }
    } while (l == null);
    l.getConnectionManager().shutdown();
  }
  
  private void q()
  {
    if (m) {}
    do
    {
      return;
      m = true;
    } while ((k == null) && (l == null));
    new Thread()
    {
      public void run()
      {
        if (ek.a(ek.this) != null) {
          ek.a(ek.this).disconnect();
        }
        if (ek.b(ek.this) != null) {
          ek.b(ek.this).getConnectionManager().shutdown();
        }
      }
    }.start();
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +8 -> 14
    //   9: aload_0
    //   10: invokespecial 352	com/flurry/sdk/ek:o	()V
    //   13: return
    //   14: invokestatic 357	com/flurry/sdk/es:a	()Lcom/flurry/sdk/es;
    //   17: invokevirtual 359	com/flurry/sdk/es:c	()Z
    //   20: ifne +35 -> 55
    //   23: iconst_3
    //   24: getstatic 53	com/flurry/sdk/ek:a	Ljava/lang/String;
    //   27: new 361	java/lang/StringBuilder
    //   30: dup
    //   31: ldc_w 363
    //   34: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   41: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 369	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 374	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: invokespecial 352	com/flurry/sdk/ek:o	()V
    //   54: return
    //   55: aload_0
    //   56: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   59: ifnull +16 -> 75
    //   62: getstatic 376	com/flurry/sdk/ek$a:a	Lcom/flurry/sdk/ek$a;
    //   65: aload_0
    //   66: getfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   69: invokevirtual 137	com/flurry/sdk/ek$a:equals	(Ljava/lang/Object;)Z
    //   72: ifeq +10 -> 82
    //   75: aload_0
    //   76: getstatic 179	com/flurry/sdk/ek$a:b	Lcom/flurry/sdk/ek$a;
    //   79: putfield 122	com/flurry/sdk/ek:c	Lcom/flurry/sdk/ek$a;
    //   82: getstatic 381	android/os/Build$VERSION:SDK_INT	I
    //   85: bipush 9
    //   87: if_icmplt +52 -> 139
    //   90: aload_0
    //   91: invokespecial 383	com/flurry/sdk/ek:m	()V
    //   94: iconst_4
    //   95: getstatic 53	com/flurry/sdk/ek:a	Ljava/lang/String;
    //   98: new 361	java/lang/StringBuilder
    //   101: dup
    //   102: ldc_w 385
    //   105: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   108: aload_0
    //   109: getfield 70	com/flurry/sdk/ek:p	I
    //   112: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   115: ldc_w 390
    //   118: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload_0
    //   122: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   125: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 369	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 374	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   134: aload_0
    //   135: invokespecial 352	com/flurry/sdk/ek:o	()V
    //   138: return
    //   139: aload_0
    //   140: invokespecial 392	com/flurry/sdk/ek:n	()V
    //   143: goto -49 -> 94
    //   146: astore_1
    //   147: iconst_4
    //   148: getstatic 53	com/flurry/sdk/ek:a	Ljava/lang/String;
    //   151: new 361	java/lang/StringBuilder
    //   154: dup
    //   155: ldc_w 385
    //   158: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload_0
    //   162: getfield 70	com/flurry/sdk/ek:p	I
    //   165: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   168: ldc_w 390
    //   171: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_0
    //   175: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   178: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 369	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokestatic 374	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   187: iconst_3
    //   188: getstatic 53	com/flurry/sdk/ek:a	Ljava/lang/String;
    //   191: new 361	java/lang/StringBuilder
    //   194: dup
    //   195: ldc_w 394
    //   198: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   201: aload_0
    //   202: getfield 104	com/flurry/sdk/ek:b	Ljava/lang/String;
    //   205: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 369	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: aload_1
    //   212: invokestatic 397	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   215: aload_0
    //   216: aload_1
    //   217: putfield 399	com/flurry/sdk/ek:o	Ljava/lang/Exception;
    //   220: aload_0
    //   221: invokespecial 352	com/flurry/sdk/ek:o	()V
    //   224: return
    //   225: astore_1
    //   226: aload_0
    //   227: invokespecial 352	com/flurry/sdk/ek:o	()V
    //   230: aload_1
    //   231: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	ek
    //   4	2	1	str	String
    //   146	71	1	localException	Exception
    //   225	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	5	146	java/lang/Exception
    //   14	50	146	java/lang/Exception
    //   55	75	146	java/lang/Exception
    //   75	82	146	java/lang/Exception
    //   82	94	146	java/lang/Exception
    //   94	134	146	java/lang/Exception
    //   139	143	146	java/lang/Exception
    //   0	5	225	finally
    //   14	50	225	finally
    //   55	75	225	finally
    //   75	82	225	finally
    //   82	94	225	finally
    //   94	134	225	finally
    //   139	143	225	finally
    //   147	220	225	finally
  }
  
  public void a(a parama)
  {
    c = parama;
  }
  
  public void a(c paramc)
  {
    j = paramc;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    i.a(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public List<String> b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return q.a(paramString);
  }
  
  public boolean b()
  {
    synchronized (r)
    {
      boolean bool = n;
      return bool;
    }
  }
  
  public boolean c()
  {
    return (!f()) && (d());
  }
  
  public boolean d()
  {
    return (p >= 200) && (p < 400);
  }
  
  public int e()
  {
    return p;
  }
  
  public boolean f()
  {
    return o != null;
  }
  
  public void g()
  {
    synchronized (r)
    {
      n = true;
      q();
      return;
    }
  }
  
  public void h()
  {
    g();
  }
  
  public static enum a
  {
    private a() {}
    
    public final HttpRequestBase a(String paramString)
    {
      switch (ek.3.a[ordinal()])
      {
      default: 
        return null;
      case 1: 
        return new HttpPost(paramString);
      case 2: 
        return new HttpPut(paramString);
      case 3: 
        return new HttpDelete(paramString);
      case 4: 
        return new HttpHead(paramString);
      }
      return new HttpGet(paramString);
    }
    
    public final String toString()
    {
      switch (ek.3.a[ordinal()])
      {
      default: 
        return null;
      case 1: 
        return "POST";
      case 2: 
        return "PUT";
      case 3: 
        return "DELETE";
      case 4: 
        return "HEAD";
      }
      return "GET";
    }
  }
  
  public static class b
    implements ek.c
  {
    public void a(ek paramek) {}
    
    public void a(ek paramek, InputStream paramInputStream) {}
    
    public void a(ek paramek, OutputStream paramOutputStream) {}
  }
  
  public static abstract interface c
  {
    public abstract void a(ek paramek);
    
    public abstract void a(ek paramek, InputStream paramInputStream);
    
    public abstract void a(ek paramek, OutputStream paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */