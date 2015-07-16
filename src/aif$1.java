import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.snapchat.android.analytics.framework.EasyMetric;

final class aif$1
  implements PlatformInitListener
{
  aif$1(aif paramaif) {}
  
  public final void onInitProgressChanged(InitProgressChangedEvent paramInitProgressChangedEvent) {}
  
  public final void onInitStateChanged(InitStateChangedEvent paramInitStateChangedEvent)
  {
    if (paramInitStateChangedEvent.getState() == InitState.INITIALIZED)
    {
      a.g();
      return;
    }
    paramInitStateChangedEvent.getErrMessage();
    paramInitStateChangedEvent.getErrCode();
    new EasyMetric("HERE_INIT_FAILED").a(false);
  }
}

/* Location:
 * Qualified Name:     aif.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */