import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public final class nj
{
  private static final nj INSTANCE = new nj(ajv.UNSAFE_USER_PROVIDER);
  private static final String TAG = "RecentStoryReplyAnalyticsManager";
  public boolean mHasReplied = false;
  public bcu mRecentStoryReplyEvent;
  public final Provider<ajv> mUserProvider;
  
  private nj(Provider<ajv> paramProvider)
  {
    mUserProvider = paramProvider;
  }
  
  public static nj a()
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
      Timber.a("RecentStoryReplyAnalyticsManager", "markHasReplied true " + mRecentStoryReplyEvent.friendUsername, new Object[0]);
      mHasReplied = true;
    }
  }
  
  public final void d()
  {
    if (mRecentStoryReplyEvent == null)
    {
      Timber.a("RecentStoryReplyAnalyticsManager", "stopReplyingAndReport null event, nothing to do", new Object[0]);
      return;
    }
    Timber.a("RecentStoryReplyAnalyticsManager", "stopReplyingAndReport REPORTING " + mHasReplied, new Object[0]);
    AnalyticsEvents.f(mHasReplied);
    mRecentStoryReplyEvent = null;
    mHasReplied = false;
  }
}

/* Location:
 * Qualified Name:     nj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */