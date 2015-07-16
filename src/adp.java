import android.content.ContentResolver;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Handler;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.table.DSnapTable;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Provider;

public final class adp
  implements alw.a
{
  private final alw a;
  private final aej b;
  private final aed c;
  private final axn d;
  private final adr e;
  private final adc f;
  private final Provider<String> g;
  private final acq h;
  private final ban i;
  private final acp j;
  private final Object k = new Object();
  private final Map<String, adp.a> l = new ConcurrentHashMap();
  
  public adp()
  {
    this(alw.a(), aej.a(), aed.a(), aec.b, new adr(), new adc(), new bgq(), acq.a(), new ban(), new acp());
  }
  
  private adp(alw paramalw, aej paramaej, aed paramaed, axn paramaxn, adr paramadr, adc paramadc, Provider<String> paramProvider, acq paramacq, ban paramban, acp paramacp)
  {
    a = paramalw;
    b = paramaej;
    c = paramaed;
    d = paramaxn;
    e = paramadr;
    f = paramadc;
    g = paramProvider;
    h = paramacq;
    i = paramban;
    j = paramacp;
  }
  
  private adp.a a(@chc String paramString)
  {
    synchronized (k)
    {
      paramString = (adp.a)l.remove(paramString);
      return paramString;
    }
  }
  
  private void a(DSnapPage paramDSnapPage, MediaState paramMediaState)
  {
    aej localaej = b;
    h.postAtFrontOfQueue(new aej.8(localaej, paramDSnapPage, paramMediaState));
  }
  
  @awj
  @cbr
  public final void a(aly paramaly)
  {
    paramaly = a(paramaly.a());
    if (paramaly == null) {
      return;
    }
    a(a, MediaState.NOT_STARTED);
  }
  
  @awj
  @cbr
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    Object localObject1 = a(paramaly.a());
    if (localObject1 == null)
    {
      h.a("DISCOVER_CHUNK_DOWNLOAD_TIME", paramaly.a());
      return;
    }
    localObject1 = a;
    if (b == DownloadPriority.LOW) {}
    Object localObject2;
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject2 = h;
      Object localObject3 = ((DSnapPage)localObject1).b();
      boolean bool2 = paramus.d();
      long l1 = paramus.c();
      localObject3 = ((acq)localObject2).a("DISCOVER_CHUNK_DOWNLOAD_TIME", (String)localObject3);
      if (localObject3 != null) {
        ((EasyMetric)localObject3).a("success", Boolean.valueOf(bool2)).a("reachability", a.f()).a("return_size_bytes", Long.valueOf(l1)).a("prefetch", Boolean.valueOf(bool1)).a(false);
      }
      if (paramus.d()) {
        break label194;
      }
      if (!(mCaughtException instanceof amb)) {
        break;
      }
      paramaly = d;
      a((DSnapPage)localObject1, MediaState.NOT_STARTED);
      return;
    }
    paramaly = d;
    a((DSnapPage)localObject1, MediaState.NETWORK_ERROR);
    return;
    try
    {
      label194:
      paramaly = d.a(((DSnapPage)localObject1).b(), mBuffer, mSize);
      if (paramaly == null)
      {
        a((DSnapPage)localObject1, MediaState.DISK_FULL_ERROR);
        return;
      }
    }
    catch (axq paramaly)
    {
      a((DSnapPage)localObject1, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
      return;
    }
    parambgl = e.a(paramaly);
    if (parambgl == null)
    {
      paramaly = String.format("Bad Discover DSnap metadata! id: %s hash: %s edition_id: %s publisher: %s", new Object[] { a, ((DSnapPage)localObject1).b(), g, h });
      i.a(new JsonSyntaxException(paramaly));
      paramaly = h;
      parambgl = a;
      paramus = ((DSnapPage)localObject1).b();
      EasyMetric.EasyMetricFactory.a("DISCOVER_BAD_CHUNK_METADATA").a("publisher_name", paramaly).a("dsnap_id", parambgl).a("hash", paramus).a(false);
      a((DSnapPage)localObject1, MediaState.CONTENT_ERROR);
      return;
    }
    paramaly = b;
    paramus = c;
    paramaly = i;
    paramus = ((DSnapPage)localObject1).b();
    int m;
    if (parambgl == null)
    {
      if (ReleaseManager.e()) {
        throw new NullPointerException("Attempt to initialize with null metadata response.");
      }
    }
    else
    {
      localObject2 = parambgl.a();
      if (localObject2 == null)
      {
        if (ReleaseManager.e()) {
          throw new NullPointerException("Attempt to initialize with null chunk metadata section list.");
        }
      }
      else
      {
        parambgl = DatabaseHelper.a(paramaly).getWritableDatabase();
        parambgl.beginTransaction();
        m = 0;
      }
    }
    try
    {
      while (m < ((List)localObject2).size())
      {
        DSnapTable.a(parambgl, paramus, (blz)((List)localObject2).get(m));
        m += 1;
      }
      paramus = paramaly.getContentResolver();
      paramus.notifyChange(SnapchatProvider.c, null);
      paramus.notifyChange(SnapchatProvider.b, null);
      parambgl.setTransactionSuccessful();
    }
    catch (SQLiteException paramus)
    {
      for (;;)
      {
        paramus.getMessage();
        parambgl.endTransaction();
      }
    }
    finally
    {
      parambgl.endTransaction();
    }
    paramaly.getContentResolver().notifyChange(SnapchatProvider.c, null);
    b.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.EDITION_CHUNK_FILES });
    a((DSnapPage)localObject1, MediaState.SUCCESS);
  }
  
  @awj
  public final boolean a(@chc adf arg1, @chc DSnapPage paramDSnapPage, aly.a parama)
  {
    Object localObject = f.a();
    int m;
    if ((localObject != null) && (paramDSnapPage.b() != null))
    {
      m = f.intValue();
      ??? = b;
      if (??? == null) {
        break label381;
      }
      m = Math.abs(f.intValue() - f.intValue());
    }
    label381:
    for (;;)
    {
      d = ((String)g.get() + i);
      f = ((Bundle)localObject);
      g = String.format("DSnap-%s #%d", new Object[] { h, f });
      h = new String[] { "DISCOVER", "STORIES", g };
      a = DownloadPriority.LOW;
      b = DownloadPriority.BACKGROUND_LOWEST;
      j = Long.valueOf(m);
      e = paramDSnapPage.b();
      parama.a("DISCOVER", paramDSnapPage.b(), 3);
      parama = parama.a();
      synchronized (k)
      {
        if ((adp.a)l.get(paramDSnapPage.b()) != null) {
          return false;
        }
        c.a(paramDSnapPage, MediaState.FETCHING_MEDIA);
        l.put(paramDSnapPage.b(), new adp.a(paramDSnapPage, b));
        a.a(parama, this);
        ??? = h;
        parama = paramDSnapPage.b();
        localObject = h;
        String str1 = a;
        String str2 = paramDSnapPage.b();
        m = k.intValue();
        ???.a("DISCOVER_CHUNK_DOWNLOAD_TIME", parama, EasyMetric.EasyMetricFactory.a("DISCOVER_CHUNK_DOWNLOAD_TIME").a("publisher_name", localObject).a("dsnap_id", str1).a("hash", str2).a("ad_type", Integer.valueOf(m)).b());
        return true;
      }
      return false;
    }
  }
  
  static final class a
  {
    final DSnapPage a;
    private final DownloadPriority b;
    
    public a(DSnapPage paramDSnapPage, DownloadPriority paramDownloadPriority)
    {
      a = paramDSnapPage;
      b = paramDownloadPriority;
    }
  }
}

/* Location:
 * Qualified Name:     adp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */