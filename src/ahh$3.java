import android.os.Handler;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;

final class ahh$3
  implements PlatformInitListener
{
  ahh$3(Handler paramHandler, PlatformInitListener paramPlatformInitListener) {}
  
  public final void onInitProgressChanged(final InitProgressChangedEvent paramInitProgressChangedEvent)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        b.onInitProgressChanged(paramInitProgressChangedEvent);
      }
    });
  }
  
  public final void onInitStateChanged(final InitStateChangedEvent paramInitStateChangedEvent)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        b.onInitStateChanged(paramInitStateChangedEvent);
      }
    });
  }
}

/* Location:
 * Qualified Name:     ahh.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */