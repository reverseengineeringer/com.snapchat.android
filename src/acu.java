import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.networkmanager.DownloadPriority;

final class acu
  extends acn
{
  public acu()
  {
    this(new ajx(), adf.a(), new acd(), new act());
  }
  
  private acu(ajx paramajx, adf paramadf, acd paramacd, act paramact)
  {
    super(paramajx, paramadf, paramacd, paramact);
  }
  
  public final boolean a(acf paramacf, DSnapPage paramDSnapPage, alc.a parama)
  {
    boolean bool = false;
    int i;
    if ((a == null) || (a.e == null) || (!a.e.equals(g)))
    {
      i = 0;
      if (i == 0) {
        break label179;
      }
      Timber.a("WanDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s, it is in range in the selected edition", new Object[] { paramDSnapPage });
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
          break label147;
        }
        i = 0;
        break;
      }
      label147:
      if (f.intValue() > i + k)
      {
        i = 0;
        break;
      }
      c = false;
      i = 1;
      break;
      label179:
      if (act.a(paramDSnapPage, c.c(h), b.a.a("DISCOVER_V2", "WAN_RECENT_CHANNEL_THRESHOLD_HOURS", 48), b.a.a("DISCOVER_V2", "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 1))) {
        c = false;
      }
      for (i = 1; i != 0; i = 0)
      {
        Timber.a("WanDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s, user has seen this channel recently", new Object[] { paramDSnapPage, DownloadPriority.LOW.name() });
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     acu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */