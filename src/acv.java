import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;

final class acv
  extends acn
{
  private final bgk e;
  
  public acv()
  {
    this(new ajx(), adf.a(), new acd(), new act(), new bgk());
  }
  
  private acv(ajx paramajx, adf paramadf, acd paramacd, act paramact, bgk parambgk)
  {
    super(paramajx, paramadf, paramacd, paramact);
    e = parambgk;
  }
  
  public final boolean a(acf paramacf, DSnapPage paramDSnapPage, alc.a parama)
  {
    if ((a != null) && (a.e != null) && (a.e.equals(g))) {
      c = true;
    }
    for (int i = 1; i != 0; i = 0)
    {
      Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s, it is in the selected edition", new Object[] { paramDSnapPage });
      return true;
    }
    long l;
    if (ajx.aK() == -1L)
    {
      l = System.currentTimeMillis() - 1L;
      if (!act.a(paramDSnapPage, l, b.a.a("DISCOVER_V2", "WIFI_RECENT_USER_THRESHOLD_HOURS", 72), b.a.a("DISCOVER_V2", "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD", 1))) {
        break label166;
      }
      c = true;
    }
    label166:
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label172;
      }
      Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s, user has been to discover recently", new Object[] { paramDSnapPage });
      return true;
      l = ajx.aK();
      break;
    }
    label172:
    if (act.a(paramDSnapPage, c.c(h), b.a.a("DISCOVER_V2", "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS", 72), b.a.a("DISCOVER_V2", "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 100))) {
      c = true;
    }
    for (i = 1; i != 0; i = 0)
    {
      Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s, user has seen this channel recently", new Object[] { paramDSnapPage });
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     acv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */