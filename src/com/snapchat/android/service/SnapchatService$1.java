package com.snapchat.android.service;

import android.os.SystemClock;
import aph;
import java.util.ArrayList;

final class SnapchatService$1
  implements Runnable
{
  SnapchatService$1(SnapchatService paramSnapchatService) {}
  
  public final void run()
  {
    new StringBuilder("mStopRunnable mFutureList.size()=").append(SnapchatService.d(a).size()).append(" hasPendingIntents=").append(SnapchatService.c(a).g());
    if ((SnapchatService.d(a).isEmpty()) && (!SnapchatService.c(a).g()))
    {
      SystemClock.elapsedRealtime();
      SnapchatService.e(a);
      a.stopSelf();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */