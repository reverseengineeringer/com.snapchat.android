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
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
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
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;

@awj
public final class aej
{
  private static final aej m = new aej();
  final EditionTable a;
  public final EditionChunkTable b;
  public final DSnapTable c;
  public final HandlerThread d;
  public final Object e = new Object();
  public final Set<aej.b> f = new HashSet();
  public final Map<String, aej.b> g = new HashMap();
  public Handler h;
  public Context i;
  public ContentResolver j;
  boolean k = false;
  protected Runnable l = new Runnable()
  {
    @awj
    public final void run()
    {
      akp localakp = (akp)aej.g(aej.this).get();
      if ((localakp != null) && (mInitialized))
      {
        aec.b.a(true);
        aec.a.a(true);
        aec.c.a(true);
        aej.h(aej.this);
      }
    }
  };
  private final PublisherAndEditionVirtualTable n;
  private final DSnapPageVirtualTable o;
  private final PublisherChannelTable p;
  private final aed q;
  private final Provider<akp> r;
  private final ban s;
  private final acp t;
  private final Object u = new Object();
  private final axn v;
  private final Set<aej.a> w = new HashSet();
  private final Runnable x = new Runnable()
  {
    public final void run()
    {
      aej.i(aej.this);
      PublisherChannelTable.a(aej.d(aej.this));
    }
  };
  private final Runnable y = new Runnable()
  {
    public final void run()
    {
      localObject1 = aej.this;
      Object localObject2 = a;
      localObject2 = i;
      localObject1 = DatabaseHelper.a((Context)localObject2).getWritableDatabase();
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
          localSQLiteException.getMessage();
          ((SQLiteDatabase)localObject1).endTransaction();
        }
      }
      finally
      {
        ((SQLiteDatabase)localObject1).endTransaction();
      }
      EditionTable.a((Context)localObject2);
    }
  };
  private final Runnable z = new Runnable()
  {
    public final void run()
    {
      aej.a(aej.this);
      aej.b(aej.this);
    }
  };
  
  private aej()
  {
    this(PublisherAndEditionVirtualTable.d(), DSnapPageVirtualTable.d(), PublisherChannelTable.a(), EditionTable.a(), EditionChunkTable.a(), DSnapTable.a(), aed.a(), akp.UNSAFE_USER_PROVIDER, new HandlerThread("DiscoverRepository", 10), new ban(), new acp(), aec.a);
  }
  
  private aej(PublisherAndEditionVirtualTable paramPublisherAndEditionVirtualTable, DSnapPageVirtualTable paramDSnapPageVirtualTable, PublisherChannelTable paramPublisherChannelTable, EditionTable paramEditionTable, EditionChunkTable paramEditionChunkTable, DSnapTable paramDSnapTable, aed paramaed, Provider<akp> paramProvider, HandlerThread paramHandlerThread, ban paramban, acp paramacp, axn paramaxn)
  {
    n = paramPublisherAndEditionVirtualTable;
    p = paramPublisherChannelTable;
    o = paramDSnapPageVirtualTable;
    a = paramEditionTable;
    b = paramEditionChunkTable;
    c = paramDSnapTable;
    q = paramaed;
    r = paramProvider;
    d = paramHandlerThread;
    s = paramban;
    t = paramacp;
    h = null;
    v = paramaxn;
  }
  
  public static aej a()
  {
    return m;
  }
  
  private void a(@chd String paramString, List<DSnapPage> paramList)
  {
    if (paramString == null) {
      return;
    }
    synchronized (e)
    {
      if (g.containsKey(paramString)) {
        ((aej.b)g.get(paramString)).a(paramList);
      }
      return;
    }
  }
  
  @awj
  @chd
  private ChannelPage b(Cursor paramCursor)
  {
    try
    {
      ChannelPage.a locala = PublisherAndEditionVirtualTable.a(paramCursor);
      ChannelPage localChannelPage = locala.a();
      x = q.c(localChannelPage);
      r = v.b(localChannelPage.o());
      String str2 = aec.c.b(Integer.toString(localChannelPage.a().hashCode()));
      String str3 = aec.c.b(Integer.toString(localChannelPage.b().hashCode()));
      if (localChannelPage.c() != null) {}
      for (Object localObject = aec.c.b(Integer.toString(localChannelPage.c().hashCode()));; localObject = null)
      {
        s = str2;
        t = str3;
        u = ((String)localObject);
        y = q.d(localChannelPage);
        z = q.e(localChannelPage);
        A = q.f(localChannelPage);
        localObject = locala.a();
        return (ChannelPage)localObject;
      }
      String str1;
      return null;
    }
    catch (acs localacs)
    {
      s.a(a);
      paramCursor = paramCursor.getString(PublisherAndEditionVirtualTable.ChannelSchema.PUBLISHER_NAME.getColumnNumber());
      str1 = b;
      EasyMetric.EasyMetricFactory.a("DISCOVER_BAD_PUBLISHER_DATA").a("publisher_name", paramCursor).a("field", str1).a(false);
    }
  }
  
  @awj
  @chd
  public final DSnapPage a(Cursor paramCursor)
  {
    boolean bool;
    Object localObject1;
    for (;;)
    {
      try
      {
        DSnapPageVirtualTable localDSnapPageVirtualTable = o;
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
                  localObject1 = (bky)d.a.get(localObject5);
                  if (localObject1 == null) {
                    continue;
                  }
                  i = ((bky)localObject1);
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
            localObject1 = aec.b.b(((DSnapPage)localObject4).b());
          }
          if (localObject1 != null) {
            k = ("file://" + (String)localObject1 + "/");
          }
          localObject1 = q;
          if (k.intValue() == 0)
          {
            localObject1 = MediaState.SUCCESS;
            n = ((MediaState)localObject1);
            localObject1 = q;
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
      catch (acs localacs)
      {
        s.a(a);
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
  
  public final void a(aej.a parama)
  {
    synchronized (e)
    {
      w.add(parama);
      return;
    }
  }
  
  public final void a(final aej.a... paramVarArgs)
  {
    h.postAtFrontOfQueue(new Runnable()
    {
      public final void run()
      {
        b(paramVarArgs);
      }
    });
  }
  
  public final void a(final aej.b... paramVarArgs)
  {
    h.postAtFrontOfQueue(new Runnable()
    {
      public final void run()
      {
        b(paramVarArgs);
      }
    });
  }
  
  public final void a(DbTable.DatabaseTable... paramVarArgs)
  {
    Timber.a();
    akp localakp = (akp)r.get();
    if (localakp != null) {
      localakp.a(paramVarArgs);
    }
  }
  
  public final void b()
  {
    h.post(z);
  }
  
  public final void b(aej.a parama)
  {
    synchronized (e)
    {
      w.remove(parama);
      return;
    }
  }
  
  /* Error */
  @awj
  public final void b(aej.a... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: ifne +4 -> 6
    //   5: return
    //   6: invokestatic 660	akr:m	()Z
    //   9: ifeq -4 -> 5
    //   12: aload_0
    //   13: getfield 175	aej:k	Z
    //   16: ifeq -11 -> 5
    //   19: invokestatic 666	android/os/SystemClock:currentThreadTimeMillis	()J
    //   22: pop2
    //   23: new 668	java/util/LinkedList
    //   26: dup
    //   27: invokespecial 669	java/util/LinkedList:<init>	()V
    //   30: astore 6
    //   32: aload_0
    //   33: getfield 671	aej:j	Landroid/content/ContentResolver;
    //   36: getstatic 676	com/snapchat/android/content/SnapchatProvider:b	Landroid/net/Uri;
    //   39: getstatic 679	com/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable:a	[Ljava/lang/String;
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 685	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 5
    //   50: aload 5
    //   52: ifnull +50 -> 102
    //   55: aload 5
    //   57: invokeinterface 688 1 0
    //   62: ifeq +40 -> 102
    //   65: aload_0
    //   66: aload 5
    //   68: invokespecial 690	aej:b	(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;
    //   71: astore 7
    //   73: aload 7
    //   75: ifnull +13 -> 88
    //   78: aload 6
    //   80: aload 7
    //   82: invokeinterface 693 2 0
    //   87: pop
    //   88: aload 5
    //   90: invokeinterface 696 1 0
    //   95: istore 4
    //   97: iload 4
    //   99: ifne -34 -> 65
    //   102: aload 5
    //   104: invokestatic 701	bgo:a	(Landroid/database/Cursor;)V
    //   107: aload_1
    //   108: arraylength
    //   109: istore_3
    //   110: iconst_0
    //   111: istore_2
    //   112: iload_2
    //   113: iload_3
    //   114: if_icmpge +31 -> 145
    //   117: aload_1
    //   118: iload_2
    //   119: aaload
    //   120: aload 6
    //   122: invokeinterface 702 2 0
    //   127: iload_2
    //   128: iconst_1
    //   129: iadd
    //   130: istore_2
    //   131: goto -19 -> 112
    //   134: astore_1
    //   135: aconst_null
    //   136: astore 5
    //   138: aload 5
    //   140: invokestatic 701	bgo:a	(Landroid/database/Cursor;)V
    //   143: aload_1
    //   144: athrow
    //   145: invokestatic 666	android/os/SystemClock:currentThreadTimeMillis	()J
    //   148: pop2
    //   149: return
    //   150: astore_1
    //   151: goto -13 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	this	aej
    //   0	154	1	paramVarArgs	aej.a[]
    //   111	20	2	i1	int
    //   109	6	3	i2	int
    //   95	3	4	bool	boolean
    //   48	91	5	localCursor	Cursor
    //   30	91	6	localLinkedList	java.util.LinkedList
    //   71	10	7	localChannelPage	ChannelPage
    // Exception table:
    //   from	to	target	type
    //   32	50	134	finally
    //   55	65	150	finally
    //   65	73	150	finally
    //   78	88	150	finally
    //   88	97	150	finally
  }
  
  /* Error */
  @awj
  public final void b(aej.b... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_1
    //   7: arraylength
    //   8: ifne +4 -> 12
    //   11: return
    //   12: invokestatic 660	akr:m	()Z
    //   15: ifeq -4 -> 11
    //   18: aload_0
    //   19: getfield 175	aej:k	Z
    //   22: ifeq -11 -> 11
    //   25: invokestatic 666	android/os/SystemClock:currentThreadTimeMillis	()J
    //   28: pop2
    //   29: new 668	java/util/LinkedList
    //   32: dup
    //   33: invokespecial 669	java/util/LinkedList:<init>	()V
    //   36: astore 7
    //   38: aload_0
    //   39: getfield 671	aej:j	Landroid/content/ContentResolver;
    //   42: getstatic 708	com/snapchat/android/content/SnapchatProvider:c	Landroid/net/Uri;
    //   45: getstatic 709	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable:a	[Ljava/lang/String;
    //   48: aconst_null
    //   49: aconst_null
    //   50: new 583	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 710	java/lang/StringBuilder:<init>	()V
    //   57: getstatic 395	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:EDITION_ID	Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
    //   60: invokevirtual 713	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:getColumnName	()Ljava/lang/String;
    //   63: invokevirtual 592	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: bipush 44
    //   68: invokevirtual 716	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   71: getstatic 388	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:POSITION	Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
    //   74: invokevirtual 713	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:getColumnName	()Ljava/lang/String;
    //   77: invokevirtual 592	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 596	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokevirtual 685	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore 6
    //   88: aload 6
    //   90: astore 4
    //   92: invokestatic 666	android/os/SystemClock:currentThreadTimeMillis	()J
    //   95: pop2
    //   96: aload 4
    //   98: ifnull +122 -> 220
    //   101: aload 4
    //   103: invokeinterface 688 1 0
    //   108: ifeq +112 -> 220
    //   111: new 718	java/util/ArrayList
    //   114: dup
    //   115: bipush 20
    //   117: invokespecial 721	java/util/ArrayList:<init>	(I)V
    //   120: astore 8
    //   122: aload_0
    //   123: aload 4
    //   125: invokevirtual 723	aej:a	(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;
    //   128: astore 9
    //   130: aload 5
    //   132: astore 6
    //   134: aload 9
    //   136: ifnull +62 -> 198
    //   139: aload 5
    //   141: astore 6
    //   143: aload 5
    //   145: aload 9
    //   147: getfield 724	com/snapchat/android/discover/model/DSnapPage:g	Ljava/lang/String;
    //   150: invokestatic 728	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   153: ifne +25 -> 178
    //   156: aload_0
    //   157: aload 5
    //   159: aload 8
    //   161: invokespecial 730	aej:a	(Ljava/lang/String;Ljava/util/List;)V
    //   164: aload 9
    //   166: getfield 724	com/snapchat/android/discover/model/DSnapPage:g	Ljava/lang/String;
    //   169: astore 6
    //   171: aload 8
    //   173: invokeinterface 733 1 0
    //   178: aload 7
    //   180: aload 9
    //   182: invokeinterface 693 2 0
    //   187: pop
    //   188: aload 8
    //   190: aload 9
    //   192: invokeinterface 693 2 0
    //   197: pop
    //   198: aload 6
    //   200: astore 5
    //   202: aload 4
    //   204: invokeinterface 696 1 0
    //   209: ifne -87 -> 122
    //   212: aload_0
    //   213: aload 6
    //   215: aload 8
    //   217: invokespecial 730	aej:a	(Ljava/lang/String;Ljava/util/List;)V
    //   220: aload 4
    //   222: invokestatic 701	bgo:a	(Landroid/database/Cursor;)V
    //   225: aload_1
    //   226: arraylength
    //   227: istore_3
    //   228: iconst_0
    //   229: istore_2
    //   230: iload_2
    //   231: iload_3
    //   232: if_icmpge +41 -> 273
    //   235: aload_1
    //   236: iload_2
    //   237: aaload
    //   238: aload 7
    //   240: invokeinterface 248 2 0
    //   245: iload_2
    //   246: iconst_1
    //   247: iadd
    //   248: istore_2
    //   249: goto -19 -> 230
    //   252: astore 4
    //   254: aconst_null
    //   255: astore 4
    //   257: aload 4
    //   259: invokestatic 701	bgo:a	(Landroid/database/Cursor;)V
    //   262: goto -37 -> 225
    //   265: astore_1
    //   266: aload 4
    //   268: invokestatic 701	bgo:a	(Landroid/database/Cursor;)V
    //   271: aload_1
    //   272: athrow
    //   273: invokestatic 666	android/os/SystemClock:currentThreadTimeMillis	()J
    //   276: pop2
    //   277: return
    //   278: astore_1
    //   279: goto -13 -> 266
    //   282: astore 5
    //   284: goto -27 -> 257
    //   287: astore 4
    //   289: aconst_null
    //   290: astore 4
    //   292: goto -35 -> 257
    //   295: astore 5
    //   297: goto -40 -> 257
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	this	aej
    //   0	300	1	paramVarArgs	aej.b[]
    //   229	20	2	i1	int
    //   227	6	3	i2	int
    //   1	220	4	localObject1	Object
    //   252	1	4	localSQLiteException1	SQLiteException
    //   255	12	4	localCursor	Cursor
    //   287	1	4	localIllegalArgumentException1	IllegalArgumentException
    //   290	1	4	localObject2	Object
    //   4	197	5	localObject3	Object
    //   282	1	5	localSQLiteException2	SQLiteException
    //   295	1	5	localIllegalArgumentException2	IllegalArgumentException
    //   86	128	6	localObject4	Object
    //   36	203	7	localLinkedList	java.util.LinkedList
    //   120	96	8	localArrayList	java.util.ArrayList
    //   128	63	9	localDSnapPage	DSnapPage
    // Exception table:
    //   from	to	target	type
    //   38	88	252	android/database/sqlite/SQLiteException
    //   38	88	265	finally
    //   92	96	278	finally
    //   101	122	278	finally
    //   122	130	278	finally
    //   143	178	278	finally
    //   178	198	278	finally
    //   202	220	278	finally
    //   92	96	282	android/database/sqlite/SQLiteException
    //   101	122	282	android/database/sqlite/SQLiteException
    //   122	130	282	android/database/sqlite/SQLiteException
    //   143	178	282	android/database/sqlite/SQLiteException
    //   178	198	282	android/database/sqlite/SQLiteException
    //   202	220	282	android/database/sqlite/SQLiteException
    //   38	88	287	java/lang/IllegalArgumentException
    //   92	96	295	java/lang/IllegalArgumentException
    //   101	122	295	java/lang/IllegalArgumentException
    //   122	130	295	java/lang/IllegalArgumentException
    //   143	178	295	java/lang/IllegalArgumentException
    //   178	198	295	java/lang/IllegalArgumentException
    //   202	220	295	java/lang/IllegalArgumentException
  }
  
  @awj
  public final void c()
  {
    Timber.a();
    h.postAtFrontOfQueue(x);
  }
  
  public final void d()
  {
    h.post(y);
  }
  
  public final void e()
  {
    h.post(l);
  }
  
  public static abstract interface a
  {
    @cbr
    public abstract void a(@chc List<ChannelPage> paramList);
  }
  
  public static abstract interface b
  {
    @cbr
    public abstract void a(@chc List<DSnapPage> paramList);
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
 * Qualified Name:     aej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */