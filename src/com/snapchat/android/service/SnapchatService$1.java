package com.snapchat.android.service;

import android.os.SystemClock;
import aol;
import com.snapchat.android.Timber;
import java.util.ArrayList;

final class SnapchatService$1
  implements Runnable
{
  SnapchatService$1(SnapchatService paramSnapchatService) {}
  
  public final void run()
  {
    Timber.c("SnapchatService", "mStopRunnable mFutureList.size()=" + SnapchatService.d(a).size() + " hasPendingIntents=" + SnapchatService.c(a).g(), new Object[0]);
    if ((SnapchatService.d(a).isEmpty()) && (!SnapchatService.c(a).g()))
    {
      Timber.c("SnapchatService", "Stop service which lived for %d ms", new Object[] { Long.valueOf(SystemClock.elapsedRealtime() - SnapchatService.e(a)) });
      a.stopSelf();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */