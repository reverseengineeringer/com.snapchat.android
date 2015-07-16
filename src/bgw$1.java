import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;

public final class bgw$1
  extends AsyncTask<Void, Void, List<Bitmap>>
{
  public bgw$1(bgw parambgw, bgx parambgx) {}
  
  private List<Bitmap> a()
  {
    bgw.a();
    try
    {
      bgw.b(this$0);
      List localList = ProfileImageUtils.b(bgw.a(this$0));
      return localList;
    }
    catch (Exception localException)
    {
      bgw.a();
      new StringBuilder("profile images - Unable to load profile images! Error: ").append(localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bgw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */