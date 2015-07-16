import java.util.Map;

public final class nm
{
  private static final nm INSTANCE = new nm();
  public Map<String, ni> mStreams = du.a();
  
  public static nm a()
  {
    return INSTANCE;
  }
  
  public final ni a(nn paramnn, nl paramnl)
  {
    String str = paramnn.a();
    if (!mStreams.containsKey(str)) {
      paramnn = new ni(paramnn, paramnl);
    }
    for (;;)
    {
      mStreams.put(str, paramnn);
      return paramnn;
      ni localni = (ni)mStreams.get(str);
      synchronized (mMutex)
      {
        mInPlayback = false;
        mInLiveSection = false;
        mStoryAdStreamRequestInfo = paramnn;
        int i = mFirstPosition;
        if (i > mNextUnviewedPosition) {
          mNextUnviewedPosition = i;
        }
        mNextPosition = i;
        mStoryAdStreamListener = paramnl;
        mTimeBetweenRetriesMilliSeconds = 0;
        paramnn = localni;
      }
    }
  }
}

/* Location:
 * Qualified Name:     nm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */