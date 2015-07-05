import com.snapchat.android.api2.framework.HttpMethod;

public final class px
  extends tv
{
  private final boolean mIsPostRequest;
  private final Object mPayload;
  private final bfk mResponseBuffer;
  private final String mUrl;
  
  public px(String paramString, bfk parambfk)
  {
    mUrl = paramString;
    mResponseBuffer = parambfk;
    mPayload = null;
    mIsPostRequest = false;
  }
  
  public px(String paramString, bfk parambfk, Object paramObject)
  {
    mUrl = paramString;
    mResponseBuffer = parambfk;
    mPayload = paramObject;
    mIsPostRequest = true;
  }
  
  public final bfk a_()
  {
    return mResponseBuffer;
  }
  
  public final Object b()
  {
    return mPayload;
  }
  
  public final HttpMethod c()
  {
    if (mIsPostRequest) {
      return HttpMethod.POST;
    }
    return HttpMethod.GET;
  }
  
  public final String n_()
  {
    return mUrl;
  }
}

/* Location:
 * Qualified Name:     px
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */