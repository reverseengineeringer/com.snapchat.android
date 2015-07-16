import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.stories.StoriesSection;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.List;
import javax.inject.Provider;

public final class akc
  extends StoryCollection
  implements ahy
{
  private final StoryCollection mWrappedStoryCollection;
  
  public akc(StoryCollection paramStoryCollection)
  {
    this(paramStoryCollection, akp.UNSAFE_USER_PROVIDER);
  }
  
  private akc(StoryCollection paramStoryCollection, Provider<akp> paramProvider)
  {
    super(mStorySnaps, mUnviewedStorySnaps, mStorySnapsMutex, paramProvider, paramStoryCollection.k(), paramStoryCollection.j());
    mWrappedStoryCollection = paramStoryCollection;
    mUsername = mUsername;
    mUserHasSeenInFeed = mUserHasSeenInFeed;
  }
  
  public final StoriesSection a(boolean paramBoolean)
  {
    if (A()) {
      return StoriesSection.LIVE;
    }
    return StoriesSection.RECENT_UPDATES;
  }
  
  public final List<akl> a(int paramInt, akl paramakl)
  {
    paramakl = t();
    return paramakl.subList(Math.max(0, paramakl.size() - paramInt), paramakl.size());
  }
  
  public final void a(int paramInt)
  {
    mWrappedStoryCollection.a(paramInt);
  }
  
  public final boolean a(@chc akl arg1)
  {
    for (;;)
    {
      synchronized (mStorySnapsMutex)
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
  
  public final int b()
  {
    return mWrappedStoryCollection.b();
  }
  
  public final int b(@chc akl arg1)
  {
    synchronized (mStorySnapsMutex)
    {
      int i = mUnviewedStorySnaps.size();
      return i;
    }
  }
  
  public final akl c(@chc akl arg1)
  {
    synchronized (mStorySnapsMutex)
    {
      int i = mUnviewedStorySnaps.size() - 2;
      if (i >= 0)
      {
        akl localakl = (akl)mUnviewedStorySnaps.get(i);
        return localakl;
      }
      return null;
    }
  }
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.DEFAULT;
  }
  
  public final akl d()
  {
    synchronized (mStorySnapsMutex)
    {
      if (mUnviewedStorySnaps.size() > 0)
      {
        akl localakl = (akl)mUnviewedStorySnaps.get(0);
        return localakl;
      }
      return null;
    }
  }
  
  public final akl d(@chc akl paramakl)
  {
    return x();
  }
  
  public final int e()
  {
    return s();
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof akc)) {
      return mUsername.equals(((akc)paramObject).l());
    }
    return false;
  }
  
  public final List<akl> f()
  {
    return t();
  }
  
  public final boolean g()
  {
    if (super.g()) {
      return true;
    }
    synchronized (mStorySnapsMutex)
    {
      boolean bool = mUnviewedStorySnaps.isEmpty();
      return bool;
    }
  }
  
  public final boolean h()
  {
    return z();
  }
  
  public final int hashCode()
  {
    return (mUsername.hashCode() + 527) * 31 + "recentStoryCollection".hashCode();
  }
  
  public final boolean i()
  {
    return y();
  }
  
  public final boolean o()
  {
    return true;
  }
  
  public final avx p()
  {
    Object localObject = D();
    if (localObject != null) {
      return (avx)localObject;
    }
    if (A()) {}
    for (localObject = StoriesThumbnailType.OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY;; localObject = StoriesThumbnailType.SOME_SNAPS) {
      return new avx((StoriesThumbnailType)localObject, t(), mUsername + "&recentStoryCollection");
    }
  }
}

/* Location:
 * Qualified Name:     akc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */