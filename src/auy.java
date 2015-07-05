import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import com.snapchat.android.Timber;
import com.squareup.otto.Bus;
import java.util.Collections;
import java.util.List;
import javax.inject.Singleton;

@Singleton
public final class auy
{
  private static final auy INSTANCE = new auy();
  private static final float LRU_CACHE_SIZE = 0.025F;
  private static final String TAG = "StoriesThumbnailCache";
  private static final int THUMBNAIL_EXPIRATION_MINUTES = 30;
  private final avq mBitmapPool;
  private final ajq mStoryLibrary;
  private final LruCache<String, auy.a> mThumbnailCache;
  protected final Object mThumbnailCacheMutex = new Object();
  
  private auy()
  {
    this(ajq.a(), avq.a());
  }
  
  private auy(ajq paramajq, avq paramavq)
  {
    mStoryLibrary = paramajq;
    mBitmapPool = paramavq;
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.025F);
    Timber.b("StoriesThumbnailCache", "StoriesThumbnailCache size = " + i + " kilobytes", new Object[0]);
    mThumbnailCache = new LruCache(i) {};
  }
  
  public static auy a()
  {
    return INSTANCE;
  }
  
  @avl
  public final Bitmap a(auz paramauz)
  {
    paramauz = mCacheKey;
    paramauz = (auy.a)mThumbnailCache.get(paramauz);
    if (paramauz == null) {
      return null;
    }
    return mBitmap;
  }
  
  @avl
  public final void a(Context paramContext, final auz paramauz)
  {
    ??? = mStorySnaps;
    if (((List)???).contains(null))
    {
      Timber.f("StoriesThumbnailCache", "getStorySnaps: Null StorySnap added to the list from feed item: " + paramauz, new Object[0]);
      ((List)???).removeAll(Collections.singleton(null));
    }
    final List localList = Collections.unmodifiableList((List)???);
    final String str = mCacheKey;
    if (localList.isEmpty()) {
      mThumbnailCache.remove(str);
    }
    auy.a locala;
    int i;
    for (;;)
    {
      return;
      synchronized (mThumbnailCacheMutex)
      {
        locala = (auy.a)mThumbnailCache.get(str);
        if (locala != null)
        {
          if (((ajr)localList.get(0)).W() != mFirstStoryTimestamp)
          {
            i = 1;
            break label294;
          }
        }
        else
        {
          if (locala != null) {
            break label262;
          }
          mThumbnailCache.put(str, new auy.a(null, localList));
          break label301;
          label173:
          if (i == 0) {
            continue;
          }
          new asw(paramContext, localList, paramauz)
          {
            protected final void a(Bitmap paramAnonymousBitmap)
            {
              if (paramAnonymousBitmap == null)
              {
                auy.b(auy.this).remove(str);
                return;
              }
              auy.b(auy.this).put(str, new auy.a(auy.this, paramAnonymousBitmap, localList));
              ban.a().a(new bed(paramauz));
            }
          }.a();
          return;
        }
        if (((ajr)localList.get(localList.size() - 1)).W() != mLastStoryTimestamp)
        {
          i = 1;
          break label294;
        }
        if ((SystemClock.elapsedRealtime() - mThumbnailCreationTime) / 60000L < 30L) {
          break label306;
        }
        i = 1;
        break label294;
        label262:
        if (mIsExpired) {
          return;
        }
      }
    }
    mIsExpired = true;
    label294:
    label301:
    label306:
    label309:
    for (;;)
    {
      i = 0;
      break label173;
      for (;;)
      {
        if (i == 0) {
          break label309;
        }
        break;
        i = 1;
        break label173;
        i = 0;
      }
    }
  }
  
  public final void b()
  {
    mThumbnailCache.trimToSize(-1);
    awq.MY_STORY_SNAP_THUMBNAIL_CACHE.b();
    awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.b();
  }
  
  final class a
  {
    Bitmap mBitmap;
    long mFirstStoryTimestamp;
    boolean mIsExpired = false;
    long mLastStoryTimestamp;
    long mThumbnailCreationTime;
    
    public a(List<ajr> paramList)
    {
      mBitmap = paramList;
      mThumbnailCreationTime = SystemClock.elapsedRealtime();
      Object localObject;
      mFirstStoryTimestamp = ((ajr)((List)localObject).get(0)).W();
      mLastStoryTimestamp = ((ajr)((List)localObject).get(((List)localObject).size() - 1)).W();
    }
  }
}

/* Location:
 * Qualified Name:     auy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */