import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.LinkedHashSet;

@bwq
public final class yv
{
  public static final HashMap<String, aww> a = new HashMap();
  public static final HashMap<String, awv> b = new HashMap();
  private static final HashMap<String, ph> e = new HashMap();
  public final ajn c;
  public final nq d;
  
  public yv()
  {
    this(ajn.a(), new nq());
  }
  
  private yv(ajn paramajn, nq paramnq)
  {
    c = paramajn;
    d = paramnq;
  }
  
  public static void a(String paramString)
  {
    paramString = (aww)a.get(paramString);
    if (paramString != null) {
      paramString.cancel(true);
    }
  }
  
  public static void b(String paramString)
  {
    paramString = (awv)b.get(paramString);
    if (paramString != null) {
      paramString.cancel(true);
    }
  }
  
  final void a(final aim paramaim)
  {
    for (;;)
    {
      try
      {
        Object localObject;
        if (mIsChatMedia)
        {
          new pj(paramaim).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
          ban.a().a(new bar());
          paramaim = mMediaMailingMetadata;
          if (!paramaim.b()) {
            break;
          }
          localObject = akc.b();
          if (paramaim.d().size() > 1)
          {
            paramaim = ((akc)localObject).b(paramaim.e());
            if (paramaim == null) {
              break;
            }
            mIsSavableConversation = true;
          }
        }
        else
        {
          localObject = mClientId;
          localObject = (ph)e.get(localObject);
          if (localObject != null) {
            ((ph)localObject).cancel(true);
          }
          localObject = new ph(paramaim)
          {
            protected final void a(aku paramAnonymousaku)
            {
              super.a(paramAnonymousaku);
              yv.b().remove(paramaimmClientId);
            }
          };
          e.put(mClientId, localObject);
          ((ph)localObject).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
          continue;
        }
        paramaim = ((akc)localObject).a(paramaim.e());
      }
      catch (ph.a paramaim)
      {
        new ErrorMetric(paramaim.getMessage()).a(paramaim).d();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     yv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */