package net.simonvt.numberpicker;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

final class NumberPicker$3
  implements View.OnFocusChangeListener
{
  NumberPicker$3(NumberPicker paramNumberPicker) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      NumberPicker.b(a).selectAll();
      return;
    }
    NumberPicker.b(a).setSelection(0, 0);
    NumberPicker.a(a, paramView);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */