import java.util.Map;

public final class mv
{
  private static final mv INSTANCE = new mv();
  public Map<String, mr> mStreams = dl.a();
  
  public static mv a()
  {
    return INSTANCE;
  }
  
  public final mr a(mw parammw, mu parammu)
  {
    String str = parammw.a();
    if (!mStreams.containsKey(str)) {
      parammw = new mr(parammw, parammu);
    }
    for (;;)
    {
      mStreams.put(str, parammw);
      return parammw;
      mr localmr = (mr)mStreams.get(str);
      synchronized (mMutex)
      {
        mInPlayback = false;
        mInLiveSection = false;
        mStoryAdStreamRequestInfo = parammw;
        int i = mFirstPosition;
        if (i > mNextUnviewedPosition) {
          mNextUnviewedPosition = i;
        }
        mNextPosition = i;
        mStoryAdStreamListener = parammu;
        mTimeBetweenRetriesMilliSeconds = 0;
        parammw = localmr;
      }
    }
  }
}

/* Location:
 * Qualified Name:     mv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */