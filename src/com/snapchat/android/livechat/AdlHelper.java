package com.snapchat.android.livechat;

import android.content.Context;
import android.os.Handler;
import chc;
import com.addlive.platform.ADL;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;
import com.addlive.service.Responder;

public final class AdlHelper
{
  public static <T> Responder<T> a(@chc final Responder<T> paramResponder, @chc Handler paramHandler)
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
  
  public static c<Void> a(String paramString)
  {
    return new c(paramString);
  }
  
  public static enum PresenceSource
  {
    ADDLIVE,  CHAT_GATEWAY;
    
    private PresenceSource() {}
  }
  
  public static abstract interface a
  {
    public abstract InitState a();
    
    public abstract void a(PlatformInitListener paramPlatformInitListener, PlatformInitOptions paramPlatformInitOptions, Context paramContext);
    
    public abstract AddLiveService b();
  }
  
  public static enum b
  {
    private b() {}
  }
  
  public static class c<T>
    implements Responder<T>
  {
    private final String a;
    
    public c(String paramString)
    {
      a = paramString;
    }
    
    public void errHandler(int paramInt, String paramString)
    {
      paramString = a;
    }
    
    public void resultHandler(T paramT)
    {
      paramT = a;
    }
  }
  
  public static enum d {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.livechat.AdlHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */