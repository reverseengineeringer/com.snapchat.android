import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.snapchat.android.util.debug.ReleaseManager;

public final class axk
  implements axf
{
  private final int mResourceId;
  private Resources mResources;
  
  public axk(int paramInt)
  {
    mResourceId = paramInt;
  }
  
  public final Bitmap a(BitmapFactory.Options paramOptions)
  {
    if (mResources == null)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException("Cannot decode bitmap without calling prepare!");
      }
      return null;
    }
    return BitmapFactory.decodeResource(mResources, mResourceId, paramOptions);
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources)
  {
    mResources = paramResources;
  }
}

/* Location:
 * Qualified Name:     axk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */