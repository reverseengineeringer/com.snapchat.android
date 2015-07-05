import com.snapchat.android.SnapchatApplication;

public final class tj
{
  private boolean mConnectionReleased = false;
  private long mDuration;
  private String mMethod;
  private boolean mNeedToSaveMetrics = true;
  private String mPath;
  private long mReceivedBytes;
  private long mRequestTime;
  private boolean mResponseStatusReady = false;
  private long mSentBytes;
  private int mStatusCode;
  private String mStatusLine;
  
  private void a()
  {
    aaq.a(SnapchatApplication.b(), mRequestTime, mMethod, mPath, mSentBytes, mReceivedBytes, mDuration, mStatusLine, mStatusCode);
  }
  
  public final void a(long paramLong1, long paramLong2)
  {
    try
    {
      mReceivedBytes = paramLong1;
      mSentBytes = paramLong2;
      mConnectionReleased = true;
      if ((mResponseStatusReady) && (mNeedToSaveMetrics))
      {
        a();
        mNeedToSaveMetrics = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2)
  {
    try
    {
      mMethod = paramString1;
      mPath = paramString2;
      mStatusLine = paramString3;
      mStatusCode = paramInt;
      mRequestTime = paramLong1;
      mDuration = paramLong2;
      mResponseStatusReady = true;
      if ((mConnectionReleased) && (mNeedToSaveMetrics))
      {
        a();
        mNeedToSaveMetrics = false;
      }
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
}

/* Location:
 * Qualified Name:     tj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */