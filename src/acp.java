import android.content.ContentResolver;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Handler;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
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

public final class acp
  implements alb.a
{
  private final alb a;
  private final adj b;
  private final add c;
  private final awp d;
  private final acr e;
  private final acc f;
  private final Provider<String> g;
  private final abq h;
  private final azo i;
  private final abp j;
  private final Object k = new Object();
  private final Map<String, acp.a> l = new ConcurrentHashMap();
  
  public acp()
  {
    this(alb.a(), adj.a(), add.a(), adc.b, new acr(), new acc(), new bfq(), abq.a(), new azo(), new abp());
  }
  
  private acp(alb paramalb, adj paramadj, add paramadd, awp paramawp, acr paramacr, acc paramacc, Provider<String> paramProvider, abq paramabq, azo paramazo, abp paramabp)
  {
    a = paramalb;
    b = paramadj;
    c = paramadd;
    d = paramawp;
    e = paramacr;
    f = paramacc;
    g = paramProvider;
    h = paramabq;
    i = paramazo;
    j = paramabp;
  }
  
  private acp.a a(@cgb String paramString)
  {
    synchronized (k)
    {
      paramString = (acp.a)l.remove(paramString);
      return paramString;
    }
  }
  
  private void a(DSnapPage paramDSnapPage, MediaState paramMediaState)
  {
    adj localadj = b;
    g.postAtFrontOfQueue(new adj.7(localadj, paramDSnapPage, paramMediaState));
  }
  
  @avl
  @caq
  public final void a(alc paramalc)
  {
    paramalc = a(paramalc.a());
    if (paramalc == null) {
      return;
    }
    paramalc = a;
    Timber.c("DSnapDownloader", "DISCOVER-MEDIA: DSnap download canceled %s.", new Object[] { paramalc });
    a(paramalc, MediaState.NOT_STARTED);
  }
  
  @avl
  @caq
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
  {
    Object localObject1 = a(paramalc.a());
    if (localObject1 == null)
    {
      h.a("DISCOVER_CHUNK_DOWNLOAD_TIME", paramalc.a());
      return;
    }
    localObject1 = a;
    if (b == DownloadPriority.LOW) {}
    Object localObject2;
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject2 = h;
      Object localObject3 = ((DSnapPage)localObject1).b();
      boolean bool2 = paramuc.d();
      long l1 = paramuc.c();
      localObject3 = ((abq)localObject2).a("DISCOVER_CHUNK_DOWNLOAD_TIME", (String)localObject3);
      if (localObject3 != null) {
        ((EasyMetric)localObject3).a("success", Boolean.valueOf(bool2)).a("reachability", a.f()).a("return_size_bytes", Long.valueOf(l1)).a("prefetch", Boolean.valueOf(bool1)).a(false);
      }
      if (paramuc.d()) {
        break label234;
      }
      if (!(mCaughtException instanceof alf)) {
        break;
      }
      Timber.e("DSnapDownloader", "DISCOVER-MEDIA: Failed to download %s, network type does not allow the download %s", new Object[] { localObject1, d });
      a((DSnapPage)localObject1, MediaState.NOT_STARTED);
      return;
    }
    Timber.f("DSnapDownloader", "DISCOVER-MEDIA: %s trying to download %s from %s.", new Object[] { paramuc, localObject1, d });
    a((DSnapPage)localObject1, MediaState.NETWORK_ERROR);
    return;
    label234:
    Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Downloaded %s.", new Object[] { localObject1 });
    try
    {
      paramalc = d.a(((DSnapPage)localObject1).b(), mBuffer, mSize);
      if (paramalc == null)
      {
        Timber.f("DSnapDownloader", "DISCOVER-MEDIA: Failed to cache %s.", new Object[] { localObject1 });
        a((DSnapPage)localObject1, MediaState.DISK_FULL_ERROR);
        return;
      }
    }
    catch (aws paramalc)
    {
      Timber.f("DSnapDownloader", "DISCOVER-MEDIA: Cannot %s, external storage is not available.", new Object[] { localObject1 });
      a((DSnapPage)localObject1, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
      return;
    }
    parambfl = e.a(paramalc);
    if (parambfl == null)
    {
      Timber.f("DSnapDownloader", "DISCOVER-MEDIA: Failed to parse %s directory %s", new Object[] { localObject1, paramalc });
      paramalc = String.format("Bad Discover DSnap metadata! id: %s hash: %s edition_id: %s publisher: %s", new Object[] { a, ((DSnapPage)localObject1).b(), g, h });
      i.a(new JsonSyntaxException(paramalc));
      paramalc = h;
      parambfl = a;
      paramuc = ((DSnapPage)localObject1).b();
      EasyMetric.EasyMetricFactory.a("DISCOVER_BAD_CHUNK_METADATA").a("publisher_name", paramalc).a("dsnap_id", parambfl).a("hash", paramuc).a(false);
      a((DSnapPage)localObject1, MediaState.CONTENT_ERROR);
      return;
    }
    paramalc = b;
    paramuc = c;
    paramalc = h;
    paramuc = ((DSnapPage)localObject1).b();
    int m;
    if (parambfl == null)
    {
      if (ReleaseManager.e()) {
        throw new NullPointerException("Attempt to initialize with null metadata response.");
      }
    }
    else
    {
      localObject2 = parambfl.a();
      if (localObject2 == null)
      {
        if (ReleaseManager.e()) {
          throw new NullPointerException("Attempt to initialize with null chunk metadata section list.");
        }
      }
      else
      {
        parambfl = DatabaseHelper.a(paramalc).getWritableDatabase();
        Timber.c("DSnapTable", "safeUpdate - beginTransaction", new Object[0]);
        parambfl.beginTransaction();
        m = 0;
      }
    }
    try
    {
      while (m < ((List)localObject2).size())
      {
        DSnapTable.a(parambfl, paramuc, (bky)((List)localObject2).get(m));
        m += 1;
      }
      paramuc = paramalc.getContentResolver();
      paramuc.notifyChange(SnapchatProvider.c, null);
      paramuc.notifyChange(SnapchatProvider.b, null);
      parambfl.setTransactionSuccessful();
    }
    catch (SQLiteException paramuc)
    {
      for (;;)
      {
        Timber.f("DSnap", "Error while writing to database: %s", new Object[] { paramuc.getMessage() });
        parambfl.endTransaction();
        Timber.c("DSnapTable", "safeUpdate - endTransaction", new Object[0]);
      }
    }
    finally
    {
      parambfl.endTransaction();
      Timber.c("DSnapTable", "safeUpdate - endTransaction", new Object[0]);
    }
    paramalc.getContentResolver().notifyChange(SnapchatProvider.c, null);
    b.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.EDITION_CHUNK_FILES });
    a((DSnapPage)localObject1, MediaState.SUCCESS);
  }
  
  @avl
  public final boolean a(@cgb acf arg1, @cgb DSnapPage paramDSnapPage, alc.a parama)
  {
    Object localObject = f.a();
    int m;
    if ((localObject != null) && (paramDSnapPage.b() != null))
    {
      m = f.intValue();
      ??? = b;
      if (??? == null) {
        break label413;
      }
      m = Math.abs(f.intValue() - f.intValue());
    }
    label413:
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
        if ((acp.a)l.get(paramDSnapPage.b()) != null)
        {
          Timber.e("DSnapDownloader", "DISCOVER-MEDIA: Duplicate download request for %s", new Object[] { paramDSnapPage });
          return false;
        }
        Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Queueing download for %s", new Object[] { paramDSnapPage });
        c.a(paramDSnapPage, MediaState.FETCHING_MEDIA);
        l.put(paramDSnapPage.b(), new acp.a(paramDSnapPage, b));
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
 * Qualified Name:     acp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */