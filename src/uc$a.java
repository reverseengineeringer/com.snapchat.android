public final class uc$a
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
  
  public uc$a(String paramString1, String paramString2)
  {
    mUrl = paramString1;
    mNetworkType = paramString2;
  }
  
  public final uc a()
  {
    return new uc(mUrl, mNetworkType, mResponseCode, mResponseMessage, mBuffer, mResponseHeaders, mRequestId, mCaughtException, mResponseBodySize, (byte)0);
  }
}

/* Location:
 * Qualified Name:     uc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */