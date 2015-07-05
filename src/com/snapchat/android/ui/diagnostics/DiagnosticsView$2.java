package com.snapchat.android.ui.diagnostics;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.LinkedList;

final class DiagnosticsView$2
  implements View.OnClickListener
{
  DiagnosticsView$2(DiagnosticsView paramDiagnosticsView, DiagnosticsView.b paramb) {}
  
  public final void onClick(View paramView)
  {
    paramView = a;
    a.clear();
    paramView.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */