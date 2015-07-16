import com.snapchat.android.api2.framework.HttpMethod;

public final class qn
  extends ul
{
  private final boolean mIsPostRequest;
  private final Object mPayload;
  private final bgk mResponseBuffer;
  private final String mUrl;
  
  public qn(String paramString, bgk parambgk)
  {
    mUrl = paramString;
    mResponseBuffer = parambgk;
    mPayload = null;
    mIsPostRequest = false;
  }
  
  public qn(String paramString, bgk parambgk, Object paramObject)
  {
    mUrl = paramString;
    mResponseBuffer = parambgk;
    mPayload = paramObject;
    mIsPostRequest = true;
  }
  
  public final HttpMethod getMethod()
  {
    if (mIsPostRequest) {
      return HttpMethod.POST;
    }
    return HttpMethod.GET;
  }
  
  public final Object getRequestPayload()
  {
    return mPayload;
  }
  
  public final bgk getResponseBuffer()
  {
    return mResponseBuffer;
  }
  
  public final String getUrl()
  {
    return mUrl;
  }
}

/* Location:
 * Qualified Name:     qn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */