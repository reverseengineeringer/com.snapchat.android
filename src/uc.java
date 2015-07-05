import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

public final class uc
{
  public static final String APPLICATION_ZIP = "application/zip";
  public static final String CONTENT_TYPE_HEADER = "Content-Type";
  public static final int NO_RESPONSE_STATUS_CODE = 0;
  public final bfk mBuffer;
  public final Exception mCaughtException;
  public final String mNetworkType;
  public final String mRequestId;
  public final long mResponseBodySize;
  public final int mResponseCode;
  private final ug mResponseHeaders;
  public final String mResponseMessage;
  private final String mUrl;
  
  @Deprecated
  public uc()
  {
    this(null, null, 400, null, null, null, null, null, 0L);
  }
  
  private uc(String paramString1, String paramString2, int paramInt, String paramString3, bfk parambfk, ug paramug, String paramString4, Exception paramException, long paramLong)
  {
    mUrl = paramString1;
    mNetworkType = paramString2;
    mResponseCode = paramInt;
    mResponseMessage = paramString3;
    mBuffer = parambfk;
    mRequestId = paramString4;
    mResponseHeaders = paramug;
    mCaughtException = paramException;
    mResponseBodySize = paramLong;
  }
  
  @cgb
  public final String a()
  {
    try
    {
      String str = new URL(mUrl).getPath();
      return str;
    }
    catch (MalformedURLException localMalformedURLException) {}
    return "";
  }
  
  @cgc
  public final String a(String paramString)
  {
    paramString = mResponseHeaders.a(paramString);
    if ((paramString != null) && (!paramString.isEmpty())) {
      return (String)paramString.get(paramString.size() - 1);
    }
    return null;
  }
  
  @cgb
  public final String b()
  {
    try
    {
      String str = new URL(mUrl).getHost();
      return str;
    }
    catch (MalformedURLException localMalformedURLException) {}
    return "";
  }
  
  public final int c()
  {
    if (mBuffer != null) {
      return mBuffer.a();
    }
    return 0;
  }
  
  public final boolean d()
  {
    return (mCaughtException == null) && (atq.a(mResponseCode));
  }
  
  public final String e()
  {
    if (mBuffer != null) {
      return new String(mBuffer.b(), 0, mBuffer.a(), Charset.defaultCharset());
    }
    return null;
  }
  
  public final String toString()
  {
    if (d()) {
      return String.format("[Success (%s bytes)]", new Object[] { Integer.valueOf(c()) });
    }
    if (mCaughtException != null) {
      return String.format("[Failed %s]", new Object[] { mCaughtException });
    }
    if (mResponseCode != 0) {
      return String.format("[Failed HTTP %d]", new Object[] { Integer.valueOf(mResponseCode) });
    }
    return "[Failed unknown]";
  }
  
  public static final class a
  {
    bfk mBuffer;
    public Exception mCaughtException;
    private String mNetworkType;
    String mRequestId;
    long mResponseBodySize;
    int mResponseCode = 0;
    ug mResponseHeaders = new ug();
    String mResponseMessage;
    private final String mUrl;
    
    public a(String paramString1, String paramString2)
    {
      mUrl = paramString1;
      mNetworkType = paramString2;
    }
    
    public final uc a()
    {
      return new uc(mUrl, mNetworkType, mResponseCode, mResponseMessage, mBuffer, mResponseHeaders, mRequestId, mCaughtException, mResponseBodySize, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     uc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */