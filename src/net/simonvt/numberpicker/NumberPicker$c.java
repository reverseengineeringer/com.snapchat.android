package net.simonvt.numberpicker;

final class NumberPicker$c
  implements Runnable
{
  private boolean b;
  
  NumberPicker$c(NumberPicker paramNumberPicker) {}
  
  public final void run()
  {
    NumberPicker.a(a, b);
    a.postDelayed(this, NumberPicker.k(a));
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */