import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;

public final class axd
{
  private static final String TAG = "BitmapDecoder";
  @chc
  private axl mBitmapOptionsProvider;
  @chc
  private final awo mBitmapPool;
  @chc
  private final ContentResolver mContentResolver;
  @chc
  private final DisplayMetrics mDisplayMetrics;
  @chc
  private ny mMemoryAnalytics;
  @chc
  private final Resources mResources;
  
  public axd(@chc DisplayMetrics paramDisplayMetrics, @chc ContentResolver paramContentResolver, @chc Resources paramResources, @chc awo paramawo)
  {
    this(paramDisplayMetrics, paramContentResolver, paramResources, paramawo, new axl(), new ny());
  }
  
  private axd(@chc DisplayMetrics paramDisplayMetrics, @chc ContentResolver paramContentResolver, @chc Resources paramResources, @chc awo paramawo, @chc axl paramaxl, @chc ny paramny)
  {
    mDisplayMetrics = paramDisplayMetrics;
    mContentResolver = paramContentResolver;
    mResources = paramResources;
    mBitmapPool = paramawo;
    mBitmapOptionsProvider = paramaxl;
    mMemoryAnalytics = paramny;
  }
  
  @awj
  @chc
  public final awm a(@chc axf paramaxf, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    paramaxf.a(mContentResolver, mResources);
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
      paramaxf.a((BitmapFactory.Options)localObject1);
      if ((outHeight <= 0) || (outWidth <= 0))
      {
        paramInt1 = outWidth;
        paramInt1 = outHeight;
        return new awm();
      }
      i = outWidth;
      paramInt1 = outHeight;
    }
    if ((i <= 0) || (paramInt1 <= 0))
    {
      localObject1 = new BitmapFactory.Options();
      inJustDecodeBounds = false;
      inMutable = true;
      inPreferredConfig = Bitmap.Config.ARGB_8888;
      if (inBitmap == null) {
        break label226;
      }
    }
    for (paramBoolean = true;; paramBoolean = false)
    {
      try
      {
        localObject2 = paramaxf.a((BitmapFactory.Options)localObject1);
        if (localObject2 == null) {
          break label237;
        }
        localObject2 = new awm((Bitmap)localObject2, paramBoolean);
        return (awm)localObject2;
      }
      catch (OutOfMemoryError paramaxf)
      {
        Object localObject2;
        ny.a(paramaxf);
        return new awm();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        label226:
        localBitmap = inBitmap;
        paramInt2 = outWidth;
        paramInt2 = outHeight;
        if (inPreferredConfig != null) {
          break label360;
        }
      }
      localObject2 = axl.a(mDisplayMetrics, i, paramInt1);
      localObject1 = localObject2;
      if (mBitmapPool == null) {
        break;
      }
      inBitmap = mBitmapPool.a((BitmapFactory.Options)localObject2, paramBoolean);
      localObject1 = localObject2;
      break;
    }
    label237:
    Bitmap localBitmap;
    Object localObject1 = "null";
    label278:
    if (localBitmap != null)
    {
      localBitmap.getWidth();
      localBitmap.getHeight();
      localBitmap.isMutable();
      localBitmap.isRecycled();
      if (localBitmap.getConfig() != null) {
        break label373;
      }
    }
    label360:
    label373:
    for (localObject1 = "null";; localObject1 = localBitmap.getConfig().name())
    {
      localObject1 = axl.a(mDisplayMetrics, i, paramInt1);
      inBitmap = null;
      paramaxf = paramaxf.a((BitmapFactory.Options)localObject1);
      if (paramaxf == null) {
        break;
      }
      return new awm(paramaxf, false);
      localObject1 = inPreferredConfig.name();
      break label278;
    }
  }
}

/* Location:
 * Qualified Name:     axd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */