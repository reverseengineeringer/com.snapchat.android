import android.net.NetworkInfo;
import com.snapchat.android.discover.model.DSnapPage;

public final class ads
  implements adq
{
  private final ama a;
  private final adv b;
  private final adu c;
  
  public ads()
  {
    this(ama.a(), new adv(), new adu());
  }
  
  private ads(ama paramama, adv paramadv, adu paramadu)
  {
    a = paramama;
    c = paramadu;
    b = paramadv;
  }
  
  public final boolean a(adf paramadf, DSnapPage paramDSnapPage, aly.a parama)
  {
    NetworkInfo localNetworkInfo = a.b();
    if (localNetworkInfo == null) {
      return false;
    }
    if (localNetworkInfo.getType() == 1) {
      return b.a(paramadf, paramDSnapPage, parama);
    }
    return c.a(paramadf, paramDSnapPage, parama);
  }
}

/* Location:
 * Qualified Name:     ads
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */