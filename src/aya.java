import com.snapchat.android.util.cache.CacheType;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

@bxr
public final class aya
{
  private static final String TAG = "VideoSnapPreviewCacheWrapper";
  private static final String VIDEO_FILE_EXTENSION = ".mp4.nomedia";
  private static final String VIDEO_FILE_PREFIX = "tracked_video_";
  private static final ConcurrentHashMap<String, axz> mTempCacheFiles = new ConcurrentHashMap();
  private static aya sInstance;
  final axn mCache;
  
  private aya()
  {
    this(new axn(CacheType.UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW, 1440L));
  }
  
  private aya(axn paramaxn)
  {
    mCache = paramaxn;
  }
  
  public static aya a()
  {
    if (sInstance == null) {
      sInstance = new aya();
    }
    return sInstance;
  }
  
  public static void a(@chc String paramString)
  {
    if (mTempCacheFiles.containsKey(paramString))
    {
      axz localaxz = (axz)mTempCacheFiles.get(paramString);
      mCache.c(mKey);
      mTempCacheFiles.remove(paramString);
    }
  }
  
  @chd
  public final File b()
  {
    axz localaxz = mCache.a("tracked_video_", ".mp4.nomedia");
    if (localaxz != null)
    {
      mTempCacheFiles.put(mFile.getAbsolutePath(), localaxz);
      return mFile;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     aya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */