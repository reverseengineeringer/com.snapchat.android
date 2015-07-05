import com.snapchat.android.Timber;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.squareup.otto.Bus;

final class amc$1
  implements Runnable
{
  amc$1(amc paramamc, uc paramuc, bgx parambgx) {}
  
  public final void run()
  {
    if ((a.d()) && (b != null))
    {
      c.a(b);
      return;
    }
    amc localamc = c;
    uc localuc = a;
    bgp.b();
    Timber.f("AllUpdatesOperation", "onFailure - " + mResponseCode + ": " + mResponseMessage, new Object[0]);
    ban.a().a(new SnapMessageFeedRefreshedEvent(g, mResponseCode));
    ban.a().a(new beo(false));
    ban.a().a(new beh(g));
  }
}

/* Location:
 * Qualified Name:     amc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */