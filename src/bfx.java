import android.os.SystemClock;
import com.snapchat.android.util.debug.ReleaseManager;

public final class bfx
  implements aui
{
  private static final String TAG = "FpsLogger";
  private final bhk mClock;
  protected int mFramesDrawn = 0;
  private long mLastDrawTime;
  private final ReleaseManager mReleaseManager;
  
  public bfx()
  {
    this(ReleaseManager.a(), new bhk());
  }
  
  private bfx(ReleaseManager paramReleaseManager, bhk parambhk)
  {
    mReleaseManager = paramReleaseManager;
    mClock = parambhk;
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
    float f = mFramesDrawn * 1000.0F / (float)(l - mLastDrawTime);
    mLastDrawTime = l;
    mFramesDrawn = 0;
  }
}

/* Location:
 * Qualified Name:     bfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */