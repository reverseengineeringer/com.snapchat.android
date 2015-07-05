package com.facebook.rebound.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class SpringConfiguratorView$a
  implements View.OnTouchListener
{
  private SpringConfiguratorView$a(SpringConfiguratorView paramSpringConfiguratorView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      SpringConfiguratorView.g(a);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.rebound.ui.SpringConfiguratorView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */