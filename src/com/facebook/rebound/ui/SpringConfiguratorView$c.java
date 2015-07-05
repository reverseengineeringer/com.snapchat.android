package com.facebook.rebound.ui;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import bg;
import java.text.DecimalFormat;

final class SpringConfiguratorView$c
  implements SeekBar.OnSeekBarChangeListener
{
  private SpringConfiguratorView$c(SpringConfiguratorView paramSpringConfiguratorView) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    float f;
    if (paramSeekBar == SpringConfiguratorView.c(a))
    {
      f = paramInt * 200.0F / 100000.0F + 0.0F;
      ba).b = bg.a(f);
      String str = SpringConfiguratorView.a().format(f);
      SpringConfiguratorView.d(a).setText("T:" + str);
    }
    if (paramSeekBar == SpringConfiguratorView.e(a))
    {
      f = paramInt * 50.0F / 100000.0F + 0.0F;
      ba).a = bg.b(f);
      paramSeekBar = SpringConfiguratorView.a().format(f);
      SpringConfiguratorView.f(a).setText("F:" + paramSeekBar);
    }
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.facebook.rebound.ui.SpringConfiguratorView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */