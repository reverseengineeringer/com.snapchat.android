package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl
  extends AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl
{
  public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object paramObject, View paramView)
  {
    paramObject = AccessibilityDelegateCompatJellyBean.getAccessibilityNodeProvider(paramObject, paramView);
    if (paramObject != null) {
      return new AccessibilityNodeProviderCompat(paramObject);
    }
    return null;
  }
  
  public final Object newAccessiblityDelegateBridge(final AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    AccessibilityDelegateCompatJellyBean.newAccessibilityDelegateBridge(new AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean()
    {
      public final boolean dispatchPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return paramAccessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final Object getAccessibilityNodeProvider(View paramAnonymousView)
      {
        paramAnonymousView = paramAccessibilityDelegateCompat.getAccessibilityNodeProvider(paramAnonymousView);
        if (paramAnonymousView != null) {
          return mProvider;
        }
        return null;
      }
      
      public final void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        paramAccessibilityDelegateCompat.onInitializeAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final void onInitializeAccessibilityNodeInfo(View paramAnonymousView, Object paramAnonymousObject)
      {
        paramAccessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(paramAnonymousView, new AccessibilityNodeInfoCompat(paramAnonymousObject));
      }
      
      public final void onPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        paramAccessibilityDelegateCompat.onPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final boolean onRequestSendAccessibilityEvent(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return paramAccessibilityDelegateCompat.onRequestSendAccessibilityEvent(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        return paramAccessibilityDelegateCompat.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
      
      public final void sendAccessibilityEvent(View paramAnonymousView, int paramAnonymousInt)
      {
        paramAccessibilityDelegateCompat.sendAccessibilityEvent(paramAnonymousView, paramAnonymousInt);
      }
      
      public final void sendAccessibilityEventUnchecked(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        paramAccessibilityDelegateCompat.sendAccessibilityEventUnchecked(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
    });
  }
  
  public final boolean performAccessibilityAction(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return AccessibilityDelegateCompatJellyBean.performAccessibilityAction(paramObject, paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */