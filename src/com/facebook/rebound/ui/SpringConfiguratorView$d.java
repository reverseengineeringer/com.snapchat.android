package com.facebook.rebound.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.TextView;
import bq;
import java.util.ArrayList;
import java.util.List;

final class SpringConfiguratorView$d
  extends BaseAdapter
{
  final List<String> a;
  private final Context c;
  
  public SpringConfiguratorView$d(SpringConfiguratorView paramSpringConfiguratorView, Context paramContext)
  {
    c = paramContext;
    a = new ArrayList();
  }
  
  public final void a(String paramString)
  {
    a.add(paramString);
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
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new TextView(c);
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
      int i = bq.a(12.0F, b.getResources());
      paramView.setPadding(i, i, i, i);
      paramView.setTextColor(SpringConfiguratorView.j(b));
    }
    for (;;)
    {
      paramView.setText((CharSequence)a.get(paramInt));
      return paramView;
      paramView = (TextView)paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.rebound.ui.SpringConfiguratorView.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */