package net.simonvt.numberpicker;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import bws.b;

final class SnapchatTimePicker$2
  implements View.OnLongClickListener
{
  SnapchatTimePicker$2(SnapchatTimePicker paramSnapchatTimePicker) {}
  
  public final boolean onLongClick(View paramView)
  {
    SnapchatTimePicker.a(a).clearFocus();
    if (paramView.getId() == bws.b.np__increment)
    {
      SnapchatTimePicker.b(a, true);
      return true;
    }
    SnapchatTimePicker.b(a, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */