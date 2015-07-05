import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.Iterator;
import java.util.List;

public final class ajo
  extends ajg
{
  public ajo(StoryCollection paramStoryCollection)
  {
    super(paramStoryCollection);
  }
  
  @cgb
  public final String a()
  {
    synchronized (mStorySnapsMutex)
    {
      String str1;
      if (!mUnviewedStorySnaps.isEmpty())
      {
        str1 = ((ajr)mUnviewedStorySnaps.get(mUnviewedStorySnaps.size() - 1)).ax();
        if (str1 != null) {
          return str1;
        }
      }
      else if (!mStorySnaps.isEmpty())
      {
        str1 = ((ajr)mStorySnaps.get(0)).ax();
        if (str1 != null) {
          return str1;
        }
      }
    }
    String str2 = mUsername;
    return str2;
  }
  
  public final auz m()
  {
    return new auz(StoriesThumbnailType.OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY, super.x(), mUsername + "&recentStoryCollection");
  }
  
  public final void p()
  {
    synchronized (mStorySnapsMutex)
    {
      Iterator localIterator = mStorySnaps.iterator();
      while (localIterator.hasNext())
      {
        ajr localajr = (ajr)localIterator.next();
        if (localajr.ah() == Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE)
        {
          mUnviewedStorySnaps.add(localajr);
          localajr.ay();
        }
      }
    }
    if (!mUnviewedStorySnaps.isEmpty()) {
      AnalyticsEvents.b((ajr)mUnviewedStorySnaps.get(0));
    }
  }
  
  public final void q()
  {
    synchronized (mStorySnapsMutex)
    {
      Iterator localIterator = mStorySnaps.iterator();
      while (localIterator.hasNext())
      {
        ajr localajr = (ajr)localIterator.next();
        if (localajr.ah() == Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE) {
          localajr.a(Snap.ClientSnapStatus.RECEIVED_AND_VIEWED);
        }
      }
    }
  }
  
  @cgc
  public final String r()
  {
    synchronized (mStorySnapsMutex)
    {
      Object localObject2 = mStorySnaps.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ajr localajr = (ajr)((Iterator)localObject2).next();
        if (localajr.aw())
        {
          localObject2 = mSponsoredStoryMetadata.c();
          return (String)localObject2;
        }
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     ajo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */