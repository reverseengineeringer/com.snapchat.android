import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.SnapchatApplication;
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

public final class ael
{
  final afg a;
  public final Bus b;
  public final aem c;
  public final alw d;
  public final DiscoverUsageAnalytics e;
  final PublisherChannelTable f;
  final EditionTable g;
  final Context h;
  public final Object i = new Object();
  public final Map<String, ael.c> j = new HashMap();
  public final Map<String, aem.a> k = new HashMap();
  public final Map<String, ael.c> l = new HashMap();
  public final ChatPerformanceAnalytics m;
  public boolean n = false;
  public final acx.a o = new acx.a()
  {
    public final void a(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong, DiscoverLinkStatusResult.LinkStatus paramAnonymousLinkStatus, int paramAnonymousInt, bku paramAnonymousbku, bkw paramAnonymousbkw)
    {
      EasyMetric localEasyMetric = m.a("DISCOVER_SHARE_LINK_VALIDATION", paramAnonymousString1);
      if (localEasyMetric != null) {
        localEasyMetric.a("link_status", paramAnonymousLinkStatus.name()).b(false);
      }
      paramAnonymousString2 = new DiscoverLinkStatusResult(paramAnonymousString2, paramAnonymousString3, paramAnonymousString4, paramAnonymousLinkStatus, paramAnonymousLong, paramAnonymousInt, paramAnonymousbku, paramAnonymousbkw);
      a(paramAnonymousString1, paramAnonymousString2);
    }
  };
  
  public ael()
  {
    this(afg.a(), bbo.a(), new aem(), alw.a(), new DiscoverUsageAnalytics(), SnapchatApplication.b(), PublisherChannelTable.a(), EditionTable.a(), ChatPerformanceAnalytics.a());
  }
  
  private ael(afg paramafg, Bus paramBus, aem paramaem, alw paramalw, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, Context paramContext, PublisherChannelTable paramPublisherChannelTable, EditionTable paramEditionTable, ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    a = paramafg;
    b = paramBus;
    c = paramaem;
    d = paramalw;
    e = paramDiscoverUsageAnalytics;
    h = paramContext;
    f = paramPublisherChannelTable;
    g = paramEditionTable;
    m = paramChatPerformanceAnalytics;
  }
  
  private void a(String paramString, @chc final ael.c paramc)
  {
    if ((b) && (d != null))
    {
      paramString = c;
      paramString = d;
      if (d.mLinkStatus != DiscoverLinkStatusResult.LinkStatus.FAILED) {
        l.put(d.mDSnapId, paramc);
      }
      if (d.mLinkStatus != DiscoverLinkStatusResult.LinkStatus.NOT_AVAILABLE) {
        avf.SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS.execute(new Runnable()
        {
          public final void run()
          {
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
        paramString = c;
        paramString = d;
        bhp.a(new Runnable()
        {
          public final void run()
          {
            paramce.a(paramcd, paramcc);
          }
        });
      }
    }
  }
  
  static boolean a(ael.c paramc)
  {
    return (a) && (d != null) && (b);
  }
  
  public final void a(String paramString, DiscoverLinkStatusResult paramDiscoverLinkStatusResult)
  {
    for (;;)
    {
      ael.c localc;
      synchronized (i)
      {
        localc = (ael.c)j.get(paramString);
        if (localc == null) {
          return;
        }
        d = paramDiscoverLinkStatusResult;
        a(paramString, localc);
        if (a(localc))
        {
          j.remove(paramString);
          return;
        }
      }
      j.put(paramString, localc);
    }
  }
  
  public final void a(String paramString1, String arg2, @chd String paramString3)
  {
    for (;;)
    {
      ael.c localc;
      synchronized (i)
      {
        localc = (ael.c)j.get(paramString1);
        if (localc == null) {
          return;
        }
        b = true;
        c = paramString3;
        a(paramString1, localc);
        if (a(localc))
        {
          j.remove(paramString1);
          return;
        }
      }
      j.put(paramString1, localc);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(DiscoverLinkStatusResult paramDiscoverLinkStatusResult, @chd String paramString);
    
    public abstract void a(boolean paramBoolean);
  }
  
  final class b
    implements afg.a
  {
    private final String b;
    
    b(String paramString)
    {
      b = paramString;
    }
    
    public final void a(ImageView arg1, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean)
    {
      paramDrawable = ael.this;
      paramBundle = b;
      for (;;)
      {
        ael.c localc;
        synchronized (i)
        {
          localc = (ael.c)j.get(paramBundle);
          if (localc == null) {
            return;
          }
          a = true;
          if (e != null) {
            e.a(paramBoolean);
          }
          if (ael.a(localc))
          {
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
    @chd
    public String c;
    public DiscoverLinkStatusResult d;
    public ael.a e;
    
    public c() {}
  }
}

/* Location:
 * Qualified Name:     ael
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */