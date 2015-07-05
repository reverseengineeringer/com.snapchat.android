package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.view.View;
import java.util.List;

class AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl
  extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoStubImpl
{
  public final void addAction(Object paramObject, int paramInt)
  {
    AccessibilityNodeInfoCompatIcs.addAction(paramObject, paramInt);
  }
  
  public void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence)
  {
    if (Integer.bitCount(paramInt) == 1) {
      AccessibilityNodeInfoCompatIcs.addAction(paramObject, paramInt);
    }
  }
  
  public final void addChild(Object paramObject, View paramView)
  {
    AccessibilityNodeInfoCompatIcs.addChild(paramObject, paramView);
  }
  
  public final List<Object> findAccessibilityNodeInfosByText(Object paramObject, String paramString)
  {
    return AccessibilityNodeInfoCompatIcs.findAccessibilityNodeInfosByText(paramObject, paramString);
  }
  
  public final int getActions(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getActions(paramObject);
  }
  
  public final void getBoundsInParent(Object paramObject, Rect paramRect)
  {
    AccessibilityNodeInfoCompatIcs.getBoundsInParent(paramObject, paramRect);
  }
  
  public final void getBoundsInScreen(Object paramObject, Rect paramRect)
  {
    AccessibilityNodeInfoCompatIcs.getBoundsInScreen(paramObject, paramRect);
  }
  
  public final Object getChild(Object paramObject, int paramInt)
  {
    return AccessibilityNodeInfoCompatIcs.getChild(paramObject, paramInt);
  }
  
  public final int getChildCount(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getChildCount(paramObject);
  }
  
  public final CharSequence getClassName(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getClassName(paramObject);
  }
  
  public final CharSequence getContentDescription(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getContentDescription(paramObject);
  }
  
  public final CharSequence getPackageName(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getPackageName(paramObject);
  }
  
  public final Object getParent(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getParent(paramObject);
  }
  
  public final CharSequence getText(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getText(paramObject);
  }
  
  public final int getWindowId(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.getWindowId(paramObject);
  }
  
  public final boolean isCheckable(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isCheckable(paramObject);
  }
  
  public final boolean isChecked(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isChecked(paramObject);
  }
  
  public final boolean isClickable(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isClickable(paramObject);
  }
  
  public final boolean isEnabled(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isEnabled(paramObject);
  }
  
  public final boolean isFocusable(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isFocusable(paramObject);
  }
  
  public final boolean isFocused(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isFocused(paramObject);
  }
  
  public final boolean isLongClickable(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isLongClickable(paramObject);
  }
  
  public final boolean isPassword(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isPassword(paramObject);
  }
  
  public final boolean isScrollable(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isScrollable(paramObject);
  }
  
  public final boolean isSelected(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.isSelected(paramObject);
  }
  
  public final Object obtain()
  {
    return AccessibilityNodeInfoCompatIcs.obtain();
  }
  
  public final Object obtain(View paramView)
  {
    return AccessibilityNodeInfoCompatIcs.obtain(paramView);
  }
  
  public final Object obtain(Object paramObject)
  {
    return AccessibilityNodeInfoCompatIcs.obtain(paramObject);
  }
  
  public final boolean performAction(Object paramObject, int paramInt)
  {
    return AccessibilityNodeInfoCompatIcs.performAction(paramObject, paramInt);
  }
  
  public final void recycle(Object paramObject)
  {
    AccessibilityNodeInfoCompatIcs.recycle(paramObject);
  }
  
  public final void setBoundsInParent(Object paramObject, Rect paramRect)
  {
    AccessibilityNodeInfoCompatIcs.setBoundsInParent(paramObject, paramRect);
  }
  
  public final void setBoundsInScreen(Object paramObject, Rect paramRect)
  {
    AccessibilityNodeInfoCompatIcs.setBoundsInScreen(paramObject, paramRect);
  }
  
  public final void setCheckable(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setCheckable(paramObject, paramBoolean);
  }
  
  public final void setChecked(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setChecked(paramObject, paramBoolean);
  }
  
  public final void setClassName(Object paramObject, CharSequence paramCharSequence)
  {
    AccessibilityNodeInfoCompatIcs.setClassName(paramObject, paramCharSequence);
  }
  
  public final void setClickable(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setClickable(paramObject, paramBoolean);
  }
  
  public final void setContentDescription(Object paramObject, CharSequence paramCharSequence)
  {
    AccessibilityNodeInfoCompatIcs.setContentDescription(paramObject, paramCharSequence);
  }
  
  public final void setEnabled(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setEnabled(paramObject, paramBoolean);
  }
  
  public final void setFocusable(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setFocusable(paramObject, paramBoolean);
  }
  
  public final void setFocused(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setFocused(paramObject, paramBoolean);
  }
  
  public final void setLongClickable(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setLongClickable(paramObject, paramBoolean);
  }
  
  public final void setPackageName(Object paramObject, CharSequence paramCharSequence)
  {
    AccessibilityNodeInfoCompatIcs.setPackageName(paramObject, paramCharSequence);
  }
  
  public final void setParent(Object paramObject, View paramView)
  {
    AccessibilityNodeInfoCompatIcs.setParent(paramObject, paramView);
  }
  
  public final void setPassword(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setPassword(paramObject, paramBoolean);
  }
  
  public final void setScrollable(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setScrollable(paramObject, paramBoolean);
  }
  
  public final void setSelected(Object paramObject, boolean paramBoolean)
  {
    AccessibilityNodeInfoCompatIcs.setSelected(paramObject, paramBoolean);
  }
  
  public final void setSource(Object paramObject, View paramView)
  {
    AccessibilityNodeInfoCompatIcs.setSource(paramObject, paramView);
  }
  
  public final void setText(Object paramObject, CharSequence paramCharSequence)
  {
    AccessibilityNodeInfoCompatIcs.setText(paramObject, paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */