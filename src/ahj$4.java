import com.addlive.service.Responder;
import com.snapchat.android.Timber;

final class ahj$4
  implements Responder<Void>
{
  ahj$4(ahj paramahj) {}
  
  public final void errHandler(int paramInt, String paramString)
  {
    Timber.f("livechat", "Failed to terminate connection to AddLive scope: " + paramString + "(ERR:" + paramInt + ")", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     ahj.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */