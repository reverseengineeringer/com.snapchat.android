package com.snapchat.android.ui.diagnostics;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;

final class DiagnosticsView$1
  implements View.OnClickListener
{
  DiagnosticsView$1(DiagnosticsView paramDiagnosticsView, ListView paramListView) {}
  
  public final void onClick(View paramView)
  {
    if (a.getVisibility() == 0)
    {
      a.setVisibility(8);
      return;
    }
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */