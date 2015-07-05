import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;
import java.util.concurrent.Executor;

public class bfv
{
  private static final String TAG = bfv.class.getSimpleName();
  private final awp mCache;
  final Executor mExecutor;
  private final String mKey;
  private final ProfileImageUtils mProfileImageUtils;
  
  public bfv(String paramString)
  {
    this(auh.HIGH_PRIORITY_EXECUTOR, awq.PROFILE_IMAGE_CACHE, paramString, ProfileImageUtils.a());
  }
  
  private bfv(Executor paramExecutor, awp paramawp, String paramString, ProfileImageUtils paramProfileImageUtils)
  {
    mExecutor = paramExecutor;
    mCache = paramawp;
    mKey = paramString;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     bfv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */