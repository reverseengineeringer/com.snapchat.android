import android.content.Context;
import android.os.Handler;
import com.addlive.platform.ADL;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;
import com.addlive.service.Responder;
import com.snapchat.android.Timber;

public final class ahh
{
  static ahh.c<Void> a(String paramString)
  {
    return new ahh.c(paramString);
  }
  
  static <T> Responder<T> a(@cgb final Responder<T> paramResponder, @cgb Handler paramHandler)
  {
    new Responder()
    {
      public final void errHandler(final int paramAnonymousInt, final String paramAnonymousString)
      {
        a.post(new Runnable()
        {
          public final void run()
          {
            b.errHandler(paramAnonymousInt, paramAnonymousString);
          }
        });
      }
      
      public final void resultHandler(final T paramAnonymousT)
      {
        a.post(new Runnable()
        {
          public final void run()
          {
            b.resultHandler(paramAnonymousT);
          }
        });
      }
    };
  }
  
  static abstract interface a
  {
    public abstract InitState a();
    
    public abstract void a(PlatformInitListener paramPlatformInitListener, PlatformInitOptions paramPlatformInitOptions, Context paramContext);
    
    public abstract AddLiveService b();
  }
  
  static enum b
  {
    private b() {}
  }
  
  static class c<T>
    implements Responder<T>
  {
    private final String a;
    
    c(String paramString)
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
  
  static enum d {}
}

/* Location:
 * Qualified Name:     ahh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */