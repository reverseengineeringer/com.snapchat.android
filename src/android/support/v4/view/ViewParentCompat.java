package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;

public final class ViewParentCompat
{
  static final ViewParentCompatImpl IMPL = new ViewParentCompatStubImpl();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new ViewParentCompatICSImpl();
      return;
    }
  }
  
  public static boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.requestSendAccessibilityEvent(paramViewParent, paramView, paramAccessibilityEvent);
  }
  
  static final class ViewParentCompatICSImpl
    extends ViewParentCompat.ViewParentCompatStubImpl
  {
    public final boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return ViewParentCompatICS.requestSendAccessibilityEvent(paramViewParent, paramView, paramAccessibilityEvent);
    }
  }
  
  static abstract interface ViewParentCompatImpl
  {
    public abstract boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent);
  }
  
  static class ViewParentCompatStubImpl
    implements ViewParentCompat.ViewParentCompatImpl
  {
    public boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (paramView == null) {
        return false;
      }
      ((AccessibilityManager)paramView.getContext().getSystemService("accessibility")).sendAccessibilityEvent(paramAccessibilityEvent);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewParentCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */