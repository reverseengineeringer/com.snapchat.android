package net.simonvt.numberpicker;

import android.view.ViewConfiguration;

final class SnapchatTimePicker$g
  implements Runnable
{
  private final int b = 1;
  private final int c = 2;
  private int d;
  private int e;
  
  SnapchatTimePicker$g(SnapchatTimePicker paramSnapchatTimePicker) {}
  
  public final void a()
  {
    e = 0;
    d = 0;
    a.removeCallbacks(this);
    if (SnapchatTimePicker.b(a))
    {
      SnapchatTimePicker.c(a, false);
      a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
    }
    SnapchatTimePicker.d(a, false);
    if (SnapchatTimePicker.d(a)) {
      a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
    }
  }
  
  public final void a(int paramInt)
  {
    a();
    e = 1;
    d = paramInt;
    a.postDelayed(this, ViewConfiguration.getTapTimeout());
  }
  
  public final void b(int paramInt)
  {
    a();
    e = 2;
    d = paramInt;
    a.post(this);
  }
  
  public final void run()
  {
    switch (e)
    {
    default: 
      return;
    case 1: 
      switch (d)
      {
      default: 
        return;
      case 1: 
        SnapchatTimePicker.c(a, true);
        a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
        return;
      }
      SnapchatTimePicker.d(a, true);
      a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
      return;
    }
    switch (d)
    {
    default: 
      return;
    case 1: 
      if (!SnapchatTimePicker.b(a)) {
        a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
      }
      SnapchatTimePicker.f(a);
      a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
      return;
    }
    if (!SnapchatTimePicker.d(a)) {
      a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
    }
    SnapchatTimePicker.g(a);
    a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */