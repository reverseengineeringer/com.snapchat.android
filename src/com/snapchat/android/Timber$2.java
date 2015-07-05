package com.snapchat.android;

import java.util.ArrayList;
import mh;

final class Timber$2
  implements Runnable
{
  Timber$2(mh parammh) {}
  
  public final void run()
  {
    mh localmh = a;
    mh.a(a, b + ": begin");
    long l2 = ((Long)c.get(0)).longValue();
    int i = 1;
    long l1 = l2;
    while (i < c.size())
    {
      l1 = ((Long)c.get(i)).longValue();
      String str = (String)d.get(i);
      long l3 = ((Long)c.get(i - 1)).longValue();
      mh.a(a, b + ":      " + (l1 - l3) + " ms, " + str);
      i += 1;
    }
    mh.a(a, b + ": end, " + (l1 - l2) + " ms");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.Timber.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */