package com.brightcove.player.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class HttpService
{
  public static final int DEFAULT_CONNECT_TIMEOUT = 10000;
  public static final int DEFAULT_READ_TIMEOUT = 10000;
  public static final String TAG = HttpService.class.getSimpleName();
  private int connectTimeout = 10000;
  private int readTimeout = 10000;
  
  public HttpService() {}
  
  public HttpService(int paramInt1, int paramInt2)
  {
    connectTimeout = paramInt1;
    readTimeout = paramInt2;
  }
  
  public static URI buildURIWithQueryParameters(String paramString, Map<String, Object> paramMap)
  {
    if (paramString == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("baseURLRequired"));
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return new URI(localStringBuilder.toString());
    }
    if (paramString.contains("?")) {
      localStringBuilder.append("&");
    }
    for (;;)
    {
      paramString = paramMap.entrySet().iterator();
      while (paramString.hasNext())
      {
        paramMap = (Map.Entry)paramString.next();
        if ((paramMap != null) && (paramMap.getKey() != null) && (paramMap.getValue() != null))
        {
          localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), "UTF-8"));
          localStringBuilder.append("=");
          localStringBuilder.append(URLEncoder.encode(paramMap.getValue().toString(), "UTF-8"));
          if (paramString.hasNext()) {
            localStringBuilder.append("&");
          }
        }
      }
      localStringBuilder.append("?");
    }
    return new URI(localStringBuilder.toString());
  }
  
  private static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i1 = outHeight;
    int n = outWidth;
    int m = 1;
    int k = 1;
    new StringBuilder("calculateInSampleSize: height = ").append(i1).append(", width = ").append(n).append(", maxWidth = ").append(paramInt1).append(", maxHeight = ").append(paramInt2);
    int j;
    int i;
    if (n * paramInt2 > paramInt1 * i1)
    {
      j = paramInt1 * i1 / n;
      i = paramInt1;
    }
    for (;;)
    {
      new StringBuilder("calculateInSampleSize: maxWidth = ").append(i).append(", maxHeight = ").append(j);
      if (i1 <= j)
      {
        paramInt2 = m;
        if (n <= i) {
          break;
        }
      }
      m = i1 / 2;
      n /= 2;
      paramInt1 = k;
      for (;;)
      {
        paramInt2 = paramInt1;
        if (m / paramInt1 <= j) {
          break;
        }
        paramInt2 = paramInt1;
        if (n / paramInt1 <= i) {
          break;
        }
        paramInt1 *= 2;
      }
      i = paramInt1;
      j = paramInt2;
      if (n * paramInt2 < paramInt1 * i1)
      {
        i = paramInt2 * n / i1;
        j = paramInt2;
      }
    }
    return paramInt2;
  }
  
  /* Error */
  private static Bitmap decodeSampledBitmap(URL paramURL, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: new 123	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 145	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 151	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: astore_3
    //   14: aload 4
    //   16: iconst_1
    //   17: putfield 155	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   20: aload_3
    //   21: invokevirtual 161	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   24: aconst_null
    //   25: aload 4
    //   27: invokestatic 167	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   30: pop
    //   31: aload 4
    //   33: aload 4
    //   35: iload_1
    //   36: iload_2
    //   37: invokestatic 169	com/brightcove/player/media/HttpService:calculateInSampleSize	(Landroid/graphics/BitmapFactory$Options;II)I
    //   40: putfield 172	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   43: aload_3
    //   44: ifnull +17 -> 61
    //   47: aload_3
    //   48: instanceof 174
    //   51: ifeq +10 -> 61
    //   54: aload_3
    //   55: checkcast 174	java/net/HttpURLConnection
    //   58: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   61: new 51	java/lang/StringBuilder
    //   64: dup
    //   65: ldc -77
    //   67: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: invokestatic 185	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   73: invokevirtual 189	java/lang/Runtime:totalMemory	()J
    //   76: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload_0
    //   81: invokevirtual 151	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   84: astore_0
    //   85: aload 4
    //   87: iconst_0
    //   88: putfield 155	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   91: aload_0
    //   92: invokevirtual 161	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   95: aconst_null
    //   96: aload 4
    //   98: invokestatic 167	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   101: astore_3
    //   102: aload_0
    //   103: ifnull +17 -> 120
    //   106: aload_0
    //   107: instanceof 174
    //   110: ifeq +10 -> 120
    //   113: aload_0
    //   114: checkcast 174	java/net/HttpURLConnection
    //   117: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   120: new 51	java/lang/StringBuilder
    //   123: dup
    //   124: ldc -77
    //   126: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: invokestatic 185	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   132: invokevirtual 189	java/lang/Runtime:totalMemory	()J
    //   135: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   138: pop
    //   139: aload_3
    //   140: areturn
    //   141: astore_3
    //   142: aconst_null
    //   143: astore_0
    //   144: aload_0
    //   145: ifnull +17 -> 162
    //   148: aload_0
    //   149: instanceof 174
    //   152: ifeq +10 -> 162
    //   155: aload_0
    //   156: checkcast 174	java/net/HttpURLConnection
    //   159: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   162: aload_3
    //   163: athrow
    //   164: astore 4
    //   166: aload_3
    //   167: astore_0
    //   168: aload_0
    //   169: ifnull +17 -> 186
    //   172: aload_0
    //   173: instanceof 174
    //   176: ifeq +10 -> 186
    //   179: aload_0
    //   180: checkcast 174	java/net/HttpURLConnection
    //   183: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   186: aload 4
    //   188: athrow
    //   189: astore 4
    //   191: goto -23 -> 168
    //   194: astore 4
    //   196: aload_3
    //   197: astore_0
    //   198: aload 4
    //   200: astore_3
    //   201: goto -57 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	paramURL	URL
    //   0	204	1	paramInt1	int
    //   0	204	2	paramInt2	int
    //   13	127	3	localObject1	Object
    //   141	56	3	localObject2	Object
    //   200	1	3	localObject3	Object
    //   7	90	4	localOptions	BitmapFactory.Options
    //   164	23	4	localObject4	Object
    //   189	1	4	localObject5	Object
    //   194	5	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   9	14	141	finally
    //   80	85	164	finally
    //   85	102	189	finally
    //   14	43	194	finally
  }
  
  private JSONObject doJSONRequest(Method paramMethod, URI paramURI, Map<String, String> paramMap)
  {
    paramMethod = doRequest(paramMethod, paramURI, paramMap);
    if ((paramMethod != null) && (!paramMethod.trim().isEmpty()) && (!paramMethod.equals("null"))) {
      return parseToJSONObject(paramMethod);
    }
    return null;
  }
  
  private String doRequest(Method paramMethod, URI paramURI, Map<String, String> paramMap)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    if (paramMap == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("headersRequired"));
    }
    paramURI = paramURI.toURL();
    new StringBuilder("issuing ").append(paramMethod).append(" request: ").append(paramURI.toString()).append(", headers: ").append(paramMap);
    try
    {
      paramURI = paramURI.openConnection();
      try
      {
        if (!(paramURI instanceof HttpURLConnection)) {
          break label221;
        }
        HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURI;
        if (paramMethod.equals(Method.POST)) {
          localHttpURLConnection.setRequestMethod("POST");
        }
        paramMethod = paramMap.entrySet().iterator();
        while (paramMethod.hasNext())
        {
          paramMap = (Map.Entry)paramMethod.next();
          if ((!StringUtil.isEmpty((String)paramMap.getKey())) && (!StringUtil.isEmpty((String)paramMap.getValue()))) {
            localHttpURLConnection.setRequestProperty((String)paramMap.getKey(), (String)paramMap.getValue());
          }
        }
        if (paramMethod == null) {
          break label219;
        }
      }
      finally
      {
        paramMethod = paramURI;
        paramURI = paramMap;
      }
    }
    finally
    {
      for (;;)
      {
        paramMethod = null;
      }
    }
    if ((paramMethod instanceof HttpURLConnection)) {
      ((HttpURLConnection)paramMethod).disconnect();
    }
    label219:
    throw paramURI;
    label221:
    paramMethod = inputStreamToString(paramURI.getInputStream());
    if ((paramURI instanceof HttpURLConnection))
    {
      paramMap = (HttpURLConnection)paramURI;
      new StringBuilder("code: ").append(paramMap.getResponseCode());
      new StringBuilder("message: ").append(paramMap.getResponseMessage());
    }
    if ((paramURI != null) && ((paramURI instanceof HttpURLConnection))) {
      ((HttpURLConnection)paramURI).disconnect();
    }
    return paramMethod;
  }
  
  public static String inputStreamToString(InputStream paramInputStream)
  {
    return readerToString(new InputStreamReader(paramInputStream));
  }
  
  public static JSONObject parseToJSONObject(String paramString)
  {
    if ((paramString == null) || (paramString.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    paramString = new JSONTokener(paramString).nextValue();
    if ((paramString instanceof JSONObject)) {
      return (JSONObject)paramString;
    }
    if ((paramString instanceof JSONArray)) {
      throw new JSONException(ErrorUtil.getMessage("jsonArray"));
    }
    throw new JSONException(String.format(ErrorUtil.getMessage("unexpectedType"), new Object[] { paramString.getClass().getName() }));
  }
  
  public static String readerToString(Reader paramReader)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramReader = new BufferedReader(paramReader);
    try
    {
      for (;;)
      {
        String str = paramReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
      }
    }
    finally
    {
      paramReader.close();
    }
    return ((StringBuilder)localObject).toString();
  }
  
  public String doGetRequest(URI paramURI)
  {
    return doGetRequest(paramURI, new HashMap());
  }
  
  public String doGetRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doRequest(Method.GET, paramURI, paramMap);
  }
  
  /* Error */
  public Bitmap doImageGetRequest(URI paramURI)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +16 -> 17
    //   4: new 38	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc -39
    //   10: invokestatic 46	com/brightcove/player/util/ErrorUtil:getMessage	(Ljava/lang/String;)Ljava/lang/String;
    //   13: invokespecial 49	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_1
    //   18: invokevirtual 223	java/net/URI:toURL	()Ljava/net/URL;
    //   21: astore_1
    //   22: new 51	java/lang/StringBuilder
    //   25: dup
    //   26: ldc_w 333
    //   29: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_1
    //   33: invokevirtual 231	java/net/URL:toString	()Ljava/lang/String;
    //   36: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: pop
    //   40: aload_1
    //   41: invokevirtual 151	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   44: astore_1
    //   45: aload_1
    //   46: invokevirtual 161	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   49: invokestatic 336	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   52: astore_2
    //   53: aload_1
    //   54: ifnull +17 -> 71
    //   57: aload_1
    //   58: instanceof 174
    //   61: ifeq +10 -> 71
    //   64: aload_1
    //   65: checkcast 174	java/net/HttpURLConnection
    //   68: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   71: new 51	java/lang/StringBuilder
    //   74: dup
    //   75: ldc_w 338
    //   78: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: invokestatic 185	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   84: invokevirtual 189	java/lang/Runtime:totalMemory	()J
    //   87: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   90: pop
    //   91: aload_2
    //   92: areturn
    //   93: astore_2
    //   94: aconst_null
    //   95: astore_1
    //   96: aload_1
    //   97: ifnull +17 -> 114
    //   100: aload_1
    //   101: instanceof 174
    //   104: ifeq +10 -> 114
    //   107: aload_1
    //   108: checkcast 174	java/net/HttpURLConnection
    //   111: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   114: aload_2
    //   115: athrow
    //   116: astore_2
    //   117: goto -21 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	this	HttpService
    //   0	120	1	paramURI	URI
    //   52	40	2	localBitmap	Bitmap
    //   93	22	2	localObject1	Object
    //   116	1	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   40	45	93	finally
    //   45	53	116	finally
  }
  
  public Bitmap doImageGetRequest(URI paramURI, int paramInt1, int paramInt2)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    return decodeSampledBitmap(paramURI.toURL(), paramInt1, paramInt2);
  }
  
  public JSONObject doJSONGetRequest(URI paramURI)
  {
    return doJSONGetRequest(paramURI, new HashMap());
  }
  
  public JSONObject doJSONGetRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doJSONRequest(Method.GET, paramURI, paramMap);
  }
  
  public JSONObject doJSONPostRequest(URI paramURI)
  {
    return doJSONPostRequest(paramURI, new HashMap());
  }
  
  public JSONObject doJSONPostRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doJSONRequest(Method.POST, paramURI, paramMap);
  }
  
  public String doPostRequest(URI paramURI)
  {
    return doPostRequest(paramURI, new HashMap());
  }
  
  public String doPostRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doRequest(Method.POST, paramURI, paramMap);
  }
  
  public int getConnectTimeout()
  {
    return connectTimeout;
  }
  
  public int getReadTimeout()
  {
    return readTimeout;
  }
  
  static enum Method
  {
    GET,  POST;
    
    private Method() {}
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.HttpService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */