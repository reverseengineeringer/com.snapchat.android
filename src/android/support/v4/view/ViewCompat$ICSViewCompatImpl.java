package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class ViewCompat$ICSViewCompatImpl
  extends ViewCompat.HCViewCompatImpl
{
  static boolean accessibilityDelegateCheckFailed = false;
  static Field mAccessibilityDelegateField;
  
  public final ViewPropertyAnimatorCompat animate(View paramView)
  {
    if (mViewPropertyAnimatorCompatMap == null) {
      mViewPropertyAnimatorCompatMap = new WeakHashMap();
    }
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2 = (ViewPropertyAnimatorCompat)mViewPropertyAnimatorCompatMap.get(paramView);
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1 = localViewPropertyAnimatorCompat2;
    if (localViewPropertyAnimatorCompat2 == null)
    {
      localViewPropertyAnimatorCompat1 = new ViewPropertyAnimatorCompat(paramView);
      mViewPropertyAnimatorCompatMap.put(paramView, localViewPropertyAnimatorCompat1);
    }
    return localViewPropertyAnimatorCompat1;
  }
  
  public final boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return ViewCompatICS.canScrollHorizontally(paramView, paramInt);
  }
  
  public final boolean canScrollVertically(View paramView, int paramInt)
  {
    return ViewCompatICS.canScrollVertically(paramView, paramInt);
  }
  
  public final boolean hasAccessibilityDelegate(View paramView)
  {
    if (accessibilityDelegateCheckFailed) {}
    for (;;)
    {
      return false;
      if (mAccessibilityDelegateField == null) {}
      try
      {
        Field localField = View.class.getDeclaredField("mAccessibilityDelegate");
        mAccessibilityDelegateField = localField;
        localField.setAccessible(true);
      }
      catch (Throwable paramView)
      {
        try
        {
          paramView = mAccessibilityDelegateField.get(paramView);
          if (paramView == null) {
            continue;
          }
          return true;
        }
        catch (Throwable paramView)
        {
          accessibilityDelegateCheckFailed = true;
        }
        paramView = paramView;
        accessibilityDelegateCheckFailed = true;
        return false;
      }
    }
    return false;
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ViewCompatICS.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewCompatICS.onInitializeAccessibilityNodeInfo(paramView, mInfo);
  }
  
  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ViewCompatICS.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    ViewCompatICS.setAccessibilityDelegate(paramView, paramAccessibilityDelegateCompat.getBridge());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewCompat.ICSViewCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */