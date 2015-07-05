package com.facebook.rebound.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import bl;
import java.util.List;

final class SpringConfiguratorView$e
  implements AdapterView.OnItemSelectedListener
{
  private SpringConfiguratorView$e(SpringConfiguratorView paramSpringConfiguratorView) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SpringConfiguratorView.a(a, (bl)SpringConfiguratorView.a(a).get(paramInt));
    SpringConfiguratorView.b(a, SpringConfiguratorView.b(a));
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.facebook.rebound.ui.SpringConfiguratorView.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */