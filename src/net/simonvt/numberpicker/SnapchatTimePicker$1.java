package net.simonvt.numberpicker;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import bxt.b;

final class SnapchatTimePicker$1
  implements View.OnClickListener
{
  SnapchatTimePicker$1(SnapchatTimePicker paramSnapchatTimePicker) {}
  
  public final void onClick(View paramView)
  {
    SnapchatTimePicker.a(a).clearFocus();
    if (paramView.getId() == bxt.b.np__increment)
    {
      SnapchatTimePicker.a(a, true);
      return;
    }
    SnapchatTimePicker.a(a, false);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */