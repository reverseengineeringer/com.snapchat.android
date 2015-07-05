import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;

public final class bey
  implements atk
{
  private static final String TAG = "FpsLogger";
  private final bgk mClock;
  protected int mFramesDrawn = 0;
  private long mLastDrawTime;
  private final ReleaseManager mReleaseManager;
  
  public bey()
  {
    this(ReleaseManager.a(), new bgk());
  }
  
  private bey(ReleaseManager paramReleaseManager, bgk parambgk)
  {
    mReleaseManager = paramReleaseManager;
    mClock = parambgk;
  }
  
  public final void a()
  {
    if (!ReleaseManager.b()) {}
    do
    {
      return;
      mFramesDrawn += 1;
    } while (mFramesDrawn < 30);
    long l = SystemClock.elapsedRealtime();
    Timber.b("FpsLogger", "FPS = %d", new Object[] { Float.valueOf(mFramesDrawn * 1000.0F / (float)(l - mLastDrawTime)) });
    mLastDrawTime = l;
    mFramesDrawn = 0;
  }
}

/* Location:
 * Qualified Name:     bey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */