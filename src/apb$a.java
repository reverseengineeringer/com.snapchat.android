import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.ChatPerformanceAnalytics.ChatMediaType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import javax.inject.Provider;

final class apb$a
  extends AsyncTask<Void, Void, Bitmap>
{
  final Context a;
  private final alv c = alv.a();
  private final Provider<ajv> d;
  
  public apb$a(Context paramContext, Provider<ajv> paramProvider)
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
        if ((apb.a(b) instanceof akh))
        {
          if (c.a((akh)apb.a(b))) {
            return b.a(a, apb.a(b).d(), new CbcEncryptionAlgorithm(apb.a(b).D(), apb.a(b).E()));
          }
        }
        else
        {
          ChatMedia localChatMedia;
          if ((!apb.a(b).N()) && (!apb.a(b).O()))
          {
            localObject2 = c;
            localChatMedia = apb.a(b);
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
            return b.a(a, apb.a(b).d(), new CbcEncryptionAlgorithm(apb.a(b).D(), apb.a(b).E()));
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

/* Location:
 * Qualified Name:     apb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */