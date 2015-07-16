import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import javax.inject.Inject;

public final class bao
{
  private static final String GRACEFUL_EXCEPTION_WARNING = "See logs for error output: ";
  private static final String TAG = "GracefulExceptionHandler";
  private final Bus mBus;
  private final bah mCrashSampler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  bao(bah parambah, ReleaseManager paramReleaseManager)
  {
    this(parambah, paramReleaseManager, bbo.a());
  }
  
  private bao(bah parambah, ReleaseManager paramReleaseManager, Bus paramBus)
  {
    mCrashSampler = parambah;
    mReleaseManager = paramReleaseManager;
    mBus = paramBus;
  }
  
  public final void a(@chc Throwable paramThrowable)
  {
    if (ReleaseManager.b()) {
      mBus.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "See logs for error output: " + paramThrowable.getMessage()));
    }
    if (mCrashSampler.b()) {
      az.a(paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     bao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */