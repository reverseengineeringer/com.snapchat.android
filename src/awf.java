import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;
import com.snapchat.android.Timber;

public final class awf
{
  private static final String TAG = "BitmapDecoder";
  @cgb
  private awn mBitmapOptionsProvider;
  @cgb
  private final avq mBitmapPool;
  @cgb
  private final ContentResolver mContentResolver;
  @cgb
  private final DisplayMetrics mDisplayMetrics;
  @cgb
  private nh mMemoryAnalytics;
  @cgb
  private final Resources mResources;
  
  public awf(@cgb DisplayMetrics paramDisplayMetrics, @cgb ContentResolver paramContentResolver, @cgb Resources paramResources, @cgb avq paramavq)
  {
    this(paramDisplayMetrics, paramContentResolver, paramResources, paramavq, new awn(), new nh());
  }
  
  private awf(@cgb DisplayMetrics paramDisplayMetrics, @cgb ContentResolver paramContentResolver, @cgb Resources paramResources, @cgb avq paramavq, @cgb awn paramawn, @cgb nh paramnh)
  {
    mDisplayMetrics = paramDisplayMetrics;
    mContentResolver = paramContentResolver;
    mResources = paramResources;
    mBitmapPool = paramavq;
    mBitmapOptionsProvider = paramawn;
    mMemoryAnalytics = paramnh;
  }
  
  @avl
  @cgb
  public final avo a(@cgb awh paramawh, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    paramawh.a(mContentResolver, mResources);
    int i;
    if (paramInt1 > 0)
    {
      i = paramInt1;
      paramInt1 = paramInt2;
      if (paramInt2 > 0) {}
    }
    else
    {
      localObject1 = new BitmapFactory.Options();
      inJustDecodeBounds = true;
      paramawh.a((BitmapFactory.Options)localObject1);
      if ((outHeight <= 0) || (outWidth <= 0))
      {
        Timber.f("BitmapDecoder", "Measured invalid Bitmap size %d x %d", new Object[] { Integer.valueOf(outWidth), Integer.valueOf(outHeight) });
        return new avo();
      }
      i = outWidth;
      paramInt1 = outHeight;
    }
    if ((i <= 0) || (paramInt1 <= 0))
    {
      Timber.c("BitmapDecoder", "Invalid measurements! Can't use a Bitmap from the pool. :(", new Object[0]);
      localObject1 = new BitmapFactory.Options();
      inJustDecodeBounds = false;
      inMutable = true;
      inPreferredConfig = Bitmap.Config.ARGB_8888;
      if (inBitmap == null) {
        break label258;
      }
    }
    Object localObject2;
    for (boolean bool = true;; bool = false)
    {
      try
      {
        localObject2 = paramawh.a((BitmapFactory.Options)localObject1);
        if (localObject2 == null) {
          break label269;
        }
        localObject2 = new avo((Bitmap)localObject2, bool);
        return (avo)localObject2;
      }
      catch (OutOfMemoryError paramawh)
      {
        nh.a(paramawh);
        return new avo();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        label258:
        localObject2 = inBitmap;
        Timber.a("BitmapDecoder", localIllegalArgumentException);
        Timber.f("BitmapDecoder", "input width: %d height: %d exactDimensions: %b", new Object[] { Integer.valueOf(i), Integer.valueOf(paramInt1), Boolean.valueOf(paramBoolean) });
        paramInt2 = outWidth;
        j = outHeight;
        if (inPreferredConfig != null) {
          break label515;
        }
      }
      localObject2 = awn.a(mDisplayMetrics, i, paramInt1);
      localObject1 = localObject2;
      if (mBitmapPool == null) {
        break;
      }
      inBitmap = mBitmapPool.a((BitmapFactory.Options)localObject2, paramBoolean);
      localObject1 = localObject2;
      break;
    }
    label269:
    int j;
    Object localObject1 = "null";
    label352:
    Timber.f("BitmapDecoder", "options width: %d height: %d config: %s", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(j), localObject1 });
    if (localObject2 != null)
    {
      paramInt2 = ((Bitmap)localObject2).getWidth();
      j = ((Bitmap)localObject2).getHeight();
      paramBoolean = ((Bitmap)localObject2).isMutable();
      bool = ((Bitmap)localObject2).isRecycled();
      if (((Bitmap)localObject2).getConfig() != null) {
        break label528;
      }
    }
    label515:
    label528:
    for (localObject1 = "null";; localObject1 = ((Bitmap)localObject2).getConfig().name())
    {
      Timber.f("BitmapDecoder", "reused bitmap width: %d height: %d mutable: %b, recycled: %b config: %s", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(j), Boolean.valueOf(paramBoolean), Boolean.valueOf(bool), localObject1 });
      localObject1 = awn.a(mDisplayMetrics, i, paramInt1);
      inBitmap = null;
      paramawh = paramawh.a((BitmapFactory.Options)localObject1);
      if (paramawh == null) {
        break;
      }
      return new avo(paramawh, false);
      localObject1 = inPreferredConfig.name();
      break label352;
    }
  }
}

/* Location:
 * Qualified Name:     awf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */