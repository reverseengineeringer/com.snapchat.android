package net.simonvt.numberpicker;

import android.widget.EditText;

final class NumberPicker$i
  implements Runnable
{
  private int b;
  private int c;
  
  NumberPicker$i(NumberPicker paramNumberPicker) {}
  
  public final void run()
  {
    NumberPicker.b(a).setSelection(b, c);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */