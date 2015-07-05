import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;

final class bfv$1
  extends AsyncTask<Void, Void, List<Bitmap>>
{
  bfv$1(bfv parambfv, bfx parambfx) {}
  
  private List<Bitmap> a()
  {
    Timber.c(bfv.a(), "friends profile images - loading from cache for " + bfv.a(this$0), new Object[0]);
    try
    {
      bfv.c(this$0);
      List localList = ProfileImageUtils.a(bfv.b(this$0), bfv.a(this$0));
      return localList;
    }
    catch (Exception localException)
    {
      Timber.f(bfv.a(), "friends profile images - Unable to load profile images for " + bfv.a(this$0) + "! Error: " + localException, new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bfv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */