public final class us$a
{
  bgk mBuffer;
  public Exception mCaughtException;
  private String mNetworkType;
  String mRequestId;
  long mResponseBodySize;
  int mResponseCode = 0;
  ux mResponseHeaders = new ux();
  String mResponseMessage;
  private final String mUrl;
  
  public us$a(String paramString1, String paramString2)
  {
    mUrl = paramString1;
    mNetworkType = paramString2;
  }
  
  public final us a()
  {
    return new us(mUrl, mNetworkType, mResponseCode, mResponseMessage, mBuffer, mResponseHeaders, mRequestId, mCaughtException, mResponseBodySize, (byte)0);
  }
}

/* Location:
 * Qualified Name:     us.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */