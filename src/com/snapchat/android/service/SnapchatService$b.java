package com.snapchat.android.service;

import android.os.Handler;
import anh;
import ban;
import com.snapchat.android.util.debug.ReleaseManager;
import os;

final class SnapchatService$b
  implements Runnable
{
  private final anh b;
  
  public SnapchatService$b(SnapchatService paramSnapchatService, anh paramanh)
  {
    b = paramanh;
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
      final os localos = new os(b.toString(), localException);
      new StringBuilder("ProcessRunnable halted ").append(localos);
      if (ReleaseManager.f()) {
        SnapchatService.a().post(new Runnable()
        {
          public final void run()
          {
            throw localos;
          }
        });
      }
      SnapchatService.b(a).a(localos);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */