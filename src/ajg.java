import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.stories.StoriesSection;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.List;
import javax.inject.Provider;

public class ajg
  extends StoryCollection
  implements ahb
{
  private final StoryCollection mWrappedStoryCollection;
  
  public ajg(StoryCollection paramStoryCollection)
  {
    this(paramStoryCollection, ajv.UNSAFE_USER_PROVIDER);
  }
  
  private ajg(StoryCollection paramStoryCollection, Provider<ajv> paramProvider)
  {
    super(paramStoryCollection.e(), paramStoryCollection.w(), paramProvider, paramStoryCollection.s());
    mWrappedStoryCollection = paramStoryCollection;
    mUsername = mUsername;
    mUserHasSeenInFeed = mUserHasSeenInFeed;
  }
  
  public String a()
  {
    return atm.e(h(), ajv.g());
  }
  
  public final List<ajr> a(int paramInt, ajr paramajr)
  {
    paramajr = super.x();
    return paramajr.subList(Math.max(0, paramajr.size() - paramInt), paramajr.size());
  }
  
  public final void a(int paramInt)
  {
    mWrappedStoryCollection.a(paramInt);
  }
  
  public final boolean a(@cgb ajr arg1)
  {
    for (;;)
    {
      synchronized (mUnviewedStorySnaps)
      {
        if (!mUnviewedStorySnaps.isEmpty())
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final int b(@cgb ajr arg1)
  {
    synchronized (mUnviewedStorySnaps)
    {
      int i = mUnviewedStorySnaps.size();
      return i;
    }
  }
  
  public final boolean b()
  {
    synchronized (mStorySnapsMutex)
    {
      return (!mStorySnaps.isEmpty()) && (((ajr)mStorySnaps.get(0)).aw());
    }
  }
  
  public final ajr c(@cgb ajr arg1)
  {
    synchronized (mStorySnapsMutex)
    {
      int i = mUnviewedStorySnaps.size() - 2;
      if (i >= 0)
      {
        ajr localajr = (ajr)mUnviewedStorySnaps.get(i);
        return localajr;
      }
      return null;
    }
  }
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.DEFAULT;
  }
  
  public final int d()
  {
    return mWrappedStoryCollection.d();
  }
  
  public final ajr d(@cgb ajr paramajr)
  {
    return A();
  }
  
  public final List<ajr> e()
  {
    return w();
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ajg)) {
      return mUsername.equals(((ajg)paramObject).h());
    }
    return false;
  }
  
  public final List<ajr> f()
  {
    return super.x();
  }
  
  public final boolean g()
  {
    if (super.g()) {
      return true;
    }
    return mUnviewedStorySnaps.isEmpty();
  }
  
  public int hashCode()
  {
    return (mUsername.hashCode() + 527) * 31 + "recentStoryCollection".hashCode();
  }
  
  public final StoriesSection i()
  {
    if (E()) {
      return StoriesSection.LIVE;
    }
    return StoriesSection.RECENT_UPDATES;
  }
  
  public final boolean j()
  {
    return atm.d(h(), ajv.g());
  }
  
  public final String k()
  {
    return atm.e(h(), ajv.g());
  }
  
  public final boolean l()
  {
    return true;
  }
  
  public auz m()
  {
    if (E()) {}
    for (StoriesThumbnailType localStoriesThumbnailType = StoriesThumbnailType.OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY;; localStoriesThumbnailType = StoriesThumbnailType.SOME_SNAPS) {
      return new auz(localStoriesThumbnailType, super.x(), mUsername + "&recentStoryCollection");
    }
  }
  
  public final boolean n()
  {
    return C();
  }
  
  public final boolean o()
  {
    return B();
  }
}

/* Location:
 * Qualified Name:     ajg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */