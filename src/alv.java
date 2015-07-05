import android.net.Uri;
import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.ChatPerformanceAnalytics.ChatMediaType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Provider;

@Deprecated
public final class alv
{
  private static final alv b = new alv();
  private static Map<String, alu> c = new ConcurrentHashMap();
  public final ChatPerformanceAnalytics a;
  private final td d;
  private final awr e;
  
  private alv()
  {
    this(td.a(), awr.a.a(), ChatPerformanceAnalytics.a());
  }
  
  private alv(@cgb td paramtd, @cgb awr paramawr, @cgb ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    d = paramtd;
    e = paramawr;
    a = paramChatPerformanceAnalytics;
  }
  
  public static alv a()
  {
    return b;
  }
  
  public static void a(ChatMedia paramChatMedia)
  {
    if ((paramChatMedia.D() == null) || (paramChatMedia.E() == null)) {
      td.b(paramChatMedia.X(), null);
    }
  }
  
  public static void a(String paramString)
  {
    if (c.containsKey(paramString))
    {
      alu localalu = (alu)c.get(paramString);
      if (d != null) {
        b.a(d);
      }
      c.remove(paramString);
    }
  }
  
  public static byte[] a(ChatMedia paramChatMedia, String paramString)
  {
    Object localObject = null;
    if (paramChatMedia.B() != null)
    {
      String str1 = String.valueOf(System.currentTimeMillis());
      String str2 = pc.a(str1, "/bq/chat_media");
      localObject = new Bundle();
      ((Bundle)localObject).putString("id", paramChatMedia.B());
      ((Bundle)localObject).putString("conversation_id", paramChatMedia.X());
      ((Bundle)localObject).putString("timestamp", str1);
      ((Bundle)localObject).putString("req_token", str2);
      ((Bundle)localObject).putString("username", paramString);
      str1 = "Media-" + paramChatMedia.d();
      str2 = azm.b("/bq/chat_media") + "/bq/chat_media";
      paramString = paramChatMedia.d();
      alt localalt = new alt();
      c.put(paramString, localalt);
      localObject = localalt.a(str2, (Bundle)localObject, DownloadPriority.HIGH, DownloadPriority.BACKGROUND_MEDIUM, "CHAT", str1);
      c.remove(paramString);
      a(paramChatMedia);
    }
    return (byte[])localObject;
  }
  
  @Deprecated
  @caq
  public final boolean a(akh paramakh)
  {
    String str1 = paramakh.d();
    Timber.c("MediaDownloader", "CHAT-LOG: waiting to load Discover share media with Id [%s]", new Object[] { str1 });
    for (;;)
    {
      synchronized (mExtractionLock)
      {
        Timber.c("MediaDownloader", "CHAT-LOG: loading Discover share media with Id [%s]", new Object[] { str1 });
        ajv localajv = (ajv)ajv.UNSAFE_USER_PROVIDER.get();
        String str2 = ajx.l();
        if ((localajv == null) || (str2 == null))
        {
          Timber.f("MediaDownloader", "Discover share media with Id [%s] failed to load as the user may have logged out", new Object[] { str1 });
          return false;
        }
        DiscoverShareCache localDiscoverShareCache = (DiscoverShareCache)awq.DISCOVER_SHARE;
        if (mIsExtracted) {
          return true;
        }
        if (paramakh.C() == ChatMedia.MediaType.IMAGE)
        {
          if (localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.IMAGE) != null)
          {
            localObject1 = e.a(str1);
            if (localObject1 != null)
            {
              paramakh.a((abo)localObject1);
              mIsExtracted = true;
              Timber.c("MediaDownloader", "Loaded Discover share image media and metadata with Id [%s] from cache", new Object[] { str1 });
              return true;
            }
          }
        }
        else if (paramakh.V())
        {
          localObject3 = e.a(str1);
          if (localObject3 != null)
          {
            if (i == null) {
              break label663;
            }
            i = 1;
            if (i == 0) {
              break label657;
            }
            localObject1 = localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO_OVERLAY);
            if (localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO_THUMBNAIL) == null) {
              break label668;
            }
            j = 1;
            String str3 = localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO);
            if ((str3 != null) && (j != 0) && ((i == 0) || (localObject1 != null)))
            {
              paramakh.a((abo)localObject3);
              paramakh.a(Uri.parse(str3), (String)localObject1);
              mIsExtracted = true;
              Timber.c("MediaDownloader", "Loaded Discover share video media and metadata with Id [%s] from cache", new Object[] { str1 });
              return true;
            }
          }
        }
        Object localObject3 = localDiscoverShareCache.a(str1, DiscoverShareCache.DiscoverShareFileType.BLOB);
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          if (paramakh.V())
          {
            localObject1 = ChatPerformanceAnalytics.ChatMediaType.DISCOVER_SHARE_VIDEO;
            localObject3 = a.a((ChatPerformanceAnalytics.ChatMediaType)localObject1);
            localObject1 = a(paramakh, str2);
            if (localObject1 == null)
            {
              ChatPerformanceAnalytics.a((EasyMetric)localObject3, 0);
              mIsExtracted = false;
              Timber.f("MediaDownloader", "Discover share media with Id [%s] failed to load from server", new Object[] { str1 });
              return false;
            }
          }
          else
          {
            localObject1 = ChatPerformanceAnalytics.ChatMediaType.DISCOVER_SHARE_IMAGE;
            continue;
          }
          ChatPerformanceAnalytics.a((EasyMetric)localObject3, localObject1.length);
          localDiscoverShareCache.a(str1, (byte[])localObject1, DiscoverShareCache.DiscoverShareFileType.BLOB);
        }
        localObject3 = new CbcEncryptionAlgorithm(paramakh.D(), paramakh.E());
        try
        {
          localObject1 = ((ayc)localObject3).b((byte[])localObject1);
          i = 0;
        }
        catch (RuntimeException localRuntimeException)
        {
          Object localObject2 = null;
          i = 1;
          continue;
        }
        if ((i != 0) || (localObject1 == null))
        {
          localDiscoverShareCache.c(str1);
          mIsExtracted = false;
          Timber.f("MediaDownloader", "Failed to decrypt discover resource with Id [%s]", new Object[] { str1 });
          return false;
        }
        localObject1 = new abm().a(SnapchatApplication.b(), paramakh.d(), (byte[])localObject1, (ayc)localObject3);
        if (localObject1 == null)
        {
          mIsExtracted = false;
          Timber.f("MediaDownloader", "Failed to extract discover resource with Id [%s]", new Object[] { str1 });
          return false;
        }
        localObject3 = (adb)mMediaExtras;
        paramakh.a(mVideoUri, mOverlayPath);
        paramakh.a((adb)localObject3);
        localajv.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION, DbTable.DatabaseTable.DISCOVER_SHARE_FILES });
        mIsExtracted = true;
        Timber.c("MediaDownloader", "Extracted and loaded Discover share media with Id [%s]", new Object[] { str1 });
        return true;
      }
      label657:
      Object localObject1 = null;
      continue;
      label663:
      i = 0;
      continue;
      label668:
      int j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     alv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */