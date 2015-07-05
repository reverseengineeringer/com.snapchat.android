package net.simonvt.numberpicker;

final class SnapchatTimePicker$b
  implements Runnable
{
  private boolean b;
  
  SnapchatTimePicker$b(SnapchatTimePicker paramSnapchatTimePicker) {}
  
  public final void run()
  {
    SnapchatTimePicker.a(a, b);
    a.postDelayed(this, SnapchatTimePicker.h(a));
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */