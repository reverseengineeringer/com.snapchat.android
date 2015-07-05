package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.View;

class AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl
  extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoIcsImpl
{
  public final void addChild(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityNodeInfoCompatJellyBean.addChild(paramObject, paramView, paramInt);
  }
  
  public final Object findFocus(Object paramObject, int paramInt)
  {
    return AccessibilityNodeInfoCompatJellyBean.findFocus(paramObject, paramInt);
  }
  
  public final Object focusSearch(Object paramObject, int paramInt)
  {
    return AccessibilityNodeInfoCompatJellyBean.focusSearch(paramObject, paramInt);
  }
  
  public final int getMovementGranularities(Object paramObject)
  {
    return AccessibilityNodeInfoCompatJellyBean.getMovementGranularities(paramObject);
  }
  
  public final boolean isAccessibilityFocused(Object paramObject)
  {
    return AccessibilityNodeInfoCompatJellyBean.isAccessibilityFocused(paramObject);
  }
  
  public final boolean isVisibleToUser(Object paramObject)
  {
    return AccessibilityNodeInfoCompatJellyBean.isVisibleToUser(paramObject);
  }
  
  public final Object obtain(View paramView, int paramInt)
  {
    return AccessibilityNodeInfoCompatJellyBean.obtain(paramView, paramInt);
  }
  
  public final boolean performAction(Object paramObject, int paramInt, Bundle paramBundle)
  {
    return AccessibilityNodeInfoCompatJellyBean.performAction(paramObject, paramInt, paramBundle);
  }
  
  public final void setAccessibilityFocused(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatJellyBean.setAccesibilityFocused(paramObject, paramBoolean);
  }
  
  public final void setMovementGranularities(Object paramObject, int paramInt)
  {
    AccessibilityNodeInfoCompatJellyBean.setMovementGranularities(paramObject, paramInt);
  }
  
  public final void setParent(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityNodeInfoCompatJellyBean.setParent(paramObject, paramView, paramInt);
  }
  
  public final void setSource(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityNodeInfoCompatJellyBean.setSource(paramObject, paramView, paramInt);
  }
  
  public final void setVisibleToUser(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatJellyBean.setVisibleToUser(paramObject, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */