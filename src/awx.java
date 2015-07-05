import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Mediabryo;
import java.util.concurrent.Callable;

@bwq
public final class awx
{
  private static final String TAG = "SendSnapCacheWrapper";
  private static awx sInstance;
  
  public static awx a()
  {
    if (sInstance == null) {
      sInstance = new awx();
    }
    return sInstance;
  }
  
  @caq
  public static byte[] a(@cgb aim paramaim)
  {
    bgp.b();
    String str = mClientId;
    if (aut.a(paramaim)) {
      return awq.MY_SNAP_VIDEO_CACHE.a(str);
    }
    return awq.MY_SNAP_IMAGE_CACHE.a(str);
  }
  
  public static boolean c(@cgb aim paramaim)
  {
    Object localObject = mClientId;
    byte[] arrayOfByte = paramaim.g();
    if (arrayOfByte == null)
    {
      Timber.e("SendSnapCacheWrapper", "Invalid image Snap with null media bytes. Client Id: %s", new Object[] { mClientId });
      return false;
    }
    try
    {
      awq.MY_SNAP_IMAGE_CACHE.a((String)localObject, arrayOfByte);
      localObject = aur.c(mCompositeImageBitmap);
      if (localObject != null) {
        awq.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mClientId, (byte[])localObject);
      } else {
        Timber.e("SendSnapCacheWrapper", "Not able to create thumbnail for image snap: %s", new Object[] { mClientId });
      }
    }
    catch (aws paramaim)
    {
      Timber.f("SendSnapCacheWrapper", "saveImageToCache exception: " + paramaim, new Object[0]);
      return false;
    }
    return true;
  }
  
  public final boolean a(ajm paramajm, bfj parambfj)
  {
    final String str = mClientId;
    final byte[] arrayOfByte = paramajm.g();
    if (arrayOfByte == null)
    {
      Timber.e("SendSnapCacheWrapper", "Invalid video Snap with null media bytes. Client Id: %s", new Object[] { mClientId });
      return false;
    }
    try
    {
      new aug().a(new Callable() {}).call();
      parambfj = parambfj.b(paramajm.n());
      if (parambfj != null)
      {
        str = mClientId;
        paramajm = aur.a(parambfj, mCompositeImageBitmap);
        if (paramajm != null) {
          awq.MY_STORY_SNAP_THUMBNAIL_CACHE.a(str, paramajm);
        }
        parambfj.recycle();
      }
      return true;
    }
    catch (Exception paramajm)
    {
      Timber.f("SendSnapCacheWrapper", "saveVideoToCache exception: " + paramajm, new Object[0]);
    }
    return false;
  }
  
  public final void b(final aim paramaim)
  {
    new AsyncTask() {}.executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new Void[0]);
  }
}

/* Location:
 * Qualified Name:     awx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */