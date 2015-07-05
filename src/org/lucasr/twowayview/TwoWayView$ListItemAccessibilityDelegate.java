package org.lucasr.twowayview;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.widget.ListAdapter;

class TwoWayView$ListItemAccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  private TwoWayView$ListItemAccessibilityDelegate(TwoWayView paramTwoWayView) {}
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    int i = this$0.getPositionForView(paramView);
    paramView = this$0.getAdapter();
    if ((i == -1) || (paramView == null)) {
      break label32;
    }
    label32:
    while ((!this$0.isEnabled()) || (!paramView.isEnabled(i))) {
      return;
    }
    if (i == this$0.getSelectedItemPosition())
    {
      paramAccessibilityNodeInfoCompat.setSelected(true);
      paramAccessibilityNodeInfoCompat.addAction(8);
    }
    for (;;)
    {
      if (this$0.isClickable())
      {
        paramAccessibilityNodeInfoCompat.addAction(16);
        paramAccessibilityNodeInfoCompat.setClickable(true);
      }
      if (!this$0.isLongClickable()) {
        break;
      }
      paramAccessibilityNodeInfoCompat.addAction(32);
      paramAccessibilityNodeInfoCompat.setLongClickable(true);
      return;
      paramAccessibilityNodeInfoCompat.addAction(4);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {}
    int i;
    long l;
    do
    {
      do
      {
        return true;
        i = this$0.getPositionForView(paramView);
        paramBundle = this$0.getAdapter();
        if ((i == -1) || (paramBundle == null)) {
          return false;
        }
        if ((!this$0.isEnabled()) || (!paramBundle.isEnabled(i))) {
          return false;
        }
        l = this$0.getItemIdAtPosition(i);
        switch (paramInt)
        {
        default: 
          return false;
        case 8: 
          if (this$0.getSelectedItemPosition() == i)
          {
            this$0.setSelection(-1);
            return true;
          }
          return false;
        case 4: 
          if (this$0.getSelectedItemPosition() != i)
          {
            this$0.setSelection(i);
            return true;
          }
          return false;
        }
      } while ((this$0.isClickable()) && (this$0.performItemClick(paramView, i, l)));
      return false;
    } while ((this$0.isLongClickable()) && (TwoWayView.access$4000(this$0, paramView, i, l)));
    return false;
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.ListItemAccessibilityDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */