import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.networkmanager.DownloadPriority;

final class adu
  extends adn
{
  public adu()
  {
    this(new akr(), aef.a(), new add(), new adt());
  }
  
  private adu(akr paramakr, aef paramaef, add paramadd, adt paramadt)
  {
    super(paramakr, paramaef, paramadd, paramadt);
  }
  
  public final boolean a(adf paramadf, DSnapPage paramDSnapPage, aly.a parama)
  {
    boolean bool = false;
    int i;
    if ((a == null) || (a.e == null) || (!a.e.equals(g)))
    {
      i = 0;
      if (i == 0) {
        break label164;
      }
      bool = true;
    }
    for (;;)
    {
      return bool;
      if (b != null) {}
      int k;
      for (i = b.f.intValue();; i = 0)
      {
        int j = b.a.a("DISCOVER_V2", "WAN_NUM_DSNAPS_TO_LOAD_BEFORE_CURRENT", 1);
        k = b.a.a("DISCOVER_V2", "WAN_NUM_DSNAPS_TO_LOAD_AFTER_CURRENT", 100);
        if (f.intValue() >= i - j) {
          break label132;
        }
        i = 0;
        break;
      }
      label132:
      if (f.intValue() > i + k)
      {
        i = 0;
        break;
      }
      c = false;
      i = 1;
      break;
      label164:
      if (adt.a(paramDSnapPage, c.c(h), b.a.a("DISCOVER_V2", "WAN_RECENT_CHANNEL_THRESHOLD_HOURS", 48), b.a.a("DISCOVER_V2", "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 1))) {
        c = false;
      }
      for (i = 1; i != 0; i = 0)
      {
        DownloadPriority.LOW.name();
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     adu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */