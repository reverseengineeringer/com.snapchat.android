package com.snapchat.android.ui.diagnostics;

import ala;
import alc;
import android.view.LayoutInflater;
import cgb;
import java.util.ArrayList;
import java.util.List;
import uc;

final class DiagnosticsView$c
  extends DiagnosticsView.a
{
  private final List<alc> b = new ArrayList();
  
  public DiagnosticsView$c(DiagnosticsView paramDiagnosticsView, LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater);
  }
  
  public final void a(@cgb ala paramala) {}
  
  public final void a(alc paramalc)
  {
    b.add(paramalc);
    notifyDataSetChanged();
  }
  
  public final void a(alc paramalc, uc paramuc)
  {
    b.remove(paramalc);
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