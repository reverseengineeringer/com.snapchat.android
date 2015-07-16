import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;
import java.util.concurrent.Executor;

public class bgv
{
  private static final String TAG = bgv.class.getSimpleName();
  private final axn mCache;
  final Executor mExecutor;
  private final String mKey;
  private final ProfileImageUtils mProfileImageUtils;
  
  public bgv(String paramString)
  {
    this(avf.HIGH_PRIORITY_EXECUTOR, axo.PROFILE_IMAGE_CACHE, paramString, ProfileImageUtils.a());
  }
  
  private bgv(Executor paramExecutor, axn paramaxn, String paramString, ProfileImageUtils paramProfileImageUtils)
  {
    mExecutor = paramExecutor;
    mCache = paramaxn;
    mKey = paramString;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     bgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */