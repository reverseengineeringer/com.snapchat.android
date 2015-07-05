package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1
  implements AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
{
  AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1(AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl paramAccessibilityDelegateJellyBeanImpl, AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {}
  
  public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return val$compat.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final Object getAccessibilityNodeProvider(View paramView)
  {
    paramView = val$compat.getAccessibilityNodeProvider(paramView);
    if (paramView != null) {
      return mProvider;
    }
    return null;
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
  
  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return val$compat.performAccessibilityAction(paramView, paramInt, paramBundle);
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
 * Qualified Name:     android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */