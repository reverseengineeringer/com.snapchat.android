import com.snapchat.android.Timber;
import com.snapchat.android.util.cache.CacheType;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

@bwq
public final class axc
{
  private static final String TAG = "VideoSnapPreviewCacheWrapper";
  private static final String VIDEO_FILE_EXTENSION = ".mp4.nomedia";
  private static final String VIDEO_FILE_PREFIX = "tracked_video_";
  private static final ConcurrentHashMap<String, axb> mTempCacheFiles = new ConcurrentHashMap();
  private static axc sInstance;
  final awp mCache;
  
  private axc()
  {
    this(new awp(CacheType.UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW, 1440L));
  }
  
  private axc(awp paramawp)
  {
    mCache = paramawp;
  }
  
  public static axc a()
  {
    if (sInstance == null) {
      sInstance = new axc();
    }
    return sInstance;
  }
  
  public static void a(@cgb String paramString)
  {
    if (mTempCacheFiles.containsKey(paramString))
    {
      axb localaxb = (axb)mTempCacheFiles.get(paramString);
      mCache.c(mKey);
      mTempCacheFiles.remove(paramString);
      Timber.c("VideoSnapPreviewCacheWrapper", "Preview cache file get removed: %s", new Object[] { paramString });
      return;
    }
    Timber.e("VideoSnapPreviewCacheWrapper", "Try to remove an invalid cache file: %s", new Object[] { paramString });
  }
  
  @cgc
  public final File b()
  {
    axb localaxb = mCache.a("tracked_video_", ".mp4.nomedia");
    if (localaxb != null)
    {
      mTempCacheFiles.put(mFile.getAbsolutePath(), localaxb);
      return mFile;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     axc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */