import com.addlive.service.MediaConnection;
import com.addlive.service.Responder;
import com.snapchat.android.Timber;

final class ahj$2
  implements Responder<MediaConnection>
{
  ahj$2(ahj paramahj) {}
  
  public final void errHandler(int paramInt, String paramString)
  {
    ahj localahj = a;
    Timber.f("livechat", "Got an AddLive connection error: %s (ERR: %d)", new Object[] { paramString, Integer.valueOf(paramInt) });
    i = ahh.b.a;
  }
}

/* Location:
 * Qualified Name:     ahj.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */