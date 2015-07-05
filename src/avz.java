import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;

public final class avz
  extends AsyncTask<Void, Void, Bitmap>
{
  private Bitmap mBitmap;
  private Bitmap mMask;
  private ProfileImageUtils mProfileImageUtils;
  
  public avz(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this(paramBitmap1, paramBitmap2, ProfileImageUtils.a());
  }
  
  private avz(Bitmap paramBitmap1, Bitmap paramBitmap2, ProfileImageUtils paramProfileImageUtils)
  {
    mBitmap = paramBitmap1;
    mMask = paramBitmap2;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     avz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */