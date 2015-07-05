import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import java.util.Timer;
import java.util.TimerTask;

public final class mx
  implements mn
{
  public static final int TIMEOUT_MILLISECONDS = 30000;
  private final String TAG = "StoryAdStreamTimeoutListener";
  boolean mIsComplete = false;
  private final mt mListener;
  final Object mMutex = new Object();
  private final TimerTask mTimeoutRunnable = new TimerTask()
  {
    public final void run()
    {
      synchronized (mMutex)
      {
        if (mIsComplete) {
          return;
        }
        b(null);
        return;
      }
    }
  };
  private final Timer mTimeoutTimer;
  
  public mx(mt parammt)
  {
    this(parammt, new Timer());
  }
  
  private mx(mt parammt, Timer paramTimer)
  {
    mListener = parammt;
    mTimeoutTimer = paramTimer;
    mTimeoutTimer.schedule(mTimeoutRunnable, 30000L);
  }
  
  public final Bundle a(String paramString)
  {
    return mListener.a(paramString);
  }
  
  public final void a(@cgb mo parammo)
  {
    synchronized (mMutex)
    {
      if (mIsComplete)
      {
        Timber.e("StoryAdStreamTimeoutListener", "Skipping as could not resolve ad on time for Listener: %s", new Object[] { mListener });
        return;
      }
      b(parammo);
      return;
    }
  }
  
  protected final void b(mo parammo)
  {
    mIsComplete = true;
    mTimeoutRunnable.cancel();
    mTimeoutTimer.cancel();
    if (parammo != null)
    {
      mListener.a(parammo);
      return;
    }
    parammo = mListener;
    mo.a locala = new mo.a();
    mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.TIMEOUT, "Request timed out");
    parammo.a(locala.a());
  }
}

/* Location:
 * Qualified Name:     mx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */