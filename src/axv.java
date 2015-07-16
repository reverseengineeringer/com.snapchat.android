import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.model.Mediabryo;
import java.util.concurrent.Callable;

@bxr
public final class axv
{
  private static final String TAG = "SendSnapCacheWrapper";
  private static axv sInstance;
  
  public static axv a()
  {
    if (sInstance == null) {
      sInstance = new axv();
    }
    return sInstance;
  }
  
  @cbr
  public static byte[] a(@chc aji paramaji)
  {
    bhp.b();
    String str = mClientId;
    if (avr.a(paramaji)) {
      return axo.MY_SNAP_VIDEO_CACHE.a(str);
    }
    return axo.MY_SNAP_IMAGE_CACHE.a(str);
  }
  
  public static boolean c(@chc aji paramaji)
  {
    Object localObject = mClientId;
    byte[] arrayOfByte = paramaji.g();
    if (arrayOfByte == null)
    {
      paramaji = mClientId;
      return false;
    }
    try
    {
      axo.MY_SNAP_IMAGE_CACHE.a((String)localObject, arrayOfByte);
      localObject = avp.c(mCompositeImageBitmap);
      if (localObject != null) {
        axo.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mClientId, (byte[])localObject);
      } else {
        paramaji = mClientId;
      }
    }
    catch (axq paramaji)
    {
      new StringBuilder("saveImageToCache exception: ").append(paramaji);
      return false;
    }
    return true;
  }
  
  public final boolean a(aku paramaku, bgj parambgj)
  {
    final String str = mClientId;
    final byte[] arrayOfByte = paramaku.g();
    if (arrayOfByte == null)
    {
      paramaku = mClientId;
      return false;
    }
    try
    {
      new ave().a(new Callable() {}).call();
      parambgj = parambgj.b(paramaku.n());
      if (parambgj != null)
      {
        str = mClientId;
        paramaku = avp.a(parambgj, mCompositeImageBitmap);
        if (paramaku != null) {
          axo.MY_STORY_SNAP_THUMBNAIL_CACHE.a(str, paramaku);
        }
        parambgj.recycle();
      }
      return true;
    }
    catch (Exception paramaku)
    {
      new StringBuilder("saveVideoToCache exception: ").append(paramaku);
    }
    return false;
  }
  
  public final void b(final aji paramaji)
  {
    new AsyncTask() {}.executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new Void[0]);
  }
}

/* Location:
 * Qualified Name:     axv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */