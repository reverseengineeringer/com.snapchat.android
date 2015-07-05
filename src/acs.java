import android.net.NetworkInfo;
import com.snapchat.android.discover.model.DSnapPage;

public final class acs
  implements acq
{
  private final ale a;
  private final acv b;
  private final acu c;
  
  public acs()
  {
    this(ale.a(), new acv(), new acu());
  }
  
  private acs(ale paramale, acv paramacv, acu paramacu)
  {
    a = paramale;
    c = paramacu;
    b = paramacv;
  }
  
  public final boolean a(acf paramacf, DSnapPage paramDSnapPage, alc.a parama)
  {
    NetworkInfo localNetworkInfo = a.b();
    if (localNetworkInfo == null) {
      return false;
    }
    if (localNetworkInfo.getType() == 1) {
      return b.a(paramacf, paramDSnapPage, parama);
    }
    return c.a(paramacf, paramDSnapPage, parama);
  }
}

/* Location:
 * Qualified Name:     acs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */