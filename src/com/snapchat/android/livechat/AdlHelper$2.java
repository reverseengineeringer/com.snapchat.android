package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.service.Responder;

final class AdlHelper$2
  implements Responder<T>
{
  AdlHelper$2(Handler paramHandler, Responder paramResponder) {}
  
  public final void errHandler(final int paramInt, final String paramString)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        b.errHandler(paramInt, paramString);
      }
    });
  }
  
  public final void resultHandler(final T paramT)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        b.resultHandler(paramT);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.livechat.AdlHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */