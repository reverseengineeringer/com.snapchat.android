import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.ChannelPage.a;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.DSnapPage.a;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.Docking;
import com.snapchat.android.discover.model.DSnapPanel.Mode;
import com.snapchat.android.discover.model.DSnapPanel.a;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionChunkTable;
import com.snapchat.android.discover.model.database.table.EditionStatus;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable.EditionViewStateSchema;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable.ChannelSchema;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;

@avl
public final class adj
{
  private static final adj l = new adj();
  final EditionTable a;
  public final EditionChunkTable b;
  public final DSnapTable c;
  public final HandlerThread d;
  public final Object e = new Object();
  public final Set<adj.b> f = new HashSet();
  public Handler g;
  public Context h;
  public ContentResolver i;
  protected Runnable j = new Runnable()
  {
    @avl
    public final void run()
    {
      ajv localajv = (ajv)adj.g(adj.this).get();
      if ((localajv != null) && (mInitialized))
      {
        adc.b.a(true);
        adc.a.a(true);
        adc.c.a(true);
        adj.h(adj.this);
      }
    }
  };
  public final Runnable k = new Runnable()
  {
    public final void run()
    {
      adj.a(adj.this);
      adj.b(adj.this);
    }
  };
  private final PublisherAndEditionVirtualTable m;
  private final DSnapPageVirtualTable n;
  private final PublisherChannelTable o;
  private final add p;
  private final Provider<ajv> q;
  private final azo r;
  private final abp s;
  private final Object t = new Object();
  private final Set<adj.a> u = new HashSet();
  private boolean v = false;
  private final Runnable w = new Runnable()
  {
    public final void run()
    {
      adj.i(adj.this);
      PublisherChannelTable.a(adj.d(adj.this));
    }
  };
  private final Runnable x = new Runnable()
  {
    public final void run()
    {
      localObject1 = adj.this;
      Object localObject2 = a;
      localObject2 = h;
      localObject1 = DatabaseHelper.a((Context)localObject2).getWritableDatabase();
      Timber.c("EditionTable", "Removing redundant Editions", new Object[0]);
      ((SQLiteDatabase)localObject1).beginTransaction();
      try
      {
        EditionTable.b((SQLiteDatabase)localObject1);
        ((SQLiteDatabase)localObject1).setTransactionSuccessful();
      }
      catch (SQLiteException localSQLiteException)
      {
        for (;;)
        {
          Timber.f("Edition", "Error while writing to database: %s", new Object[] { localSQLiteException.getMessage() });
          ((SQLiteDatabase)localObject1).endTransaction();
          Timber.c("EditionTable", "Finished removing redundant Editions", new Object[0]);
        }
      }
      finally
      {
        ((SQLiteDatabase)localObject1).endTransaction();
        Timber.c("EditionTable", "Finished removing redundant Editions", new Object[0]);
      }
      EditionTable.a((Context)localObject2);
    }
  };
  
  private adj()
  {
    this(PublisherAndEditionVirtualTable.d(), DSnapPageVirtualTable.d(), PublisherChannelTable.a(), EditionTable.a(), EditionChunkTable.a(), DSnapTable.a(), add.a(), ajv.UNSAFE_USER_PROVIDER, new HandlerThread("DiscoverRepository", 10), new azo(), new abp());
  }
  
  private adj(PublisherAndEditionVirtualTable paramPublisherAndEditionVirtualTable, DSnapPageVirtualTable paramDSnapPageVirtualTable, PublisherChannelTable paramPublisherChannelTable, EditionTable paramEditionTable, EditionChunkTable paramEditionChunkTable, DSnapTable paramDSnapTable, add paramadd, Provider<ajv> paramProvider, HandlerThread paramHandlerThread, azo paramazo, abp paramabp)
  {
    m = paramPublisherAndEditionVirtualTable;
    o = paramPublisherChannelTable;
    n = paramDSnapPageVirtualTable;
    a = paramEditionTable;
    b = paramEditionChunkTable;
    c = paramDSnapTable;
    p = paramadd;
    q = paramProvider;
    d = paramHandlerThread;
    r = paramazo;
    s = paramabp;
    g = null;
  }
  
  public static adj a()
  {
    return l;
  }
  
  @avl
  @cgc
  public final DSnapPage a(Cursor paramCursor)
  {
    boolean bool;
    Object localObject1;
    for (;;)
    {
      try
      {
        DSnapPageVirtualTable localDSnapPageVirtualTable = n;
        Object localObject4 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.ID.getColumnNumber());
        String str2 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TYPE.getColumnNumber());
        int i1 = paramCursor.getInt(DSnapPageVirtualTable.DSnapPageSchema.POSITION.getColumnNumber());
        String str3 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.EDITION_ID.getColumnNumber());
        String str4 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.PUBLISHER_NAME.getColumnNumber());
        String str5 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.URL.getColumnNumber());
        String str6 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.HASH.getColumnNumber());
        String str7 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.AD_KEY.getColumnNumber());
        String str8 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.COLOR.getColumnNumber());
        int i2 = paramCursor.getInt(DSnapPageVirtualTable.DSnapPageSchema.AD_TYPE.getColumnNumber());
        int i3 = paramCursor.getInt(DSnapPageVirtualTable.DSnapPageSchema.AD_POSITION.getColumnNumber());
        String str9 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.AD_UNIT_ID.getColumnNumber());
        String str10 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.AD_TARGETING.getColumnNumber());
        ReleaseManager.k();
        if (paramCursor.getInt(DSnapPageVirtualTable.DSnapPageSchema.SHAREABLE.getColumnNumber()) == 0) {
          break label1040;
        }
        bool = true;
        Object localObject5 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_URI.getColumnNumber());
        Object localObject6 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_MEDIA_TYPE.getColumnNumber());
        localObject1 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_DOCKING.getColumnNumber());
        Object localObject2 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_MODE.getColumnNumber());
        Object localObject3 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_VIDEO_FIRST_FRAME_URI.getColumnNumber());
        String str11 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_OVERLAY_URI.getColumnNumber());
        String str12 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.TOP_SNAP_OVERLAY_DOCKING.getColumnNumber());
        if ((localObject5 != null) && (localObject6 != null))
        {
          DSnapPanel.a locala = new DSnapPanel.a();
          a = ((String)localObject5);
          c = str11;
          if (!TextUtils.isEmpty(str12)) {
            d = DSnapPanel.Docking.valueOfIgnoreCase(str12);
          }
          localObject5 = locala.a((String)localObject6);
          j = ((String)localObject3);
          if (localObject1 != null) {
            g = DSnapPanel.Docking.valueOfIgnoreCase((String)localObject1);
          }
          if (localObject2 != null) {
            f = DSnapPanel.Mode.valueOfIgnoreCase((String)localObject2);
          }
          localObject2 = ((DSnapPanel.a)localObject5).a();
          localObject6 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.LONGFORM_URI.getColumnNumber());
          str11 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.LONGFORM_MEDIA_TYPE.getColumnNumber());
          localObject5 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.LONGFORM_VIDEO_ID.getColumnNumber());
          localObject3 = null;
          localObject1 = localObject3;
          if (str11 != null) {
            if (localObject6 == null)
            {
              localObject1 = localObject3;
              if (localObject5 == null) {}
            }
            else
            {
              localObject1 = new DSnapPanel.a();
              a = ((String)localObject6);
              localObject6 = ((DSnapPanel.a)localObject1).a(str11);
              b = ((String)localObject5);
              if (localObject5 != null)
              {
                localObject1 = ((DSnapPanel.a)localObject6).a();
                localObject3 = c.a((DSnapPanel)localObject1);
                localObject1 = localObject3;
                if (localObject3 == MediaState.SUCCESS)
                {
                  localObject1 = (bjx)d.a.get(localObject5);
                  if (localObject1 == null) {
                    continue;
                  }
                  i = ((bjx)localObject1);
                  localObject1 = MediaState.SUCCESS;
                }
                h = ((MediaState)localObject1);
              }
              localObject1 = ((DSnapPanel.a)localObject6).a();
            }
          }
          localObject3 = new DSnapPage.a();
          a = ((String)localObject4);
          b = str2;
          c = Integer.valueOf(i1);
          e = str3;
          f = str4;
          g = str5;
          h = str6;
          i = str7;
          j = str8;
          d = i3;
          q = bool;
          l = Integer.valueOf(i2);
          o = str9;
          p = str10;
          if (localObject2 != null) {
            ((DSnapPage.a)localObject3).a(DSnapPage.Form.TOP_SNAP.getKey(), (DSnapPanel)localObject2);
          }
          if (localObject1 != null) {
            ((DSnapPage.a)localObject3).a(DSnapPage.Form.LONGFORM.getKey(), (DSnapPanel)localObject1);
          }
          localObject4 = ((DSnapPage.a)localObject3).a();
          localObject1 = null;
          if (((DSnapPage)localObject4).b() != null) {
            localObject1 = adc.b.b(((DSnapPage)localObject4).b());
          }
          if (localObject1 != null) {
            k = ("file://" + (String)localObject1 + "/");
          }
          localObject1 = p;
          if (k.intValue() == 0)
          {
            localObject1 = MediaState.SUCCESS;
            n = ((MediaState)localObject1);
            localObject1 = p;
            if (((DSnapPage)localObject4).b() == null) {
              break label1046;
            }
            localObject1 = (MediaState)a.get(((DSnapPage)localObject4).b());
            break;
            label877:
            m = ((MediaState)localObject1);
            return ((DSnapPage.a)localObject3).a();
            localObject1 = MediaState.GENERIC_ERROR;
            continue;
          }
          localObject2 = (MediaState)c.get(a);
          localObject1 = localObject2;
          if (localObject2 != null) {
            continue;
          }
          localObject1 = MediaState.NOT_STARTED;
          continue;
          label935:
          localObject1 = MediaState.NOT_STARTED;
          continue;
        }
        String str1 = null;
      }
      catch (abs localabs)
      {
        r.a(a);
        localObject1 = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.ID.getColumnNumber());
        paramCursor = paramCursor.getString(DSnapPageVirtualTable.DSnapPageSchema.HASH.getColumnNumber());
        str1 = b;
        EasyMetric.EasyMetricFactory.a("DISCOVER_BAD_CHUNK_DATA").a("dsnap_id", localObject1).a("hash", paramCursor).a("field", str1).a(false);
        return null;
      }
    }
    for (;;)
    {
      if (localObject1 == null) {
        break label935;
      }
      break label877;
      label1040:
      bool = false;
      break;
      label1046:
      localObject1 = null;
    }
  }
  
  public final void a(adj.a parama)
  {
    synchronized (e)
    {
      u.add(parama);
      return;
    }
  }
  
  public final void a(final adj.a... paramVarArgs)
  {
    g.postAtFrontOfQueue(new Runnable()
    {
      public final void run()
      {
        b(paramVarArgs);
      }
    });
  }
  
  public final void a(final adj.b... paramVarArgs)
  {
    g.postAtFrontOfQueue(new Runnable()
    {
      public final void run()
      {
        b(paramVarArgs);
      }
    });
  }
  
  public final void a(DbTable.DatabaseTable... paramVarArgs)
  {
    Timber.c("DiscoverRepository", "Persisting data model changed from %s", new Object[] { Timber.a() });
    ajv localajv = (ajv)q.get();
    if (localajv != null) {
      localajv.a(paramVarArgs);
    }
  }
  
  @avl
  @cgc
  public final ChannelPage b(Cursor paramCursor)
  {
    try
    {
      ChannelPage.a locala = PublisherAndEditionVirtualTable.a(paramCursor);
      ChannelPage localChannelPage = locala.a();
      q = adc.a.b(localChannelPage.o());
      w = p.c(localChannelPage);
      String str2 = adc.c.b(Integer.toString(localChannelPage.a().hashCode()));
      String str3 = adc.c.b(Integer.toString(localChannelPage.b().hashCode()));
      if (localChannelPage.c() != null) {}
      for (Object localObject = adc.c.b(Integer.toString(localChannelPage.c().hashCode()));; localObject = null)
      {
        r = str2;
        s = str3;
        t = ((String)localObject);
        x = p.d(localChannelPage);
        y = p.e(localChannelPage);
        z = p.f(localChannelPage);
        localObject = locala.a();
        return (ChannelPage)localObject;
      }
      String str1;
      return null;
    }
    catch (abs localabs)
    {
      r.a(a);
      paramCursor = paramCursor.getString(PublisherAndEditionVirtualTable.ChannelSchema.PUBLISHER_NAME.getColumnNumber());
      str1 = b;
      EasyMetric.EasyMetricFactory.a("DISCOVER_BAD_PUBLISHER_DATA").a("publisher_name", paramCursor).a("field", str1).a(false);
    }
  }
  
  @avl
  public final void b()
  {
    Timber.c("DiscoverRepository", "Signaling data model changed from %s", new Object[] { Timber.a() });
    g.postAtFrontOfQueue(w);
  }
  
  @avl
  public final void b(adj.a... paramVarArgs)
  {
    if (paramVarArgs.length == 0)
    {
      Timber.a("DiscoverRepository", "Skipping query of channel repository - no listeners were specified.", new Object[0]);
      return;
    }
    if ((!ajx.m()) || (!v))
    {
      Timber.c("DiscoverRepository", "Skipping query of channel repository - user is not logged in.", new Object[0]);
      return;
    }
    Timber.a("DiscoverRepository", "Beginning refresh of channel repository.", new Object[0]);
    long l1 = SystemClock.currentThreadTimeMillis();
    LinkedList localLinkedList = new LinkedList();
    try
    {
      localCursor = i.query(SnapchatProvider.b, PublisherAndEditionVirtualTable.a, null, null, null);
      if (localCursor != null) {}
      try
      {
        if (localCursor.moveToFirst())
        {
          ChannelPage localChannelPage = b(localCursor);
          if (localChannelPage == null) {
            break label172;
          }
          localLinkedList.add(localChannelPage);
        }
        for (;;)
        {
          boolean bool = localCursor.moveToNext();
          if (bool) {
            break;
          }
          bfo.a(localCursor);
          int i2 = paramVarArgs.length;
          int i1 = 0;
          while (i1 < i2)
          {
            paramVarArgs[i1].a(localLinkedList);
            i1 += 1;
          }
          label172:
          Timber.f("DiscoverRepository", "Invalid ChannelPage found in queryChannelList!", new Object[0]);
        }
        bfo.a(localCursor);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        Cursor localCursor = null;
      }
    }
    throw paramVarArgs;
    Timber.a("DiscoverRepository", "Completed query of channel repository, took %dms.", new Object[] { Long.valueOf(SystemClock.currentThreadTimeMillis() - l1) });
  }
  
  @avl
  public final void b(adj.b... paramVarArgs)
  {
    if (paramVarArgs.length == 0)
    {
      Timber.a("DiscoverRepository", "Skipping query of edition repository - no listeners were specified.", new Object[0]);
      return;
    }
    if ((!ajx.m()) || (!v))
    {
      Timber.c("DiscoverRepository", "Skipping query of edition repository - user is not logged in.", new Object[0]);
      return;
    }
    long l1 = SystemClock.currentThreadTimeMillis();
    Timber.a("DiscoverRepository", "Beginning refresh of edition repository.", new Object[0]);
    LinkedList localLinkedList = new LinkedList();
    try
    {
      localCursor = i.query(SnapchatProvider.c, DSnapPageVirtualTable.a, null, null, null);
      try
      {
        Timber.a("DiscoverRepository", "Query for refresh of edition repository took %dms.", new Object[] { Long.valueOf(SystemClock.currentThreadTimeMillis() - l1) });
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          DSnapPage localDSnapPage = a(localCursor);
          if (localDSnapPage == null) {
            break label196;
          }
          localLinkedList.add(localDSnapPage);
        }
        for (;;)
        {
          boolean bool = localCursor.moveToNext();
          if (bool) {
            break;
          }
          bfo.a(localCursor);
          int i2 = paramVarArgs.length;
          int i1 = 0;
          while (i1 < i2)
          {
            paramVarArgs[i1].a(localLinkedList);
            i1 += 1;
          }
          label196:
          Timber.f("DiscoverRepository", "Invalid DSnapPage found in queryDSnapList!", new Object[0]);
        }
        bfo.a(localCursor);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        Cursor localCursor = null;
      }
    }
    throw paramVarArgs;
    Timber.a("DiscoverRepository", "Completed refresh of edition repository, took %dms.", new Object[] { Long.valueOf(SystemClock.currentThreadTimeMillis() - l1) });
  }
  
  public final void c()
  {
    g.post(x);
  }
  
  public final void d()
  {
    g.post(j);
  }
  
  public static abstract interface a
  {
    @caq
    public abstract void a(@cgb List<ChannelPage> paramList);
  }
  
  public static abstract interface b
  {
    @caq
    public abstract void a(@cgb List<DSnapPage> paramList);
  }
  
  public static abstract class c
    extends ContentObserver
  {
    public c(Handler paramHandler)
    {
      super();
    }
    
    protected abstract void a();
    
    public void onChange(boolean paramBoolean)
    {
      a();
    }
    
    public void onChange(boolean paramBoolean, Uri paramUri)
    {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     adj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */