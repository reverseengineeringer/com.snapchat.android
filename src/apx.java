import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.support.v4.util.LruCache;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.ChatPerformanceAnalytics.ChatMediaType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.SnapchatResource;
import com.snapchat.android.ui.SnapchatResource.ResourceStatus;
import com.snapchat.android.ui.SnapchatResource.a;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import javax.inject.Provider;

public final class apx
  extends SnapchatResource
{
  protected static final LruCache<String, Bitmap> a;
  private static final Object d = new Object();
  private static boolean e = false;
  private final ChatMedia f;
  
  static
  {
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.1F);
    new StringBuilder("ImageResource LruCache size = ").append(i).append(" kilobytes");
    a = new LruCache(i) {};
  }
  
  public apx(ChatMedia paramChatMedia, SnapchatResource.a parama)
  {
    f = paramChatMedia;
    b = SnapchatResource.ResourceStatus.NOT_LOADED;
    a(parama);
  }
  
  /* Error */
  private Bitmap a(Context paramContext, String paramString, CbcEncryptionAlgorithm paramCbcEncryptionAlgorithm, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 67	apx:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   4: instanceof 84
    //   7: ifeq +87 -> 94
    //   10: getstatic 90	axo:DISCOVER_SHARE	Laxn;
    //   13: checkcast 92	com/snapchat/android/util/cache/DiscoverShareCache
    //   16: astore 5
    //   18: aload_0
    //   19: getfield 67	apx:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   22: invokevirtual 98	com/snapchat/android/model/chat/ChatMedia:D	()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    //   25: getstatic 104	com/snapchat/android/model/chat/ChatMedia$MediaType:IMAGE	Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    //   28: if_acmpne +48 -> 76
    //   31: aload 5
    //   33: aload_1
    //   34: aload_2
    //   35: aload_3
    //   36: getstatic 110	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   39: invokevirtual 113	com/snapchat/android/util/cache/DiscoverShareCache:a	(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   42: astore_1
    //   43: aload_1
    //   44: ifnonnull +26 -> 70
    //   47: aload_0
    //   48: getfield 67	apx:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   51: checkcast 84	alc
    //   54: iconst_0
    //   55: putfield 116	alc:mIsExtracted	Z
    //   58: aload 5
    //   60: aload_0
    //   61: getfield 67	apx:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   64: invokevirtual 119	com/snapchat/android/model/chat/ChatMedia:d	()Ljava/lang/String;
    //   67: invokevirtual 122	com/snapchat/android/util/cache/DiscoverShareCache:c	(Ljava/lang/String;)V
    //   70: aload_1
    //   71: astore 6
    //   73: aload 6
    //   75: areturn
    //   76: aload 5
    //   78: aload_1
    //   79: aload_2
    //   80: aload_3
    //   81: getstatic 110	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   84: getstatic 128	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO_THUMBNAIL	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   87: invokevirtual 131	com/snapchat/android/util/cache/DiscoverShareCache:a	(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Landroid/graphics/Bitmap;
    //   90: astore_1
    //   91: goto -48 -> 43
    //   94: getstatic 134	axo:MY_SNAP_IMAGE_CACHE	Laxn;
    //   97: astore 7
    //   99: aload 7
    //   101: aload_1
    //   102: aload_2
    //   103: aconst_null
    //   104: getstatic 110	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   107: invokevirtual 137	axn:a	(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   110: astore 5
    //   112: aload 5
    //   114: astore 6
    //   116: aload 5
    //   118: ifnonnull -45 -> 73
    //   121: aload 7
    //   123: astore 6
    //   125: getstatic 140	axo:CHAT_MEDIA_IMAGE_CACHE	Laxn;
    //   128: astore 7
    //   130: aload 7
    //   132: astore 6
    //   134: aload 7
    //   136: aload_1
    //   137: aload_2
    //   138: aload_3
    //   139: getstatic 110	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   142: invokevirtual 137	axn:a	(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   145: astore_1
    //   146: aload_1
    //   147: areturn
    //   148: astore_1
    //   149: aconst_null
    //   150: astore_3
    //   151: aconst_null
    //   152: astore_1
    //   153: aload_1
    //   154: astore 6
    //   156: iload 4
    //   158: ifeq -85 -> 73
    //   161: aload_1
    //   162: astore 6
    //   164: aload_3
    //   165: ifnull -92 -> 73
    //   168: aload_3
    //   169: aload_2
    //   170: invokevirtual 141	axn:c	(Ljava/lang/String;)V
    //   173: aload_1
    //   174: areturn
    //   175: astore_1
    //   176: aload 5
    //   178: astore_3
    //   179: aconst_null
    //   180: astore_1
    //   181: goto -28 -> 153
    //   184: astore_3
    //   185: aload 5
    //   187: astore_3
    //   188: goto -35 -> 153
    //   191: astore_1
    //   192: aconst_null
    //   193: astore_1
    //   194: aload 7
    //   196: astore_3
    //   197: goto -44 -> 153
    //   200: astore_1
    //   201: aload 5
    //   203: astore_1
    //   204: aload 6
    //   206: astore_3
    //   207: goto -54 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	apx
    //   0	210	1	paramContext	Context
    //   0	210	2	paramString	String
    //   0	210	3	paramCbcEncryptionAlgorithm	CbcEncryptionAlgorithm
    //   0	210	4	paramBoolean	boolean
    //   16	186	5	localObject1	Object
    //   71	134	6	localObject2	Object
    //   97	98	7	localaxn	axn
    // Exception table:
    //   from	to	target	type
    //   0	18	148	java/lang/RuntimeException
    //   94	99	148	java/lang/RuntimeException
    //   18	43	175	java/lang/RuntimeException
    //   76	91	175	java/lang/RuntimeException
    //   47	70	184	java/lang/RuntimeException
    //   99	112	191	java/lang/RuntimeException
    //   125	130	200	java/lang/RuntimeException
    //   134	146	200	java/lang/RuntimeException
  }
  
  public static void a(boolean paramBoolean)
  {
    synchronized (d)
    {
      e = paramBoolean;
      a.trimToSize(-1);
      e = false;
      return;
    }
  }
  
  public final Bitmap a(Context paramContext)
  {
    Bitmap localBitmap;
    for (;;)
    {
      synchronized (d)
      {
        localBitmap = (Bitmap)a.get(f.d());
        StringBuilder localStringBuilder = new StringBuilder("getImageBitmap - memory cache lookup: ");
        if (localBitmap == null)
        {
          ??? = "MISS";
          localStringBuilder.append((String)???).append(" status ").append(b);
          if (localBitmap != null) {
            break;
          }
          if (b != SnapchatResource.ResourceStatus.LOADING) {
            a(SnapchatResource.ResourceStatus.NOT_LOADED);
          }
          if ((b != SnapchatResource.ResourceStatus.LOADED) && (b != SnapchatResource.ResourceStatus.LOADING))
          {
            a(SnapchatResource.ResourceStatus.LOADING);
            new apx.a(paramContext, akp.UNSAFE_USER_PROVIDER).executeOnExecutor(avf.NETWORK_EXECUTOR, new Void[0]);
          }
          return localBitmap;
        }
      }
      ??? = "HIT";
    }
    a(SnapchatResource.ResourceStatus.LOADED);
    return localBitmap;
  }
  
  @chd
  protected final Bitmap a(Context arg1, String paramString, CbcEncryptionAlgorithm paramCbcEncryptionAlgorithm)
  {
    int i = 0;
    if (i >= 2) {}
    for (boolean bool = true;; bool = false)
    {
      Bitmap localBitmap = a(???, paramString, paramCbcEncryptionAlgorithm, bool);
      if (localBitmap != null)
      {
        f.d(true);
        f.f(System.currentTimeMillis());
        synchronized (d)
        {
          a.put(paramString, localBitmap);
          return localBitmap;
        }
      }
      f.d(false);
      if (bool) {
        return null;
      }
      bhp.a(200L);
      i += 1;
      break;
    }
  }
  
  public final String a()
  {
    if (f == null) {
      return null;
    }
    return f.d();
  }
  
  final class a
    extends AsyncTask<Void, Void, Bitmap>
  {
    final Context a;
    private final ams c = ams.a();
    private final Provider<akp> d;
    
    public a(Provider<akp> paramProvider)
    {
      a = paramProvider;
      Provider localProvider;
      d = localProvider;
    }
    
    private Bitmap a()
    {
      int j = 0;
      for (;;)
      {
        int i;
        try
        {
          if ((apx.a(apx.this) instanceof alc))
          {
            if (c.a((alc)apx.a(apx.this))) {
              return a(a, apx.a(apx.this).d(), new CbcEncryptionAlgorithm(apx.a(apx.this).E(), apx.a(apx.this).F()));
            }
          }
          else
          {
            ChatMedia localChatMedia;
            axn localaxn;
            if ((!apx.a(apx.this).O()) && (!apx.a(apx.this).P()))
            {
              localObject2 = c;
              localChatMedia = apx.a(apx.this);
              localaxn = axo.CHAT_MEDIA_IMAGE_CACHE;
              localObject1 = akr.l();
              if (localObject1 == null)
              {
                i = j;
                break label295;
              }
            }
            else
            {
              return a(a, apx.a(apx.this).d(), new CbcEncryptionAlgorithm(apx.a(apx.this).E(), apx.a(apx.this).F()));
            }
            if (localaxn.d(localChatMedia.d()))
            {
              ams.a(localChatMedia);
              i = 1;
              break label295;
            }
            Object localObject2 = a.a(ChatPerformanceAnalytics.ChatMediaType.CHAT_MEDIA);
            Object localObject1 = ams.a(localChatMedia, (String)localObject1);
            if (localObject1 == null)
            {
              i = 0;
              ChatPerformanceAnalytics.a((EasyMetric)localObject2, i);
              i = j;
              if (localObject1 == null) {
                break label295;
              }
              localaxn.a(localChatMedia.d(), (byte[])localObject1);
              i = 1;
              break label295;
            }
            i = localObject1.length;
            continue;
          }
          return null;
        }
        catch (axq localaxq)
        {
          new StringBuilder("Failed to load chat media image ").append(localaxq);
        }
        label295:
        while (i == 0) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     apx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */