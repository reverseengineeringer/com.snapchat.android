import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class bxb
  extends AsyncTask<Void, Void, Boolean>
{
  public Context a;
  public Handler b;
  public ProgressDialog c;
  private boolean d;
  private final int e;
  private final String f;
  private final Map<String, String> g;
  
  public bxb(Context paramContext, Handler paramHandler, String paramString, int paramInt, Map<String, String> paramMap)
  {
    a = paramContext;
    b = paramHandler;
    f = paramString;
    e = paramInt;
    g = paramMap;
    d = true;
    if (paramContext != null) {
      bwa.a(paramContext);
    }
  }
  
  /* Error */
  private Boolean a()
  {
    // Byte code:
    //   0: getstatic 57	bxg$a:a	Lbxg;
    //   3: getfield 62	bxg:a	Lorg/apache/http/client/HttpClient;
    //   6: astore_3
    //   7: aload_0
    //   8: getfield 33	bxb:e	I
    //   11: istore_1
    //   12: aload_0
    //   13: getfield 35	bxb:g	Ljava/util/Map;
    //   16: astore_2
    //   17: iload_1
    //   18: iconst_1
    //   19: if_icmpne +168 -> 187
    //   22: new 64	java/util/ArrayList
    //   25: dup
    //   26: invokespecial 65	java/util/ArrayList:<init>	()V
    //   29: astore 4
    //   31: aload_2
    //   32: invokeinterface 71 1 0
    //   37: invokeinterface 77 1 0
    //   42: astore_2
    //   43: aload_2
    //   44: invokeinterface 83 1 0
    //   49: ifeq +62 -> 111
    //   52: aload_2
    //   53: invokeinterface 87 1 0
    //   58: checkcast 89	java/util/Map$Entry
    //   61: astore 5
    //   63: aload 4
    //   65: new 91	org/apache/http/message/BasicNameValuePair
    //   68: dup
    //   69: aload 5
    //   71: invokeinterface 94 1 0
    //   76: checkcast 96	java/lang/String
    //   79: aload 5
    //   81: invokeinterface 99 1 0
    //   86: checkcast 96	java/lang/String
    //   89: invokespecial 102	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: invokeinterface 108 2 0
    //   97: pop
    //   98: goto -55 -> 43
    //   101: astore_2
    //   102: aload_2
    //   103: invokevirtual 111	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   106: iconst_0
    //   107: invokestatic 117	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   110: areturn
    //   111: new 119	org/apache/http/client/entity/UrlEncodedFormEntity
    //   114: dup
    //   115: aload 4
    //   117: ldc 121
    //   119: invokespecial 124	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   122: astore 4
    //   124: aload 4
    //   126: ldc 121
    //   128: invokevirtual 128	org/apache/http/client/entity/UrlEncodedFormEntity:setContentEncoding	(Ljava/lang/String;)V
    //   131: new 130	org/apache/http/client/methods/HttpPost
    //   134: dup
    //   135: aload_0
    //   136: getfield 31	bxb:f	Ljava/lang/String;
    //   139: invokespecial 132	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   142: astore_2
    //   143: aload_2
    //   144: aload 4
    //   146: invokevirtual 136	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   149: aload_3
    //   150: aload_2
    //   151: invokeinterface 142 2 0
    //   156: astore_2
    //   157: aload_2
    //   158: ifnull -52 -> 106
    //   161: aload_2
    //   162: invokeinterface 148 1 0
    //   167: invokestatic 154	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   170: astore_2
    //   171: aload_2
    //   172: invokestatic 160	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   175: ifne -69 -> 106
    //   178: aload_0
    //   179: aload_2
    //   180: invokespecial 163	bxb:a	(Ljava/lang/String;)Z
    //   183: invokestatic 117	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   186: areturn
    //   187: iload_1
    //   188: iconst_2
    //   189: if_icmpne +106 -> 295
    //   192: aload_2
    //   193: ldc -91
    //   195: invokeinterface 169 2 0
    //   200: checkcast 96	java/lang/String
    //   203: astore 4
    //   205: aload_2
    //   206: ldc -85
    //   208: invokeinterface 169 2 0
    //   213: checkcast 96	java/lang/String
    //   216: astore_2
    //   217: new 173	java/lang/StringBuilder
    //   220: dup
    //   221: ldc -81
    //   223: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: new 173	java/lang/StringBuilder
    //   229: dup
    //   230: invokespecial 177	java/lang/StringBuilder:<init>	()V
    //   233: aload 4
    //   235: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: ldc -73
    //   240: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: aload_2
    //   244: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokevirtual 190	java/lang/String:getBytes	()[B
    //   253: invokestatic 195	bxf:a	([B)Ljava/lang/String;
    //   256: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: astore 4
    //   264: new 130	org/apache/http/client/methods/HttpPost
    //   267: dup
    //   268: aload_0
    //   269: getfield 31	bxb:f	Ljava/lang/String;
    //   272: invokespecial 132	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   275: astore_2
    //   276: aload_2
    //   277: ldc -59
    //   279: aload 4
    //   281: invokevirtual 200	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: goto -135 -> 149
    //   287: astore_2
    //   288: aload_2
    //   289: invokevirtual 201	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   292: goto -186 -> 106
    //   295: iload_1
    //   296: iconst_3
    //   297: if_icmpne +83 -> 380
    //   300: aload_2
    //   301: ldc -53
    //   303: invokeinterface 169 2 0
    //   308: checkcast 96	java/lang/String
    //   311: astore 4
    //   313: aload_2
    //   314: ldc -51
    //   316: invokeinterface 169 2 0
    //   321: checkcast 96	java/lang/String
    //   324: astore_2
    //   325: new 207	org/apache/http/client/methods/HttpGet
    //   328: dup
    //   329: new 173	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 177	java/lang/StringBuilder:<init>	()V
    //   336: aload_0
    //   337: getfield 31	bxb:f	Ljava/lang/String;
    //   340: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: ldc -47
    //   345: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload 4
    //   350: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: ldc -45
    //   355: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: aload_2
    //   359: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokespecial 212	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   368: astore_2
    //   369: goto -220 -> 149
    //   372: astore_2
    //   373: aload_2
    //   374: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   377: goto -271 -> 106
    //   380: new 215	java/lang/IllegalArgumentException
    //   383: dup
    //   384: new 173	java/lang/StringBuilder
    //   387: dup
    //   388: ldc -39
    //   390: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   393: iload_1
    //   394: invokevirtual 220	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   397: ldc -34
    //   399: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokespecial 223	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   408: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	409	0	this	bxb
    //   11	383	1	i	int
    //   16	37	2	localObject1	Object
    //   101	2	2	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   142	135	2	localObject2	Object
    //   287	27	2	localClientProtocolException	org.apache.http.client.ClientProtocolException
    //   324	45	2	localObject3	Object
    //   372	2	2	localIOException	java.io.IOException
    //   6	144	3	localHttpClient	org.apache.http.client.HttpClient
    //   29	320	4	localObject4	Object
    //   61	19	5	localEntry	java.util.Map.Entry
    // Exception table:
    //   from	to	target	type
    //   7	17	101	java/io/UnsupportedEncodingException
    //   22	43	101	java/io/UnsupportedEncodingException
    //   43	98	101	java/io/UnsupportedEncodingException
    //   111	149	101	java/io/UnsupportedEncodingException
    //   149	157	101	java/io/UnsupportedEncodingException
    //   161	187	101	java/io/UnsupportedEncodingException
    //   192	284	101	java/io/UnsupportedEncodingException
    //   300	369	101	java/io/UnsupportedEncodingException
    //   380	409	101	java/io/UnsupportedEncodingException
    //   7	17	287	org/apache/http/client/ClientProtocolException
    //   22	43	287	org/apache/http/client/ClientProtocolException
    //   43	98	287	org/apache/http/client/ClientProtocolException
    //   111	149	287	org/apache/http/client/ClientProtocolException
    //   149	157	287	org/apache/http/client/ClientProtocolException
    //   161	187	287	org/apache/http/client/ClientProtocolException
    //   192	284	287	org/apache/http/client/ClientProtocolException
    //   300	369	287	org/apache/http/client/ClientProtocolException
    //   380	409	287	org/apache/http/client/ClientProtocolException
    //   7	17	372	java/io/IOException
    //   22	43	372	java/io/IOException
    //   43	98	372	java/io/IOException
    //   111	149	372	java/io/IOException
    //   149	157	372	java/io/IOException
    //   161	187	372	java/io/IOException
    //   192	284	372	java/io/IOException
    //   300	369	372	java/io/IOException
    //   380	409	372	java/io/IOException
  }
  
  private boolean a(String paramString)
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("net.hockeyapp.android.login", 0);
    try
    {
      paramString = new JSONObject(paramString);
      String str = paramString.getString("status");
      if (TextUtils.isEmpty(str)) {
        return false;
      }
      if (e == 1)
      {
        if (!str.equals("identified")) {
          break label224;
        }
        paramString = paramString.getString("iuid");
        if (TextUtils.isEmpty(paramString)) {
          break label224;
        }
        bxj.a(localSharedPreferences.edit().putString("iuid", paramString));
        return true;
      }
      if (e == 2)
      {
        if (!str.equals("authorized")) {
          break label224;
        }
        paramString = paramString.getString("auid");
        if (TextUtils.isEmpty(paramString)) {
          break label224;
        }
        bxj.a(localSharedPreferences.edit().putString("auid", paramString));
        return true;
      }
      if (e == 3)
      {
        if (str.equals("validated")) {
          return true;
        }
        bxj.a(localSharedPreferences.edit().remove("iuid").remove("auid"));
        return false;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return false;
    }
    throw new IllegalArgumentException("Login mode " + e + " not supported.");
    label224:
    return false;
  }
  
  protected final void onPreExecute()
  {
    if (((c == null) || (!c.isShowing())) && (d)) {
      c = ProgressDialog.show(a, "", "Please wait...", true, false);
    }
  }
}

/* Location:
 * Qualified Name:     bxb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */