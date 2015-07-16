import android.content.Context;
import android.graphics.Bitmap;

public abstract class aag
  implements aah.a
{
  private static final String TAG = "BuildThumbnailTask";
  private final awn mBitmapLoader;
  public final axn mCache;
  public final String mCacheKey;
  public final aah mDownloader;
  public final String mUrl;
  
  public aag(Context paramContext, String paramString1, String paramString2)
  {
    this(new awn(paramContext), new aah(), axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE, paramString1, paramString2);
  }
  
  private aag(awn paramawn, aah paramaah, axn paramaxn, String paramString1, String paramString2)
  {
    mDownloader = paramaah;
    mCache = paramaxn;
    mBitmapLoader = paramawn;
    mUrl = paramString1;
    mCacheKey = paramString2;
  }
  
  public final void a(int paramInt)
  {
    awv localawv = new awv.a().a(mUrl, mCache, mCacheKey).a();
    a(mBitmapLoader.a(localawv).mBitmap);
  }
  
  public abstract void a(@chd Bitmap paramBitmap);
}

/* Location:
 * Qualified Name:     aag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */