package com.snapchat.android.service;

import android.util.SparseArray;
import anh;
import apg;
import aph;
import java.util.HashSet;
import java.util.Iterator;

final class SnapchatService$a
  implements Runnable
{
  private final anh b;
  
  public SnapchatService$a(SnapchatService paramSnapchatService, anh paramanh)
  {
    b = paramanh;
  }
  
  public final void run()
  {
    b.b();
    Object localObject2 = SnapchatService.c(a);
    anh localanh = b;
    synchronized (d)
    {
      localObject2 = (HashSet)d.get(aph.b(localanh));
      if (localObject2 != null)
      {
        localObject2 = ((HashSet)localObject2).iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((apg)((Iterator)localObject2).next()).a(localanh);
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