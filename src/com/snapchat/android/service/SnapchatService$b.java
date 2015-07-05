package com.snapchat.android.service;

import amk;
import android.os.Handler;
import azo;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import ob;

final class SnapchatService$b
  implements Runnable
{
  private final amk b;
  
  public SnapchatService$b(SnapchatService paramSnapchatService, amk paramamk)
  {
    b = paramamk;
  }
  
  public final void run()
  {
    try
    {
      b.a(SnapchatService.a(a));
      SnapchatService.a().post(new SnapchatService.a(a, b));
      return;
    }
    catch (Exception localException)
    {
      final ob localob = new ob(b.toString(), localException);
      Timber.f("SnapchatService", "ProcessRunnable halted " + localob, new Object[0]);
      if (ReleaseManager.f()) {
        SnapchatService.a().post(new Runnable()
        {
          public final void run()
          {
            throw localob;
          }
        });
      }
      SnapchatService.b(a).a(localob);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */