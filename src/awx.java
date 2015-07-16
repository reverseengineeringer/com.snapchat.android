import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;

public final class awx
  extends AsyncTask<Void, Void, Bitmap>
{
  private Bitmap mBitmap;
  private Bitmap mMask;
  private int mProfileImageIndex;
  private ProfileImageUtils mProfileImageUtils;
  
  public awx(@chc Bitmap paramBitmap1, @chc Bitmap paramBitmap2, int paramInt)
  {
    this(paramBitmap1, paramBitmap2, paramInt, ProfileImageUtils.a());
  }
  
  private awx(Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt, ProfileImageUtils paramProfileImageUtils)
  {
    mBitmap = paramBitmap1;
    mMask = paramBitmap2;
    mProfileImageIndex = paramInt;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     awx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */