import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;

final class adv
  extends adn
{
  private final bhk e;
  
  public adv()
  {
    this(new akr(), aef.a(), new add(), new adt(), new bhk());
  }
  
  private adv(akr paramakr, aef paramaef, add paramadd, adt paramadt, bhk parambhk)
  {
    super(paramakr, paramaef, paramadd, paramadt);
    e = parambhk;
  }
  
  public final boolean a(adf paramadf, DSnapPage paramDSnapPage, aly.a parama)
  {
    if ((a != null) && (a.e != null) && (a.e.equals(g))) {
      c = true;
    }
    for (int i = 1; i != 0; i = 0) {
      return true;
    }
    long l;
    if (akr.aJ() == -1L)
    {
      l = System.currentTimeMillis() - 1L;
      if (!adt.a(paramDSnapPage, l, b.a.a("DISCOVER_V2", "WIFI_RECENT_USER_THRESHOLD_HOURS", 72), b.a.a("DISCOVER_V2", "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD", 1))) {
        break label136;
      }
      c = true;
    }
    label136:
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label142;
      }
      return true;
      l = akr.aJ();
      break;
    }
    label142:
    if (adt.a(paramDSnapPage, c.c(h), b.a.a("DISCOVER_V2", "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS", 72), b.a.a("DISCOVER_V2", "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 100))) {
      c = true;
    }
    for (i = 1; i != 0; i = 0) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     adv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */