package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

final class AccessibilityDelegateCompatJellyBean$1
  extends View.AccessibilityDelegate
{
  AccessibilityDelegateCompatJellyBean$1(AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean paramAccessibilityDelegateBridgeJellyBean) {}
  
  public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return val$bridge.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final AccessibilityNodeProvider getAccessibilityNodeProvider(View paramView)
  {
    return (AccessibilityNodeProvider)val$bridge.getAccessibilityNodeProvider(paramView);
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$bridge.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    val$bridge.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfo);
  }
  
  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$bridge.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return val$bridge.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return val$bridge.performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public final void sendAccessibilityEvent(View paramView, int paramInt)
  {
    val$bridge.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public final void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$bridge.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.AccessibilityDelegateCompatJellyBean.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */