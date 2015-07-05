package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1
  implements AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
{
  AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1(AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl paramAccessibilityDelegateIcsImpl, AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {}
  
  public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return val$compat.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$compat.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, Object paramObject)
  {
    val$compat.onInitializeAccessibilityNodeInfo(paramView, new AccessibilityNodeInfoCompat(paramObject));
  }
  
  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$compat.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return val$compat.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public final void sendAccessibilityEvent(View paramView, int paramInt)
  {
    val$compat.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public final void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    val$compat.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */