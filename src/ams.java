import android.net.Uri;
import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
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
public final class ams
{
  private static final ams b = new ams();
  private static Map<String, amr> c = new ConcurrentHashMap();
  public final ChatPerformanceAnalytics a;
  private final tt d;
  private final axp e;
  
  private ams()
  {
    this(tt.a(), axp.a.a(), ChatPerformanceAnalytics.a());
  }
  
  private ams(@chc tt paramtt, @chc axp paramaxp, @chc ChatPerformanceAnalytics paramChatPerformanceAnalytics)
  {
    d = paramtt;
    e = paramaxp;
    a = paramChatPerformanceAnalytics;
  }
  
  public static ams a()
  {
    return b;
  }
  
  public static void a(ChatMedia paramChatMedia)
  {
    if ((paramChatMedia.E() == null) || (paramChatMedia.F() == null)) {
      tt.b(paramChatMedia.Y(), null);
    }
  }
  
  public static void a(String paramString)
  {
    if (c.containsKey(paramString))
    {
      amr localamr = (amr)c.get(paramString);
      if (d != null) {
        b.a(d);
      }
      c.remove(paramString);
    }
  }
  
  public static byte[] a(ChatMedia paramChatMedia, String paramString)
  {
    Object localObject = null;
    if (paramChatMedia.C() != null)
    {
      String str1 = String.valueOf(System.currentTimeMillis());
      String str2 = pt.a(str1, "/bq/chat_media");
      localObject = new Bundle();
      ((Bundle)localObject).putString("id", paramChatMedia.C());
      ((Bundle)localObject).putString("conversation_id", paramChatMedia.Y());
      ((Bundle)localObject).putString("timestamp", str1);
      ((Bundle)localObject).putString("req_token", str2);
      ((Bundle)localObject).putString("username", paramString);
      str1 = "Media-" + paramChatMedia.d();
      str2 = bal.b("/bq/chat_media") + "/bq/chat_media";
      paramString = paramChatMedia.d();
      amq localamq = new amq();
      c.put(paramString, localamq);
      localObject = localamq.a(str2, (Bundle)localObject, DownloadPriority.HIGH, DownloadPriority.BACKGROUND_MEDIUM, "CHAT", str1);
      c.remove(paramString);
      a(paramChatMedia);
    }
    return (byte[])localObject;
  }
  
  @Deprecated
  @cbr
  public final boolean a(alc paramalc)
  {
    String str1 = paramalc.d();
    for (;;)
    {
      synchronized (mExtractionLock)
      {
        akp localakp = (akp)akp.UNSAFE_USER_PROVIDER.get();
        String str2 = akr.l();
        if ((localakp == null) || (str2 == null)) {
          return false;
        }
        DiscoverShareCache localDiscoverShareCache = (DiscoverShareCache)axo.DISCOVER_SHARE;
        if (mIsExtracted) {
          return true;
        }
        if (paramalc.D() == ChatMedia.MediaType.IMAGE)
        {
          if (localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.IMAGE) != null)
          {
            localObject1 = e.a(str1);
            if (localObject1 != null)
            {
              paramalc.a((aco)localObject1);
              mIsExtracted = true;
              return true;
            }
          }
        }
        else if (paramalc.X())
        {
          localObject3 = e.a(str1);
          if (localObject3 != null)
          {
            if (i == null) {
              break label513;
            }
            i = 1;
            if (i == 0) {
              break label507;
            }
            localObject1 = localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO_OVERLAY);
            if (localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO_THUMBNAIL) == null) {
              break label518;
            }
            j = 1;
            String str3 = localDiscoverShareCache.b(str1, DiscoverShareCache.DiscoverShareFileType.VIDEO);
            if ((str3 != null) && (j != 0) && ((i == 0) || (localObject1 != null)))
            {
              paramalc.a((aco)localObject3);
              paramalc.a(Uri.parse(str3), (String)localObject1);
              mIsExtracted = true;
              return true;
            }
          }
        }
        Object localObject3 = localDiscoverShareCache.a(str1, DiscoverShareCache.DiscoverShareFileType.BLOB);
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          if (paramalc.X())
          {
            localObject1 = ChatPerformanceAnalytics.ChatMediaType.DISCOVER_SHARE_VIDEO;
            localObject3 = a.a((ChatPerformanceAnalytics.ChatMediaType)localObject1);
            localObject1 = a(paramalc, str2);
            if (localObject1 == null)
            {
              ChatPerformanceAnalytics.a((EasyMetric)localObject3, 0);
              mIsExtracted = false;
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
        localObject3 = new CbcEncryptionAlgorithm(paramalc.E(), paramalc.F());
        try
        {
          localObject1 = ((aza)localObject3).b((byte[])localObject1);
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
          return false;
        }
        localObject1 = new acm().a(SnapchatApplication.b(), paramalc.d(), (byte[])localObject1, (aza)localObject3);
        if (localObject1 == null)
        {
          mIsExtracted = false;
          return false;
        }
        localObject3 = (aeb)mMediaExtras;
        paramalc.a(mVideoUri, mOverlayPath);
        paramalc.a((aeb)localObject3);
        localakp.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION, DbTable.DatabaseTable.DISCOVER_SHARE_FILES });
        mIsExtracted = true;
        return true;
      }
      label507:
      Object localObject1 = null;
      continue;
      label513:
      i = 0;
      continue;
      label518:
      int j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     ams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */