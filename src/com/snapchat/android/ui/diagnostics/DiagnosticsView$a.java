package com.snapchat.android.ui.diagnostics;

import ala;
import alb.c;
import alc;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

abstract class DiagnosticsView$a
  extends BaseAdapter
  implements alb.c
{
  private final LayoutInflater a;
  
  protected DiagnosticsView$a(LayoutInflater paramLayoutInflater)
  {
    a = paramLayoutInflater;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a.inflate(2130968651, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(2131362246);
    paramViewGroup = (TextView)localView.findViewById(2131362247);
    alc localalc = (alc)getItem(paramInt);
    paramView.setText(g.toString());
    paramViewGroup.setText(f);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */