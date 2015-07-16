import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;

public final class axh
  implements axf
{
  private static final String TAG = "CachedBitmapSource";
  @chd
  private byte[] mBytes;
  @chc
  private final axn mCache;
  @chc
  private final String mCacheKey;
  @chd
  private final aza mEncryptionAlgorithm;
  
  public axh(@chc axn paramaxn, @chc String paramString, @chd aza paramaza)
  {
    mCache = paramaxn;
    mCacheKey = paramString;
    mEncryptionAlgorithm = paramaza;
  }
  
  public final Bitmap a(BitmapFactory.Options paramOptions)
  {
    if (mBytes != null)
    {
      byte[] arrayOfByte = mBytes;
      return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, paramOptions);
    }
    return null;
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources)
  {
    mBytes = mCache.a(mCacheKey);
    new StringBuilder("get ").append(mCacheKey);
    if ((mBytes != null) && (mEncryptionAlgorithm != null)) {
      mBytes = mEncryptionAlgorithm.b(mBytes);
    }
  }
}

/* Location:
 * Qualified Name:     axh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */