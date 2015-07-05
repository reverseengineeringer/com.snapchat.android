import com.addlive.service.Responder;
import com.snapchat.android.Timber;

class ahh$c<T>
  implements Responder<T>
{
  private final String a;
  
  ahh$c(String paramString)
  {
    a = paramString;
  }
  
  public void errHandler(int paramInt, String paramString)
  {
    Timber.f("livechat", "Got an error processing AddLive request %s: %s (ERR: %d)", new Object[] { a, paramString, Integer.valueOf(paramInt) });
  }
  
  public void resultHandler(T paramT)
  {
    Timber.c("livechat", "Got a successful result processing AddLive request %s", new Object[] { a });
  }
}

/* Location:
 * Qualified Name:     ahh.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */