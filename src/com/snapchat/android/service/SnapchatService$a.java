package com.snapchat.android.service;

import amk;
import android.util.SparseArray;
import aok;
import aol;
import java.util.HashSet;
import java.util.Iterator;

final class SnapchatService$a
  implements Runnable
{
  private final amk b;
  
  public SnapchatService$a(SnapchatService paramSnapchatService, amk paramamk)
  {
    b = paramamk;
  }
  
  public final void run()
  {
    b.f();
    Object localObject2 = SnapchatService.c(a);
    amk localamk = b;
    synchronized (d)
    {
      localObject2 = (HashSet)d.get(aol.b(localamk));
      if (localObject2 != null)
      {
        localObject2 = ((HashSet)localObject2).iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((aok)((Iterator)localObject2).next()).a(localamk);
        }
      }
    }
    SnapchatService.a(a, b);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */