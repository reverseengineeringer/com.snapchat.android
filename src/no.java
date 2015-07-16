import android.os.Bundle;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import java.util.Timer;
import java.util.TimerTask;

public final class no
  implements ne
{
  public static final int TIMEOUT_MILLISECONDS = 30000;
  private final String TAG = "StoryAdStreamTimeoutListener";
  boolean mIsComplete = false;
  private final nk mListener;
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
  
  public no(nk paramnk)
  {
    this(paramnk, new Timer());
  }
  
  private no(nk paramnk, Timer paramTimer)
  {
    mListener = paramnk;
    mTimeoutTimer = paramTimer;
    mTimeoutTimer.schedule(mTimeoutRunnable, 30000L);
  }
  
  public final Bundle a(String paramString)
  {
    return mListener.a(paramString);
  }
  
  public final void a(@chc nf paramnf)
  {
    synchronized (mMutex)
    {
      if (mIsComplete)
      {
        paramnf = mListener;
        return;
      }
      b(paramnf);
      return;
    }
  }
  
  protected final void b(nf paramnf)
  {
    mIsComplete = true;
    mTimeoutRunnable.cancel();
    mTimeoutTimer.cancel();
    if (paramnf != null)
    {
      mListener.a(paramnf);
      return;
    }
    paramnf = mListener;
    nf.a locala = new nf.a();
    mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.TIMEOUT, "Request timed out");
    paramnf.a(locala.a());
  }
}

/* Location:
 * Qualified Name:     no
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */