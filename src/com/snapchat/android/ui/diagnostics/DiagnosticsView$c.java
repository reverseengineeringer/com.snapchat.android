package com.snapchat.android.ui.diagnostics;

import alv;
import aly;
import android.view.LayoutInflater;
import chc;
import java.util.ArrayList;
import java.util.List;
import us;

final class DiagnosticsView$c
  extends DiagnosticsView.a
{
  private final List<aly> b = new ArrayList();
  
  public DiagnosticsView$c(DiagnosticsView paramDiagnosticsView, LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater);
  }
  
  public final void a(@chc alv paramalv) {}
  
  public final void a(aly paramaly)
  {
    b.add(paramaly);
    notifyDataSetChanged();
  }
  
  public final void a(aly paramaly, us paramus)
  {
    b.remove(paramaly);
    notifyDataSetChanged();
  }
  
  public final int getCount()
  {
    return b.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return b.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */