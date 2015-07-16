package net.simonvt.numberpicker;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.EditText;
import bxt.b;

final class NumberPicker$2
  implements View.OnLongClickListener
{
  NumberPicker$2(NumberPicker paramNumberPicker) {}
  
  public final boolean onLongClick(View paramView)
  {
    NumberPicker.a(a);
    NumberPicker.b(a).clearFocus();
    if (paramView.getId() == bxt.b.np__increment)
    {
      NumberPicker.b(a, true);
      return true;
    }
    NumberPicker.b(a, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */