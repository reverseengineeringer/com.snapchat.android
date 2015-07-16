import com.snapchat.android.analytics.AnalyticsEvents;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public final class oa
{
  private static final oa INSTANCE = new oa(akp.UNSAFE_USER_PROVIDER);
  private static final String TAG = "RecentStoryReplyAnalyticsManager";
  public boolean mHasReplied = false;
  public bdu mRecentStoryReplyEvent;
  public final Provider<akp> mUserProvider;
  
  private oa(Provider<akp> paramProvider)
  {
    mUserProvider = paramProvider;
  }
  
  public static oa a()
  {
    return INSTANCE;
  }
  
  public final boolean b()
  {
    return mRecentStoryReplyEvent != null;
  }
  
  public final void c()
  {
    if (mRecentStoryReplyEvent != null)
    {
      new StringBuilder("markHasReplied true ").append(mRecentStoryReplyEvent.friendUsername);
      mHasReplied = true;
    }
  }
  
  public final void d()
  {
    if (mRecentStoryReplyEvent == null) {
      return;
    }
    new StringBuilder("stopReplyingAndReport REPORTING ").append(mHasReplied);
    AnalyticsEvents.f(mHasReplied);
    mRecentStoryReplyEvent = null;
    mHasReplied = false;
  }
}

/* Location:
 * Qualified Name:     oa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */