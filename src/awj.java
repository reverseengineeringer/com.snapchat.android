import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.snapchat.android.Timber;

public final class awj
  implements awh
{
  private static final String TAG = "CachedBitmapSource";
  @cgc
  private byte[] mBytes;
  @cgb
  private final awp mCache;
  @cgb
  private final String mCacheKey;
  @cgc
  private final ayc mEncryptionAlgorithm;
  
  public awj(@cgb awp paramawp, @cgb String paramString, @cgc ayc paramayc)
  {
    mCache = paramawp;
    mCacheKey = paramString;
    mEncryptionAlgorithm = paramayc;
  }
  
  public final Bitmap a(BitmapFactory.Options paramOptions)
  {
    mh localmh = new mh("CachedBitmapSource", "decodeBitmap");
    if (mBytes != null)
    {
      byte[] arrayOfByte = mBytes;
      paramOptions = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, paramOptions);
      localmh.a("decodeByteArray");
      Timber.a(localmh);
      return paramOptions;
    }
    return null;
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources)
  {
    paramContentResolver = new mh("CachedBitmapSource", "prepare");
    mBytes = mCache.a(mCacheKey);
    paramContentResolver.a("get " + mCacheKey);
    if ((mBytes != null) && (mEncryptionAlgorithm != null))
    {
      mBytes = mEncryptionAlgorithm.b(mBytes);
      paramContentResolver.a("decrypt");
    }
    Timber.a(paramContentResolver);
  }
}

/* Location:
 * Qualified Name:     awj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */