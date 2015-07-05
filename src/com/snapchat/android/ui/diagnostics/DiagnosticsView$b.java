package com.snapchat.android.ui.diagnostics;

import ala;
import alc;
import android.view.LayoutInflater;
import cgb;
import java.util.LinkedList;
import uc;

final class DiagnosticsView$b
  extends DiagnosticsView.a
{
  final LinkedList<alc> a = new LinkedList();
  
  public DiagnosticsView$b(DiagnosticsView paramDiagnosticsView, LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater);
  }
  
  public final void a(@cgb ala paramala) {}
  
  public final void a(alc paramalc) {}
  
  public final void a(alc paramalc, uc paramuc)
  {
    a.addFirst(paramalc);
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