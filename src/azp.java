import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import javax.inject.Inject;

public final class azp
{
  private static final String GRACEFUL_EXCEPTION_WARNING = "See logs for error output: ";
  private static final String TAG = "GracefulExceptionHandler";
  private final Bus mBus;
  private final azi mCrashSampler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  azp(azi paramazi, ReleaseManager paramReleaseManager)
  {
    this(paramazi, paramReleaseManager, ban.a());
  }
  
  private azp(azi paramazi, ReleaseManager paramReleaseManager, Bus paramBus)
  {
    mCrashSampler = paramazi;
    mReleaseManager = paramReleaseManager;
    mBus = paramBus;
  }
  
  public final void a(@cgb Throwable paramThrowable)
  {
    Timber.a("GracefulExceptionHandler", paramThrowable);
    if (ReleaseManager.b()) {
      mBus.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "See logs for error output: " + paramThrowable.getMessage()));
    }
    if (mCrashSampler.b()) {
      az.a(paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     azp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */