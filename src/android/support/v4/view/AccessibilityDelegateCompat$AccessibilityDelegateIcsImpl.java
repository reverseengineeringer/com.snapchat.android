package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl
  extends AccessibilityDelegateCompat.AccessibilityDelegateStubImpl
{
  public final boolean dispatchPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return AccessibilityDelegateCompatIcs.dispatchPopulateAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public Object newAccessiblityDelegateBridge(final AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    AccessibilityDelegateCompatIcs.newAccessibilityDelegateBridge(new AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge()
    {
      public final boolean dispatchPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return paramAccessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
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
  
  public final Object newAccessiblityDelegateDefaultImpl()
  {
    return AccessibilityDelegateCompatIcs.newAccessibilityDelegateDefaultImpl();
  }
  
  public final void onInitializeAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    AccessibilityDelegateCompatIcs.onInitializeAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityNodeInfo(Object paramObject, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    AccessibilityDelegateCompatIcs.onInitializeAccessibilityNodeInfo(paramObject, paramView, mInfo);
  }
  
  public final void onPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    AccessibilityDelegateCompatIcs.onPopulateAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public final boolean onRequestSendAccessibilityEvent(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return AccessibilityDelegateCompatIcs.onRequestSendAccessibilityEvent(paramObject, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public final void sendAccessibilityEvent(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityDelegateCompatIcs.sendAccessibilityEvent(paramObject, paramView, paramInt);
  }
  
  public final void sendAccessibilityEventUnchecked(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    AccessibilityDelegateCompatIcs.sendAccessibilityEventUnchecked(paramObject, paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */