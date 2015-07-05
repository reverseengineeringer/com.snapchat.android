import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;

final class ahj$1
  implements PlatformInitListener
{
  ahj$1(ahj paramahj) {}
  
  public final void onInitProgressChanged(InitProgressChangedEvent paramInitProgressChangedEvent) {}
  
  public final void onInitStateChanged(InitStateChangedEvent paramInitStateChangedEvent)
  {
    if (paramInitStateChangedEvent.getState() == InitState.INITIALIZED)
    {
      a.f();
      return;
    }
    Timber.f("livechat", "Failed to initialize the AddLive SDK: %s (ERR: %d)", new Object[] { paramInitStateChangedEvent.getErrMessage(), Integer.valueOf(paramInitStateChangedEvent.getErrCode()) });
    new EasyMetric("HERE_INIT_FAILED").a(false);
  }
}

/* Location:
 * Qualified Name:     ahj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */