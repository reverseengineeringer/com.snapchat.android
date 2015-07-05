package org.lucasr.twowayview;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewConfiguration;

final class TwoWayView$CheckForTap
  implements Runnable
{
  private TwoWayView$CheckForTap(TwoWayView paramTwoWayView) {}
  
  public final void run()
  {
    if (TwoWayView.access$400(this$0) != 0) {}
    Object localObject;
    do
    {
      return;
      TwoWayView.access$402(this$0, 1);
      localObject = this$0.getChildAt(TwoWayView.access$3400(this$0) - TwoWayView.access$3300(this$0));
    } while ((localObject == null) || (((View)localObject).hasFocusable()));
    TwoWayView.access$3502(this$0, 0);
    if (!TwoWayView.access$500(this$0))
    {
      this$0.setPressed(true);
      ((View)localObject).setPressed(true);
      TwoWayView.access$3600(this$0);
      TwoWayView.access$3700(this$0, TwoWayView.access$3400(this$0), (View)localObject);
      this$0.refreshDrawableState();
      TwoWayView.access$3700(this$0, TwoWayView.access$3400(this$0), (View)localObject);
      this$0.refreshDrawableState();
      boolean bool = this$0.isLongClickable();
      if (TwoWayView.access$3800(this$0) != null)
      {
        localObject = TwoWayView.access$3800(this$0).getCurrent();
        if ((localObject != null) && ((localObject instanceof TransitionDrawable)))
        {
          if (!bool) {
            break label205;
          }
          int i = ViewConfiguration.getLongPressTimeout();
          ((TransitionDrawable)localObject).startTransition(i);
        }
      }
      while (bool)
      {
        TwoWayView.access$3900(this$0);
        return;
        label205:
        ((TransitionDrawable)localObject).resetTransition();
      }
      TwoWayView.access$402(this$0, 2);
      return;
    }
    TwoWayView.access$402(this$0, 2);
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.CheckForTap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */