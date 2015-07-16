import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.LinkedHashSet;

@bxr
public final class zr
{
  public static final HashMap<String, axu> a = new HashMap();
  public static final HashMap<String, axt> b = new HashMap();
  private static final HashMap<String, py> e = new HashMap();
  public final aki c;
  public final oh d;
  
  public zr()
  {
    this(aki.a(), new oh());
  }
  
  private zr(aki paramaki, oh paramoh)
  {
    c = paramaki;
    d = paramoh;
  }
  
  public static void a(String paramString)
  {
    paramString = (axu)a.get(paramString);
    if (paramString != null) {
      paramString.cancel(true);
    }
  }
  
  public static void b(String paramString)
  {
    paramString = (axt)b.get(paramString);
    if (paramString != null) {
      paramString.cancel(true);
    }
  }
  
  final void a(final aji paramaji)
  {
    for (;;)
    {
      try
      {
        Object localObject;
        if (mIsChatMedia)
        {
          new qa(paramaji).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
          bbo.a().a(new bbs());
          paramaji = mMediaMailingMetadata;
          if (!paramaji.b()) {
            break;
          }
          localObject = akx.c();
          if (paramaji.d().size() > 1)
          {
            paramaji = ((akx)localObject).b(paramaji.e());
            if (paramaji == null) {
              break;
            }
            mIsSavableConversation = true;
          }
        }
        else
        {
          localObject = mClientId;
          localObject = (py)e.get(localObject);
          if (localObject != null) {
            ((py)localObject).cancel(true);
          }
          localObject = new py(paramaji)
          {
            protected final void a(alp paramAnonymousalp)
            {
              super.a(paramAnonymousalp);
              zr.b().remove(paramajimClientId);
            }
          };
          e.put(mClientId, localObject);
          ((py)localObject).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
          continue;
        }
        paramaji = ((akx)localObject).a(paramaji.e());
      }
      catch (py.a paramaji)
      {
        new ErrorMetric(paramaji.getMessage()).a(paramaji).e();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     zr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */