import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.support.v4.util.LruCache;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.ChatPerformanceAnalytics.ChatMediaType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.SnapchatResource;
import com.snapchat.android.ui.SnapchatResource.ResourceStatus;
import com.snapchat.android.ui.SnapchatResource.a;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import javax.inject.Provider;

public final class apb
  extends SnapchatResource
{
  protected static final LruCache<String, Bitmap> a;
  private static final Object d = new Object();
  private static boolean e = false;
  private final ChatMedia f;
  
  static
  {
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.1F);
    Timber.b("ImageResource", "ImageResource LruCache size = " + i + " kilobytes", new Object[0]);
    a = new LruCache(i) {};
  }
  
  public apb(ChatMedia paramChatMedia, SnapchatResource.a parama)
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
    //   1: getfield 79	apb:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   4: instanceof 95
    //   7: ifeq +87 -> 94
    //   10: getstatic 101	awq:DISCOVER_SHARE	Lawp;
    //   13: checkcast 103	com/snapchat/android/util/cache/DiscoverShareCache
    //   16: astore 5
    //   18: aload_0
    //   19: getfield 79	apb:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   22: invokevirtual 109	com/snapchat/android/model/chat/ChatMedia:C	()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    //   25: getstatic 115	com/snapchat/android/model/chat/ChatMedia$MediaType:IMAGE	Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    //   28: if_acmpne +48 -> 76
    //   31: aload 5
    //   33: aload_1
    //   34: aload_2
    //   35: aload_3
    //   36: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   39: invokevirtual 124	com/snapchat/android/util/cache/DiscoverShareCache:a	(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   42: astore_1
    //   43: aload_1
    //   44: ifnonnull +26 -> 70
    //   47: aload_0
    //   48: getfield 79	apb:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   51: checkcast 95	akh
    //   54: iconst_0
    //   55: putfield 127	akh:mIsExtracted	Z
    //   58: aload 5
    //   60: aload_0
    //   61: getfield 79	apb:f	Lcom/snapchat/android/model/chat/ChatMedia;
    //   64: invokevirtual 129	com/snapchat/android/model/chat/ChatMedia:d	()Ljava/lang/String;
    //   67: invokevirtual 132	com/snapchat/android/util/cache/DiscoverShareCache:c	(Ljava/lang/String;)V
    //   70: aload_1
    //   71: astore 6
    //   73: aload 6
    //   75: areturn
    //   76: aload 5
    //   78: aload_1
    //   79: aload_2
    //   80: aload_3
    //   81: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   84: getstatic 138	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO_THUMBNAIL	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   87: invokevirtual 141	com/snapchat/android/util/cache/DiscoverShareCache:a	(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Landroid/graphics/Bitmap;
    //   90: astore_1
    //   91: goto -48 -> 43
    //   94: getstatic 144	awq:MY_SNAP_IMAGE_CACHE	Lawp;
    //   97: astore 7
    //   99: aload 7
    //   101: aload_1
    //   102: aload_2
    //   103: aconst_null
    //   104: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   107: invokevirtual 147	awp:a	(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   110: astore 5
    //   112: aload 5
    //   114: astore 6
    //   116: aload 5
    //   118: ifnonnull -45 -> 73
    //   121: aload 7
    //   123: astore 6
    //   125: getstatic 150	awq:CHAT_MEDIA_IMAGE_CACHE	Lawp;
    //   128: astore 7
    //   130: aload 7
    //   132: astore 6
    //   134: aload 7
    //   136: aload_1
    //   137: aload_2
    //   138: aload_3
    //   139: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   142: invokevirtual 147	awp:a	(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
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
    //   170: invokevirtual 151	awp:c	(Ljava/lang/String;)V
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
    //   0	210	0	this	apb
    //   0	210	1	paramContext	Context
    //   0	210	2	paramString	String
    //   0	210	3	paramCbcEncryptionAlgorithm	CbcEncryptionAlgorithm
    //   0	210	4	paramBoolean	boolean
    //   16	186	5	localObject1	Object
    //   71	134	6	localObject2	Object
    //   97	98	7	localawp	awp
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
          Timber.c("ImageResource", (String)??? + " status " + b, new Object[0]);
          if (localBitmap != null) {
            break;
          }
          if (b != SnapchatResource.ResourceStatus.LOADING) {
            a(SnapchatResource.ResourceStatus.NOT_LOADED);
          }
          if ((b != SnapchatResource.ResourceStatus.LOADED) && (b != SnapchatResource.ResourceStatus.LOADING))
          {
            a(SnapchatResource.ResourceStatus.LOADING);
            new apb.a(paramContext, ajv.UNSAFE_USER_PROVIDER).executeOnExecutor(auh.NETWORK_EXECUTOR, new Void[0]);
          }
          return localBitmap;
        }
      }
      ??? = "HIT";
    }
    a(SnapchatResource.ResourceStatus.LOADED);
    return localBitmap;
  }
  
  @cgc
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
      bgp.a(200L);
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
    private final alv c = alv.a();
    private final Provider<ajv> d;
    
    public a(Provider<ajv> paramProvider)
    {
      a = paramProvider;
      Provider localProvider;
      d = localProvider;
    }
    
    private Bitmap a()
    {
      int j = 1;
      for (;;)
      {
        Object localObject2;
        awp localawp;
        Object localObject1;
        int i;
        try
        {
          if ((apb.a(apb.this) instanceof akh))
          {
            if (c.a((akh)apb.a(apb.this))) {
              return a(a, apb.a(apb.this).d(), new CbcEncryptionAlgorithm(apb.a(apb.this).D(), apb.a(apb.this).E()));
            }
          }
          else
          {
            ChatMedia localChatMedia;
            if ((!apb.a(apb.this).N()) && (!apb.a(apb.this).O()))
            {
              localObject2 = c;
              localChatMedia = apb.a(apb.this);
              localawp = awq.CHAT_MEDIA_IMAGE_CACHE;
              localObject1 = ajx.l();
              if (localObject1 == null)
              {
                i = 0;
                break label309;
              }
            }
            else
            {
              return a(a, apb.a(apb.this).d(), new CbcEncryptionAlgorithm(apb.a(apb.this).D(), apb.a(apb.this).E()));
            }
            if (!localawp.d(localChatMedia.d())) {
              break label242;
            }
            alv.a(localChatMedia);
            i = j;
          }
        }
        catch (aws localaws)
        {
          Timber.f("ImageResource", "Failed to load chat media image " + localaws, new Object[0]);
        }
        label242:
        label309:
        do
        {
          return null;
          localObject2 = a.a(ChatPerformanceAnalytics.ChatMediaType.CHAT_MEDIA);
          localObject1 = alv.a(localaws, (String)localObject1);
          if (localObject1 == null) {}
          for (i = 0;; i = localObject1.length)
          {
            ChatPerformanceAnalytics.a((EasyMetric)localObject2, i);
            if (localObject1 != null) {
              break;
            }
            i = 0;
            break label309;
          }
          localawp.a(localaws.d(), (byte[])localObject1);
          i = j;
        } while (i == 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     apb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */