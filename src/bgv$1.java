import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;

final class bgv$1
  extends AsyncTask<Void, Void, List<Bitmap>>
{
  bgv$1(bgv parambgv, bgx parambgx) {}
  
  private List<Bitmap> a()
  {
    bgv.a();
    new StringBuilder("friends profile images - loading from cache for ").append(bgv.a(this$0));
    try
    {
      bgv.c(this$0);
      List localList = ProfileImageUtils.a(bgv.b(this$0), bgv.a(this$0));
      return localList;
    }
    catch (Exception localException)
    {
      bgv.a();
      new StringBuilder("friends profile images - Unable to load profile images for ").append(bgv.a(this$0)).append("! Error: ").append(localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bgv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */