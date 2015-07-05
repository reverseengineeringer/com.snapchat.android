import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;

public final class bfw$1
  extends AsyncTask<Void, Void, List<Bitmap>>
{
  public bfw$1(bfw parambfw, bfx parambfx) {}
  
  private List<Bitmap> a()
  {
    Timber.c(bfw.a(), "profile images - loading from cache", new Object[0]);
    try
    {
      bfw.b(this$0);
      List localList = ProfileImageUtils.b(bfw.a(this$0));
      return localList;
    }
    catch (Exception localException)
    {
      Timber.f(bfw.a(), "profile images - Unable to load profile images! Error: " + localException, new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bfw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */