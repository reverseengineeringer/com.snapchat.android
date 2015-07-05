package org.lucasr.twowayview;

import android.view.View;

class TwoWayView$CheckForKeyLongPress
  extends TwoWayView.WindowRunnnable
  implements Runnable
{
  private TwoWayView$CheckForKeyLongPress(TwoWayView paramTwoWayView)
  {
    super(paramTwoWayView, null);
  }
  
  public void run()
  {
    if ((!this$0.isPressed()) || (TwoWayView.access$2200(this$0) < 0)) {}
    label129:
    label132:
    for (;;)
    {
      return;
      int i = TwoWayView.access$2200(this$0);
      int j = TwoWayView.access$3300(this$0);
      View localView = this$0.getChildAt(i - j);
      if (!TwoWayView.access$500(this$0)) {
        if (!sameWindow()) {
          break label129;
        }
      }
      for (boolean bool = TwoWayView.access$4000(this$0, localView, TwoWayView.access$2200(this$0), TwoWayView.access$2300(this$0));; bool = false)
      {
        if (!bool) {
          break label132;
        }
        this$0.setPressed(false);
        localView.setPressed(false);
        return;
        this$0.setPressed(false);
        if (localView == null) {
          break;
        }
        localView.setPressed(false);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.CheckForKeyLongPress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */