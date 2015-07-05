package net.simonvt.numberpicker;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import bws.b;

final class NumberPicker$1
  implements View.OnClickListener
{
  NumberPicker$1(NumberPicker paramNumberPicker) {}
  
  public final void onClick(View paramView)
  {
    NumberPicker.a(a);
    NumberPicker.b(a).clearFocus();
    if (paramView.getId() == bws.b.np__increment)
    {
      NumberPicker.a(a, true);
      return;
    }
    NumberPicker.a(a, false);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */