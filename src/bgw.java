import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;
import java.util.concurrent.Executor;

public class bgw
{
  private static final String TAG = bgw.class.getSimpleName();
  private final axn mCache;
  public final Executor mExecutor;
  private final ProfileImageUtils mProfileImageUtils;
  
  public bgw()
  {
    this(avf.HIGH_PRIORITY_EXECUTOR, axo.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private bgw(Executor paramExecutor, axn paramaxn, ProfileImageUtils paramProfileImageUtils)
  {
    mExecutor = paramExecutor;
    mCache = paramaxn;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     bgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */