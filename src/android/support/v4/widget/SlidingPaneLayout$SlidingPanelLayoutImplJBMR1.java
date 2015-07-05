package android.support.v4.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

final class SlidingPaneLayout$SlidingPanelLayoutImplJBMR1
  extends SlidingPaneLayout.SlidingPanelLayoutImplBase
{
  public final void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    ViewCompat.setLayerPaint(paramView, getLayoutParamsdimPaint);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.SlidingPanelLayoutImplJBMR1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */