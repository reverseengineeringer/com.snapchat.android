import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class adl
{
  final aeg a;
  public final Bus b;
  public final adm c;
  public final alb d;
  public final DiscoverUsageAnalytics e;
  final PublisherChannelTable f;
  final EditionTable g;
  final Context h;
  public final Object i = new Object();
  public final Map<String, adl.c> j = new HashMap();
  public final Map<String, adm.a> k = new HashMap();
  public final Map<String, adl.c> l = new HashMap();
  public final ChatPerformanceAnalytics m;
  public boolean n = false;
  public final abx.a o = new abx.a()
  {
    public final void a(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong, DiscoverLinkStatusResult.LinkStatus paramAnonymousLinkStatus, int paramAnonymousInt, bjt paramAnonymousbjt, bjv paramAnonymousbjv)
    {
      EasyMetric localEasyMetric = m.a("DISCOVER_SHARE_LINK_VALIDATION", paramAnonymousString1);
      if (localEasyMetric != null) {
        localEasyMetric.a("link_status", paramAnonymousLinkStatus.name()).b(false);
      }
      paramAnonymousString2 = new DiscoverLinkStatusResult(paramAnonymousString2, paramAnonymousString3, paramAnonymousString4, paramAnonymousLinkStatus, paramAnonymousLong, paramAnonymousInt, paramAnonymousbjt, paramAnonymousbjv);
      a(paramAnonymousString1, paramAnonymousString2);
    }
  };
  
  public adl()
  {
    this(aeg.a(), ban.a(), new adm(), alb.a(), new DiscoverUsageAnalytics(), SnapchatApplication.b(), PublisherChannelTable.a(), EditionTable.a(), ChatPerformanceAnalytics.a());
  }
  
  private adl(aeg paramaeg, Bus paramBus, adm paramadm, alb paramalb, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, Context paramContext, PublisherChannelTable paramPublisherChannelTable, EditionTable paramEditionTable, ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    a = paramaeg;
    b = paramBus;
    c = paramadm;
    d = paramalb;
    e = paramDiscoverUsageAnalytics;
    h = paramContext;
    f = paramPublisherChannelTable;
    g = paramEditionTable;
    m = paramChatPerformanceAnalytics;
  }
  
  private void a(String paramString, @cgb final adl.c paramc)
  {
    if ((b) && (d != null))
    {
      Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Caching link status publisher available? %s \n %s", new Object[] { paramString, c, d });
      if (d.mLinkStatus != DiscoverLinkStatusResult.LinkStatus.FAILED) {
        l.put(d.mDSnapId, paramc);
      }
      if (d.mLinkStatus != DiscoverLinkStatusResult.LinkStatus.NOT_AVAILABLE) {
        auh.SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS.execute(new Runnable()
        {
          public final void run()
          {
            Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: Saving channel and chunk to DB.", new Object[0]);
            if (paramcd.mChannelListResponse != null) {
              PublisherChannelTable.a(h, paramcd.mChannelListResponse);
            }
            if ((paramcd.mLinkStatus == DiscoverLinkStatusResult.LinkStatus.ARCHIVED) && (paramcd.mEditionChunkResponse != null)) {
              EditionTable.a(h, paramcd.mEditionChunkResponse, paramcc, paramcd.mEditionId);
            }
          }
        });
      }
      if (e != null)
      {
        Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Calling callback for link status %s \n %s", new Object[] { paramString, c, d });
        bgp.a(new Runnable()
        {
          public final void run()
          {
            paramce.a(paramcd, paramcc);
          }
        });
      }
    }
  }
  
  static boolean a(adl.c paramc)
  {
    return (a) && (d != null) && (b);
  }
  
  public final void a(String paramString, DiscoverLinkStatusResult paramDiscoverLinkStatusResult)
  {
    for (;;)
    {
      adl.c localc;
      synchronized (i)
      {
        localc = (adl.c)j.get(paramString);
        if (localc == null)
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Link status ignored:\n %s", new Object[] { paramString, paramDiscoverLinkStatusResult });
          return;
        }
        Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Link status determined\n %s", new Object[] { paramString, paramDiscoverLinkStatusResult });
        d = paramDiscoverLinkStatusResult;
        a(paramString, localc);
        if (a(localc))
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s fully loaded after link", new Object[] { paramString });
          j.remove(paramString);
          return;
        }
      }
      j.put(paramString, localc);
    }
  }
  
  public final void a(String paramString1, String paramString2, @cgc String paramString3)
  {
    for (;;)
    {
      adl.c localc;
      synchronized (i)
      {
        localc = (adl.c)j.get(paramString1);
        if (localc == null)
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Publisher availability %s region: %s", new Object[] { paramString1, paramString2, paramString3 });
          return;
        }
        Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Publisher availability determined %s region: %s", new Object[] { paramString1, paramString2, paramString3 });
        b = true;
        c = paramString3;
        a(paramString1, localc);
        if (a(localc))
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s fully loaded after link", new Object[] { paramString1 });
          j.remove(paramString1);
          return;
        }
      }
      j.put(paramString1, localc);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(DiscoverLinkStatusResult paramDiscoverLinkStatusResult, @cgc String paramString);
    
    public abstract void a(boolean paramBoolean);
  }
  
  final class b
    implements aeg.a
  {
    private final String b;
    
    b(String paramString)
    {
      b = paramString;
    }
    
    public final void a(ImageView arg1, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean)
    {
      paramDrawable = adl.this;
      paramBundle = b;
      for (;;)
      {
        adl.c localc;
        synchronized (i)
        {
          localc = (adl.c)j.get(paramBundle);
          if (localc == null)
          {
            Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Icon load ignored", new Object[] { paramBundle });
            return;
          }
          a = true;
          if (e != null)
          {
            Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Icon load finished with success? %b", new Object[] { paramBundle, Boolean.valueOf(paramBoolean) });
            e.a(paramBoolean);
          }
          if (adl.a(localc))
          {
            Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s fully loaded after intro media", new Object[] { paramBundle });
            j.remove(paramBundle);
            return;
          }
        }
        j.put(paramBundle, localc);
      }
    }
  }
  
  public final class c
  {
    boolean a;
    boolean b;
    @cgc
    public String c;
    public DiscoverLinkStatusResult d;
    public adl.a e;
    
    public c() {}
  }
}

/* Location:
 * Qualified Name:     adl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */