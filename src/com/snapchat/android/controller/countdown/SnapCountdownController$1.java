package com.snapchat.android.controller.countdown;

import aka;
import bcl;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import zt;
import zu;

final class SnapCountdownController$1
  implements Runnable
{
  SnapCountdownController$1(SnapCountdownController paramSnapCountdownController) {}
  
  public final void run()
  {
    SnapCountdownController localSnapCountdownController = a;
    Object localObject1 = a;
    long l2;
    for (long l1 = Long.MAX_VALUE;; l1 = Math.min(Math.min(l2, l1), 100L))
    {
      zt localzt;
      Object localObject4;
      try
      {
        Object localObject3 = new HashSet(b.size());
        ((Set)localObject3).addAll(b.entrySet());
        localObject3 = ((Set)localObject3).iterator();
        for (;;)
        {
          if (!((Iterator)localObject3).hasNext()) {
            break label253;
          }
          localzt = (zt)((Map.Entry)((Iterator)localObject3).next()).getValue();
          if (localzt.c())
          {
            l2 = localzt.a();
            long l3 = (int)Math.ceil(localzt.a() / 1000.0D);
            localObject4 = localzt.d();
            c.d((int)l3);
            if (l2 > 0L) {
              break;
            }
            localSnapCountdownController.a(localzt, SnapCountdownController.Action.EXPIRE);
            d.a(new bcl(c.mSender));
          }
        }
        localObject4 = ((Set)localObject4).iterator();
      }
      finally {}
      while (((Iterator)localObject4).hasNext()) {
        ((zu)((Iterator)localObject4).next()).a(c, l2);
      }
    }
    label253:
    if (l1 < Long.MAX_VALUE) {
      ((SnapCountdownController)localObject2).a(l1);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.controller.countdown.SnapCountdownController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */