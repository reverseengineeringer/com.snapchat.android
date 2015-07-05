package com.snapchat.android;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

final class SnapchatApplication$2
  implements Thread.UncaughtExceptionHandler
{
  SnapchatApplication$2(SnapchatApplication paramSnapchatApplication, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Iterator localIterator = SnapchatApplication.e.iterator();
    while (localIterator.hasNext())
    {
      SnapchatApplication.a locala = (SnapchatApplication.a)((WeakReference)localIterator.next()).get();
      if (locala != null) {
        locala.a(b, paramThread, paramThrowable);
      }
    }
    a.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatApplication.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */