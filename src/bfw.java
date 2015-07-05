import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;
import java.util.concurrent.Executor;

public class bfw
{
  private static final String TAG = bfw.class.getSimpleName();
  private final awp mCache;
  public final Executor mExecutor;
  private final ProfileImageUtils mProfileImageUtils;
  
  public bfw()
  {
    this(auh.HIGH_PRIORITY_EXECUTOR, awq.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private bfw(Executor paramExecutor, awp paramawp, ProfileImageUtils paramProfileImageUtils)
  {
    mExecutor = paramExecutor;
    mCache = paramawp;
    mProfileImageUtils = paramProfileImageUtils;
  }
}

/* Location:
 * Qualified Name:     bfw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */