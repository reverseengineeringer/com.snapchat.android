package com.snapchat.android.ui;

import android.graphics.Point;
import java.util.Random;
import java.util.Set;

final class KarelView$1
  implements Runnable
{
  KarelView$1(KarelView paramKarelView) {}
  
  public final void run()
  {
    if (KarelView.a(a).nextInt(4) == 0)
    {
      Point localPoint = new Point();
      x = KarelView.a(KarelView.b(a), KarelView.c(a));
      y = KarelView.a(KarelView.d(a), 8);
      if (KarelView.e(a).add(localPoint))
      {
        a.invalidate();
        return;
      }
    }
    if (KarelView.a(a).nextInt(3) == 0) {
      KarelView.f(a);
    }
    for (;;)
    {
      a.invalidate();
      return;
      int i = KarelView.a(KarelView.g(a), 4);
      switch (i)
      {
      default: 
        throw new RuntimeException("Something is rotten in the state of Denmark: " + i);
      case 0: 
        KarelView.h(a);
        break;
      case 1: 
        KarelView.i(a);
        break;
      case 2: 
        KarelView.j(a);
        break;
      case 3: 
        KarelView.k(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.KarelView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */