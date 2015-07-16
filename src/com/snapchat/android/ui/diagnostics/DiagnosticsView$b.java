package com.snapchat.android.ui.diagnostics;

import alv;
import aly;
import android.view.LayoutInflater;
import chc;
import java.util.LinkedList;
import us;

final class DiagnosticsView$b
  extends DiagnosticsView.a
{
  final LinkedList<aly> a = new LinkedList();
  
  public DiagnosticsView$b(DiagnosticsView paramDiagnosticsView, LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater);
  }
  
  public final void a(@chc alv paramalv) {}
  
  public final void a(aly paramaly) {}
  
  public final void a(aly paramaly, us paramus)
  {
    a.addFirst(paramaly);
    if (a.size() > 100) {
      a.removeLast();
    }
    notifyDataSetChanged();
  }
  
  public final int getCount()
  {
    return a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */