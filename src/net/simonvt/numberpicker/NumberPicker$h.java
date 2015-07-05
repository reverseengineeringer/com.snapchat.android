package net.simonvt.numberpicker;

import android.view.ViewConfiguration;

final class NumberPicker$h
  implements Runnable
{
  private final int b = 1;
  private final int c = 2;
  private int d;
  private int e;
  
  NumberPicker$h(NumberPicker paramNumberPicker) {}
  
  public final void a()
  {
    e = 0;
    d = 0;
    a.removeCallbacks(this);
    if (NumberPicker.e(a))
    {
      NumberPicker.c(a, false);
      a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
    }
    NumberPicker.d(a, false);
    if (NumberPicker.g(a)) {
      a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
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
        NumberPicker.c(a, true);
        a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
        return;
      }
      NumberPicker.d(a, true);
      a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
      return;
    }
    switch (d)
    {
    default: 
      return;
    case 1: 
      if (!NumberPicker.e(a)) {
        a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
      }
      NumberPicker.i(a);
      a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
      return;
    }
    if (!NumberPicker.g(a)) {
      a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
    }
    NumberPicker.j(a);
    a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */