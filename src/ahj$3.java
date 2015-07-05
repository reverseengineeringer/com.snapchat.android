import com.addlive.service.Responder;
import com.snapchat.android.Timber;

final class ahj$3
  implements Responder<Void>
{
  ahj$3(ahj paramahj) {}
  
  public final void errHandler(int paramInt, String paramString)
  {
    Timber.f("livechat", "Failed to publish video due to: %s (ERR: %d)", new Object[] { paramString, Integer.valueOf(paramInt) });
    a.j = ahh.d.a;
  }
}

/* Location:
 * Qualified Name:     ahj.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */