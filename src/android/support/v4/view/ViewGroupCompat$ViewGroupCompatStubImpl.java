package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class ViewGroupCompat$ViewGroupCompatStubImpl
  implements ViewGroupCompat.ViewGroupCompatImpl
{
  public int getLayoutMode(ViewGroup paramViewGroup)
  {
    return 0;
  }
  
  public boolean isTransitionGroup(ViewGroup paramViewGroup)
  {
    return false;
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return true;
  }
  
  public void setLayoutMode(ViewGroup paramViewGroup, int paramInt) {}
  
  public void setMotionEventSplittingEnabled$4d3af60(ViewGroup paramViewGroup) {}
  
  public void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewGroupCompat.ViewGroupCompatStubImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */