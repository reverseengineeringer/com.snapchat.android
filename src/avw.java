import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import com.snapchat.android.stories.StoriesThumbnailType;
import com.squareup.otto.Bus;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.inject.Singleton;

@Singleton
public final class avw
{
  private static final avw INSTANCE = new avw();
  private static final float LRU_CACHE_SIZE = 0.025F;
  private static final String TAG = "StoriesThumbnailCache";
  private static final int THUMBNAIL_EXPIRATION_MINUTES = 30;
  private final awo mBitmapPool;
  private final LruCache<String, avw.a> mThumbnailCache;
  private final Object mThumbnailCacheMutex = new Object();
  
  private avw()
  {
    this(awo.a());
  }
  
  private avw(awo paramawo)
  {
    mBitmapPool = paramawo;
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.025F);
    new StringBuilder("StoriesThumbnailCache size = ").append(i).append(" kilobytes");
    mThumbnailCache = new LruCache(i) {};
  }
  
  public static avw a()
  {
    return INSTANCE;
  }
  
  @awj
  public final Bitmap a(avx paramavx)
  {
    paramavx = mCacheKey;
    paramavx = (avw.a)mThumbnailCache.get(paramavx);
    if (paramavx == null) {
      return null;
    }
    return mBitmap;
  }
  
  @awj
  public final void a(Context paramContext, final avx paramavx)
  {
    int j = 0;
    final Object localObject2;
    final String str;
    if (mType != StoriesThumbnailType.SPECIFIED_BY_METADATA)
    {
      ??? = mStorySnaps;
      if (((List)???).contains(null))
      {
        new StringBuilder("getStorySnaps: Null StorySnap added to the list from feed item: ").append(paramavx);
        ((List)???).removeAll(Collections.singleton(null));
      }
      localObject2 = Collections.unmodifiableList((List)???);
      str = mCacheKey;
      if (((List)localObject2).isEmpty())
      {
        mThumbnailCache.remove(str);
        return;
      }
    }
    label175:
    label371:
    label522:
    label529:
    label535:
    label538:
    for (;;)
    {
      Object localObject3;
      int i;
      synchronized (mThumbnailCacheMutex)
      {
        localObject3 = (avw.a)mThumbnailCache.get(str);
        if (localObject3 != null)
        {
          if (((akl)((List)localObject2).get(0)).U() != mFirstStoryTimestamp)
          {
            i = 1;
            break label522;
          }
        }
        else
        {
          if (localObject3 != null) {
            continue;
          }
          mThumbnailCache.put(str, new avw.a(null, (List)localObject2));
          break label529;
          if (j == 0) {
            break;
          }
          new atv(paramContext, (List)localObject2, paramavx)
          {
            protected final void a(Bitmap paramAnonymousBitmap)
            {
              if (paramAnonymousBitmap == null)
              {
                avw.b(avw.this).remove(str);
                return;
              }
              avw.b(avw.this).put(str, new avw.a(avw.this, paramAnonymousBitmap, localObject2));
              bbo.a().a(new bfc(paramavx));
            }
          }.a();
          return;
        }
        if (((akl)((List)localObject2).get(((List)localObject2).size() - 1)).U() != mLastStoryTimestamp)
        {
          i = 1;
          break label522;
        }
        if ((SystemClock.elapsedRealtime() - mThumbnailCreationTime) / 60000L < 30L) {
          break label535;
        }
        i = 1;
        break label522;
        if (mIsExpired) {
          return;
        }
      }
      mIsExpired = true;
      break label529;
      if (mType == StoriesThumbnailType.SPECIFIED_BY_METADATA) {}
      for (boolean bool = true;; bool = false)
      {
        co.a(bool);
        str = mThumbnail.a();
        localObject2 = mCacheKey;
        if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject2))) {
          break label371;
        }
        paramContext = mThumbnail;
        if (TextUtils.isEmpty((CharSequence)localObject2)) {
          break;
        }
        mThumbnailCache.remove(localObject2);
        return;
      }
      for (;;)
      {
        synchronized (mThumbnailCacheMutex)
        {
          if ((avw.a)mThumbnailCache.get(localObject2) == null)
          {
            mThumbnailCache.put(localObject2, new avw.a(null));
            paramContext = new aag(paramContext, str, (String)localObject2)
            {
              protected final void a(Bitmap paramAnonymousBitmap)
              {
                if (paramAnonymousBitmap == null)
                {
                  avw.b(avw.this).remove(localObject2);
                  return;
                }
                avw.b(avw.this).put(localObject2, new avw.a(avw.this, paramAnonymousBitmap));
                bbo.a().a(new bfc(paramavx));
              }
            };
            if (mCache.d(mCacheKey)) {
              paramContext.a(1);
            }
          }
          else
          {
            return;
          }
        }
        paramavx = mDownloader;
        localObject2 = mUrl;
        str = mCacheKey;
        localObject3 = du.a();
        ((Map)localObject3).put(localObject2, str);
        paramavx.a((Map)localObject3, (String)localObject2, null, String.format("Thumbnail-[%s]", new Object[] { localObject2 }), paramContext);
      }
      for (;;)
      {
        if (i == 0) {
          break label538;
        }
        break;
        j = 1;
        break label175;
        i = 0;
      }
    }
  }
  
  public final void b()
  {
    mThumbnailCache.trimToSize(-1);
    axo.MY_STORY_SNAP_THUMBNAIL_CACHE.b();
    axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.b();
  }
  
  final class a
  {
    Bitmap mBitmap;
    long mFirstStoryTimestamp;
    boolean mIsExpired = false;
    long mLastStoryTimestamp;
    long mThumbnailCreationTime;
    
    public a(@chd Bitmap paramBitmap)
    {
      mBitmap = paramBitmap;
    }
    
    public a(@chd List<akl> paramList)
    {
      mBitmap = paramList;
      mThumbnailCreationTime = SystemClock.elapsedRealtime();
      Object localObject;
      mFirstStoryTimestamp = ((akl)((List)localObject).get(0)).U();
      mLastStoryTimestamp = ((akl)((List)localObject).get(((List)localObject).size() - 1)).U();
    }
  }
}

/* Location:
 * Qualified Name:     avw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */