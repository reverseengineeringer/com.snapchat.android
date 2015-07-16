import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.ChatPerformanceAnalytics.ChatMediaType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import javax.inject.Provider;

final class apx$a
  extends AsyncTask<Void, Void, Bitmap>
{
  final Context a;
  private final ams c = ams.a();
  private final Provider<akp> d;
  
  public apx$a(Context paramContext, Provider<akp> paramProvider)
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
        if ((apx.a(b) instanceof alc))
        {
          if (c.a((alc)apx.a(b))) {
            return b.a(a, apx.a(b).d(), new CbcEncryptionAlgorithm(apx.a(b).E(), apx.a(b).F()));
          }
        }
        else
        {
          ChatMedia localChatMedia;
          axn localaxn;
          if ((!apx.a(b).O()) && (!apx.a(b).P()))
          {
            localObject2 = c;
            localChatMedia = apx.a(b);
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
            return b.a(a, apx.a(b).d(), new CbcEncryptionAlgorithm(apx.a(b).E(), apx.a(b).F()));
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

/* Location:
 * Qualified Name:     apx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */